import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:unipro/constants/app_colors.dart';
import 'package:unipro/views/gallery/gallery_view.dart';

class LoginView extends StatefulWidget {
  static const String route = '/login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginView> {
  bool _isLoading = false;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _emailTextController =
      TextEditingController(text: 'james.ninnes@gmail.com');
  final _passwordTextController = TextEditingController(text: '123123');
  String _errorMessage = '';

  _handleEmailSignIn(BuildContext context) async {
    setState(() {
      _isLoading = true;
    });

    try {
      var user = await _auth.signInWithEmailAndPassword(
          email: _emailTextController.text,
          password: _passwordTextController.text);

      // If the user object is returned from firebase - user is logged in and navigates to dashboard
      if (user != null) {
        Navigator.of(context).pushReplacementNamed(GalleryView.route);
      } else {
        setState(() {
          _isLoading = false;
        });
      }
    } catch (err) {
      print(err);
      setState(() {
        _isLoading = false;
        _errorMessage = err.message;
      });
    }
  }

  _handleGoogleSignIn() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    try {
      await _auth.signInWithCredential(credential);
    } catch (err) {
      print(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(
                    valueColor: new AlwaysStoppedAnimation<Color>(primaryColor),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Text('Logging you in...'),
                  )
                ],
              ),
            )
          : Center(
              child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 500),
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 60),
                children: <Widget>[
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    controller: _emailTextController,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.0)),
                    ),
                  ),
                  SizedBox(height: 8.0),
                  TextFormField(
                    autofocus: false,
                    controller: _passwordTextController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.0)),
                    ),
                  ),
                  _errorMessage.isEmpty
                      ? SizedBox(height: 24.0)
                      : Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: AutoSizeText(_errorMessage,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.red)),
                        ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: RaisedButton(
                      onPressed: () {
                        _handleEmailSignIn(context);
                      },
                      padding: EdgeInsets.all(14),
                      color: primaryColor,
                      child:
                          Text('Login', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      'Sign up',
                      style: TextStyle(color: Colors.black54),
                    ),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.black54),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            )),
    );
  }
}
