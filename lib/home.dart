import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final databaseReference = Firestore.instance;

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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: new Icon(Icons.search, color: Theme.of(context).primaryColor,),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: new Icon(Icons.settings, color: Theme.of(context).primaryColor,),
                    onPressed: () {},
                  ),
                ],
              ),
              Events(),
            ],
          ),
      ),
		);
	}
}

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new StreamBuilder(
      stream: databaseReference.collection('events').snapshots(),
      builder: (context, snapshot) {
        if(!snapshot.hasData) return Text("Loading...", style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 22.0, fontWeight: FontWeight.normal));
        return ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: snapshot.data.documents.length,
          itemBuilder: (context, index) => 
            _buildListItem(context, snapshot.data.documents[index]), 
        );
      }
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot eventInfo) {
    return ListTile (
      title: Row(
        children: <Widget>[
          SizedBox(width: 15,),
          Column(
            children: <Widget>[
              new Container(
                width: 80.0,
                height: 80.0,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(eventInfo['imgURL'])
                  )
                )
              ),
            ],
          ),
          SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(eventInfo['name'], style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 22.0, fontWeight: FontWeight.normal)),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.location_on, color: Theme.of(context).accentColor, size: 15,),
                  Text("2.3km", style: TextStyle(color: Theme.of(context).accentColor, fontSize: 16.0, fontWeight: FontWeight.normal)),
                  SizedBox(width: 5,),
                  Icon(Icons.people, color: Theme.of(context).accentColor, size: 15,),
                  Text(eventInfo['spots'].toString() + " needed", style: TextStyle(color: Theme.of(context).accentColor, fontSize: 16.0, fontWeight: FontWeight.normal)),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}