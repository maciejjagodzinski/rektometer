import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PortfolioRemoteDataSource {
  Stream<QuerySnapshot<Map<String, dynamic>>?> getPortfolioData() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('investments')
        .snapshots();
  }

  Future<QuerySnapshot<Map<String, dynamic>>?> getRemoteDocs() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('investments')
        .get();
  }

  Future<void> add({
    required String id,
  }) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('investments')
          .add({
        'id': id,
      });
    }
  }

  Future<List<Map<String, dynamic>>?> getTrackerData({
    required List<String> trackerIdsList,
  }) async {
    String trackerIdsString = trackerIdsList.join(',');

    final response = await Dio().get<List<dynamic>>(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&ids=$trackerIdsString&order=market_cap_desc&per_page=250&page=1&sparkline=false&price_change_percentage=24h');
    final listDynamic = response.data;
    if (listDynamic == null) {
      return null;
    }
    return listDynamic.map((e) => e as Map<String, dynamic>).toList();
  }
}
