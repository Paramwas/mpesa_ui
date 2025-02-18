import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mpesa/services/dataDisplay.dart';
import 'package:mpesa/services/uidd.dart';
import 'package:mpesa/services/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String?> Register(String email, String name, String password) async {
    try {
      final shagy = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? happy = shagy.user;
      final diffrent = people(happy);

      await DataPider(uid: diffrent).updateuserdata('peter', '3000', '1500');
      return people(happy);
    } on FirebaseAuthException catch (e) {
      // Return specific Firebase error message
      return e.message ?? "An unknown error occurred";
    } catch (e) {
      // Catch any other exceptions
      return "Error: $e";
    }
  }

  Future<void> Signout() async {
    return _auth.signOut();
  }

  Future<String?> ForgotPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return "Password reset email sent! Check your inbox.";
    } on FirebaseAuthException catch (e) {
      return e.message ?? "Failed to send reset email.";
    }
  }

  Future<String?> Sigin(String username, String password) async {
    final shallal = await _auth.signInWithEmailAndPassword(
        email: username, password: password);

    return people(shallal.user);
  }

  String people(User? user) {
    return user?.uid ?? 'User not found';
  }

  Stream<String?> get mirrow {
    return _auth.authStateChanges().map(people);
  }
}

final NobodyProvider = Provider((ref) => Auth());
final MichelProvider = StreamProvider<String?>((ref) {
  return ref.watch(NobodyProvider).mirrow;
});
