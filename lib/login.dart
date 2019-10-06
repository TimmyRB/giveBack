import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  createState() => LoginState();
}

class LoginState extends State<Login> {
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
                        onPressed: () {},
                        child: Text('a volunteer', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 22.0, fontWeight: FontWeight.normal)),
                      ),
                    ),
                    ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width * 0.86,
                      buttonColor: Theme.of(context).accentColor,
                      child: RaisedButton(
                        onPressed: () {},
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
}