import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class TradesRemoteDataSource {
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

  Future<void> addTradeDocument({
    required String tradeTokenId,
    required String price,
    required String volume,
    required DateTime date,
    required String type,
  }) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    double priceDouble = double.parse(price);
    double volumeDouble = double.parse(volume);
    {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('trades')
          .add({
        'id': tradeTokenId,
        'price': priceDouble,
        'volume': volumeDouble,
        'date': date,
        'type': type,
      });
    }
  }

  Future<void> deleteTradeDocument({required String tradeDocumentId}) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userID)
          .collection('trades')
          .doc(tradeDocumentId)
          .delete();
    }
  }
}
