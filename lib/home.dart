import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  createState() => HomeState();
}

class HomeState extends State<Home> {
	@override
	Widget build(BuildContext context) {
		return Scaffold (
			backgroundColor: Theme.of(context).backgroundColor,
			body: SafeArea (
				child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: new Icon(Icons.settings, color: Color.fromRGBO(90, 90, 90, 1.0),),
                  onPressed: () {},
                ),
              ],
            ),
            EventRow()
          ],
        ),
			),
		);
	}
}

class EventRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row (
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            new Container(
              width: 78.0,
              height: 78.0,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage("https://pbs.twimg.com/profile_images/1158807827751854081/9dnKeYq2_400x400.jpg")
                )
              )
            ),
          ],
        ),
        SizedBox(width: 15,),
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("United Way Food Drive", style: TextStyle(color: Color.fromRGBO(65, 65, 65, 1.0), fontSize: 18.0, fontWeight: FontWeight.normal)),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.location_on, color: Color.fromRGBO(90, 90, 90, 1.0), size: 15,),
                Text("2.3km", style: TextStyle(color: Color.fromRGBO(90, 90, 90, 1.0), fontSize: 14.0, fontWeight: FontWeight.normal)),
                SizedBox(width: 5,),
                Icon(Icons.people, color: Color.fromRGBO(90, 90, 90, 1.0), size: 15,),
                Text("16 needed", style: TextStyle(color: Color.fromRGBO(90, 90, 90, 1.0), fontSize: 14.0, fontWeight: FontWeight.normal)),
              ],
            ),
          ],
        )
      ],
    );
  }
}