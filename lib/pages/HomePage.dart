import 'package:flutter/material.dart';
import 'package:uidestinationchallenge/pages/ui/day1signinsignup/signin.dart';
import 'package:uidestinationchallenge/pages/ui/day2homepage/homemainpage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Challenges")),
      body: Container(
        child: Column(children: <Widget>[
          Container(
            child: RaisedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginPage()));
              },
              textColor: Colors.white,
              color: Colors.red,
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                "Day 1",
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => D2HomePage()));
              },
              textColor: Colors.white,
              color: Colors.red,
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                "Day 2",
              ),
            ),
          )
        ]),
      ),
    );
  }
}
