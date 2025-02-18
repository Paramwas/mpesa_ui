import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DataPider {
  final String uid;
  final CollectionReference usersdata =
      FirebaseFirestore.instance.collection('ProfileDetails');
  DataPider({required this.uid});

  Future<void> updateuserdata(
      String username, String balance, String fuliza) async {
    await usersdata.doc(uid).set(
        {'username': username, 'balance': balance, 'fuliza': fuliza},
        SetOptions(merge: true));
  }

  Future<void> getDetails() async {
    await usersdata.doc(uid).get();
  }
}

class DetailsForuser {
  final String balance;
  final String fuliza;
  final String username;
  DetailsForuser(
      {required this.balance, required this.fuliza, required this.username});
}

final usersDataProvider =
    FutureProvider.family<List<DetailsForuser>, String>((ref, uid) {
  return FirebaseFirestore.instance
      .collection('ProfileDetails')
      .where('uid', isEqualTo: uid) // Filter by UID
      .get()
      .then((snapshot) {
    return snapshot.docs.map((doc) {
      final data = doc.data() as Map<String, dynamic>;
      return DetailsForuser(
        balance: data['balance'] ?? 'No balance',
        fuliza: data['fuliza'] ?? 'No fuliza',
        username: data['username'] ?? 'No username',
      );
    }).toList();
  });
});
