import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  Future<void> signUpWithEmail(String userId, String userName, String userEmail,
      String userPasswd, String userFlair, BuildContext context) async {
    UserCredential? userCredential;

    try {
      userCredential = await _auth.createUserWithEmailAndPassword(
        email: userEmail,
        password: userPasswd,
      );
    } on FirebaseAuthException catch (e) {
      String message = "";
      switch (e.code) {
        case 'weak-password':
          message = 'The password provided is too weak.';
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(message)));
          break;
        case 'email-already-in-use':
          message = 'The account already exists for that email.';
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(message)));
          break;
        default:
          message = 'An error occurred: ${e.message}';
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(message)));
      }
      print(message);
      // Show an error message to the user (e.g., using a SnackBar)
    } catch (e) {
      print('Error creating user: $e');
      // Handle other potential errors (e.g., Firestore errors)
    }

    // if (userCredential != null) {
    //   String userUid = userCredential.user!.uid;
    //   UserDataModel? newUser = UserDataModel(
    //     username: userId,
    //     email: userEmail,
    //     name: userName,
    //     uid: userUid,
    //     flair: userFlair,
    //   );

    //   UsernameCollection? usernameCollection =
    //       UsernameCollection(username: userId);

    try {
      // await _firestore.collection("user").doc(userId).set(newUser.toMap());
      // await _firestore
      //     .collection("username")
      //     .doc(userId)
      //     .set(usernameCollection.toMap());
      // print("User Created");
      // Show a success message to the user
    } catch (e) {
      print('Error adding user data to Firestore: $e');
      // Handle Firestore errors (e.g., show error message)
    }
  }
}

Future<void> signUserInWithEmailPasswd(
    String email, String passwd, BuildContext context) async {
  await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: email, password: passwd);
}

Future<void> signUserOut() async {
  try {
    await FirebaseAuth.instance.signOut();
  } catch (e) {
    print("Cannot logout: $e");
  }
}
