import 'package:cloud_firestore/cloud_firestore.dart';
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

  Future<DocumentSnapshot<Map<String, dynamic>>> getRemoteDocs(
      {required String id}) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('investments')
        .doc(id)
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
}
