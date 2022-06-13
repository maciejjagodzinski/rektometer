import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rektometer/models/investment_model.dart';

class InvestmentsRepository {
  Stream<List<InvestmentModel>> getInvestmentsStream() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('investments')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        return InvestmentModel(
          id: doc.id,
          symbol: doc['symbol'],
          priceChangePercentage: doc['price_change_percentage_24h'],
          name: doc['name'],
          image: doc['image'],
          tokenId: doc['id'],
          currentPrice: doc['current_price'] + 0.0,
          buyVolume: doc['buy_volume'] + 0.0,
          buyPrice: doc['buy_price'] + 0.0,
        );
      }).toList();
    });
  }

  Future<InvestmentModel> get({required String id}) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    final doc = await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('investments')
        .doc(id)
        .get();
    return InvestmentModel(
      id: doc.id,
      symbol: doc['symbol'],
      priceChangePercentage: doc['price_change_percentage_24h'],
      name: doc['name'],
      image: doc['image'],
      tokenId: doc['id'],
      currentPrice: doc['current_price'],
      buyVolume: doc['buy_volume'],
      buyPrice: doc['buy_price'],
    );
  }
}
