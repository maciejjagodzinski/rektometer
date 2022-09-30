import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PortfolioRemoteDataSource {
  Future<QuerySnapshot<Map<String, dynamic>>?>
      getRemoteInvestmentsData() async {
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

  Future<QuerySnapshot<Map<String, dynamic>>?> getRemoteTradesData() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('trades')
        .get();
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

  Future<void> addInvestmentDocument({
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

  Future<void> deleteInvestmentDocument(
      {required String investmentDocumentId}) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('investments')
          .doc(investmentDocumentId)
          .delete();
    }
  }
}
