import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:elfa_main_dashboard/features/splash_screen/domain/utilities/utils.dart';
import '../../../news_feed/app/app_drawer.dart';
import '../presentation/provider/circle_indicator_provider.dart';

class AuthenticationMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<void> signIn({
    required String email,
    required String password,
    required BuildContext ctx,
  }) async {
    Provider.of<CircleIndicatorProvider>(ctx, listen: false)
        .switchCircleIndicator();
    _auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      Utils().showMsg('Signed In Successfully');
      Navigator.pop(ctx);
      Navigator.pushReplacementNamed(ctx, AppDrawer.routeName);
      Provider.of<CircleIndicatorProvider>(ctx, listen: false)
          .switchCircleIndicator();
    }).onError((error, stackTrace) {
      Utils().showMsg(error.toString());
      Provider.of<CircleIndicatorProvider>(ctx, listen: false)
          .switchCircleIndicator();
    });
  }

  Future<void> signUP({
    required String email,
    required String password,
    required BuildContext ctx,
    required String phone,
  }) async {
    _auth
        .createUserWithEmailAndPassword(
            email: email.toString(), password: password.toString())
        .then((value) {
      Utils().showMsg('Account Created');
      Navigator.pop(ctx);
    });
  }

  Future<void> signInWithGoogle(BuildContext ctx) async {
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    if (googleSignInAccount == null) {
      return;
    }
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );
    await _auth.signInWithCredential(credential).then((value) {
      Utils().showMsg('Signed In Successfully');
      Navigator.pushReplacementNamed(ctx, AppDrawer.routeName);
      Provider.of<CircleIndicatorProvider>(ctx, listen: false)
          .switchCircleIndicator();
    }).onError((error, stackTrace) {
      Utils().showMsg(error.toString());
      Provider.of<CircleIndicatorProvider>(ctx, listen: false)
          .switchCircleIndicator();
    });
  }

  void logOut() {
    GoogleSignIn().signOut();
    _auth.signOut();
  }
}
