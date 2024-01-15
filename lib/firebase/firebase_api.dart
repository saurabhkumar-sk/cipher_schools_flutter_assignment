import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class FireBAseApi {
  FireBAseApi._();

  static FireBAseApi instance = FireBAseApi._();

  Future<User?> signUP(String emailAddress, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      print(credential.user);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      log(e.code);
    } catch (e) {
      log(e.toString(), name: "error");
    }
    return null;
  }

  Future<User?> login(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      print(credential.user);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      log(e.code);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
