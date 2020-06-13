import 'dart:async';

import 'package:flutter/material.dart';
import 'package:uidestinationchallenge/pages/ui/day1signinsignup/signin.dart';

class SplashPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return SplashPageState();
  }
}

class SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();

    loadData();
  }

   loadData() async {
    return new Timer(Duration(seconds: 5),(){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));

    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      
      child: Center(
        child: Stack(
              children: <Widget>[
                Positioned(
                    width: MediaQuery.of(context).size.width,
                    top: MediaQuery.of(context).size.width *
                        0.30, //TRY TO CHANGE THIS **0.30** value to achieve your goal
                    child: Container(
                      margin: EdgeInsets.all(16.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .2,
                            ),
                            Image.asset('assets/logo.png', scale: 3.5),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .3,
                            ),
                          ]),
                    ))
              ],
            )
      ),
    );
  }
}


    