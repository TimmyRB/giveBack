import 'package:GiveBack/homeOrg.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'home.dart';

final databaseReference = Firestore.instance;

class Login extends StatefulWidget {
  @override
  createState() => LoginState();
}

class LoginState extends State<Login> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

	@override
	Widget build(BuildContext context) {
		return Scaffold (
			backgroundColor: Theme.of(context).backgroundColor,
			body: SafeArea (
				child: Center(
					child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
						children: <Widget>[
							Row(
                children: [
                  Image.asset('assets/logo.png', width: MediaQuery.of(context).size.width * 1)
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.28),
              Container(
                alignment: Alignment.bottomCenter,
                //decoration: BoxDecoration(border: Border.all()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Divider(color: Theme.of(context).accentColor, thickness: 2, indent: 50, endIndent: 5,),
                        ),
                        Text("I am", style: TextStyle(color: Theme.of(context).accentColor, fontSize: 16.0, fontWeight: FontWeight.normal)),
                        Expanded(
                          child: Divider(color: Theme.of(context).accentColor, thickness: 2, indent: 5, endIndent: 50,),
                        ),
                      ],
                    ),
                    ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width * 0.86,
                      buttonColor: Theme.of(context).accentColor,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
                        child: Text('a volunteer', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 22.0, fontWeight: FontWeight.normal)),
                      ),
                    ),
                    ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width * 0.86,
                      buttonColor: Theme.of(context).accentColor,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
                        child: Text('an organizer', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 22.0, fontWeight: FontWeight.normal)),
                      ),
                    ),
                  ],
                ),
              )
						],
					),
				),
			),
		);
	}

/*
  Future<FirebaseUser> _handleSignIn(String type) async {
  final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
  final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

  final AuthCredential credential = GoogleAuthProvider.getCredential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );

  final FirebaseUser user = (await _auth.signInWithCredential(credential));
  print("signed in " + user.displayName);

  databaseReference.collection("users").document(user.uid).setData({
    "name": user.displayName,
    "imgURL": user.photoUrl,
    "email": user.email,
    "events": [],
    "type": type
  });

  if (type == "vol") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );

  } else if (type == "org") {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeOrg()),
    );
  }
    return user;
  }*/
}