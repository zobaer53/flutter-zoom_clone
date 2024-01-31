import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_zoom_clone/utils/utils.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<bool> signInWithGoogle(BuildContext buildContext) async {
    bool res = false;
    try{
      final GoogleSignInAccount? googleSignInAccount = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleSignInAuthentication = await googleSignInAccount?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication?.accessToken,
        idToken: googleSignInAuthentication?.idToken
      );

      UserCredential userCredential = await _auth.signInWithCredential(credential);
      User? user = userCredential.user;
      if(user != null){
        if(userCredential.additionalUserInfo!.isNewUser){
          _firebaseFirestore.collection('users').doc(user.uid).set({
            'username':user.displayName,
            'uid': user.uid,
            'profilePhoto': user.photoURL
          }
          );
        }
        res = true;
      }
    } on FirebaseAuthException catch(e){
      res = false;
      showSnackBar(buildContext, e.message!);
    }
    return res;
  }
}