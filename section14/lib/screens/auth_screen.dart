import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_complete_guide/widgets/auth_form.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthScreen extends StatefulWidget {
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _auth = FirebaseAuth.instance;

  void _submitAuthForm(
    String email,
    String password,
    String username,
    bool isLogin,
    BuildContext ctx,
  ) async {
    UserCredential _userCredential;

    try {
      if (isLogin) {
        _userCredential = await _auth.signInWithEmailAndPassword(
            email: email, password: password);
      } else {
        _userCredential = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
      }
    } on PlatformException catch (err) {
      var message = 'An error occurred, please check your credentials';

      if (err.message != null) {
        message = err.message;
      }

      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: Theme.of(ctx).errorColor,
        ),
      );
    } catch (err) {
      print(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AuthForm(
        _submitAuthForm,
      ),
    );
  }
}
