import 'package:flutter/material.dart';
import 'package:uidestinationchallenge/constants/color.dart';
import 'package:uidestinationchallenge/constants/text_style.dart';

class HomePage3 extends StatefulWidget {
  @override
  _HomePage3State createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  bool isSwitched = false;
  bool isSwitched2 = true;

  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/mark.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 210.0),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.only(top: 16.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 120.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Mark Kariuki",
                                    style: header2Style,
                                  ),
                                  Row(children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                      size: 10,
                                      color: colorGrey,
                                    ),
                                    Text(
                                      "Nairobi , Kenya",
                                      style: smallHeaderStyle,
                                    ),
                                  ])
                                ],
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "Profile Settings",
                                    style: header2Style,
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "Theme",
                                        style: header3Style,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            "Light",
                                            style: card3Style,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Icon(
                                              Icons.arrow_forward_ios,
                                              size: 10,
                                              color: colorGrey,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("Send Push Notifications"),
                                      Switch(
                                        value: isSwitched,
                                        onChanged: (value) {
                                          setState(() {
                                            isSwitched = value;
                                            print(isSwitched);
                                          });
                                        },
                                        activeColor: purpleDark,
                                        inactiveTrackColor: colorGrey,
                                        inactiveThumbColor: colorPurple,
                                        // activeColor: Colors.green,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("BackUp"),
                                      Switch(
                                        value: isSwitched2,
                                        onChanged: (value) {
                                          setState(() {
                                            isSwitched = value;
                                            print(isSwitched);
                                          });
                                        },
                                        activeColor: purpleDark,
                                        inactiveTrackColor: colorGrey,
                                        inactiveThumbColor: colorPurple,
                                        // activeColor: Colors.green,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.0),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "Account",
                                          style: header2Style,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(),
                                  Padding(
                                     padding: const EdgeInsets.only(top:8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("Two-Factor Authentication",
                                        style: card3Style,
                                        ),
                                        Icon(Icons.arrow_forward_ios,
                                        size: 15,
                                        color: colorGrey,
                                        ),
                                      ],
                                    ),
                                  ),
                                   Padding(
                                     padding: const EdgeInsets.only(top:20.0),
                                     child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("Mobile Data Use",
                                        style: card3Style,
                                        ),
                                        Icon(Icons.arrow_forward_ios,
                                        size: 15,
                                        color: colorGrey,
                                        ),
                                      ],
                                  ),
                                   ),

                                   Padding(
                                     padding: const EdgeInsets.only(top:20.0),
                                     child: Row(
                                       
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text("Language",
                                        style: card3Style,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Text("English",
                                            style: card3Style,
                                            ),
                                            Icon(Icons.arrow_forward_ios,
                                            size: 15,
                                            color: colorGrey,
                                            ),
                                          ],
                                        ),
                                      ],
                                  ),
                                   ),

                                   SizedBox(height: 5.0),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "Support",
                                          style: header2Style,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(),
                                  Padding(
                                     padding: const EdgeInsets.only(top:8.0),
                                    child: Row(
                                      
                                      children: <Widget>[
                                        Text("Call Us",
                                        style: card3Style,
                                        ),
                                        
                                      ],
                                    ),
                                  ),

                                  Padding(
                                     padding: const EdgeInsets.only(top:20.0),
                                    child: Row(
                                      
                                      children: <Widget>[
                                        Text("Feed Back",
                                        style: card3Style,
                                        ),
                                        
                                      ],
                                    ),
                                  ),
                                  
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Stack(
                        overflow: Overflow.visible,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 16.0),
                            width: 80,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),

                              // shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/mark.jpg'),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: -9,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: colorBlack,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                              child: Icon(Icons.edit, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text("Settings"),
              centerTitle: true,
              actions: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.more_horiz,
                    ),
                    onPressed: () {})
              ],
            )
          ],
        ),
      ),
    );
  }
}
// class _HomePage3 extends State<HomePage3> {

//   bool isSwitched = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         title: Text("Flutter Switch Example"),
//       ),
//       body: Center(
//   child: Switch(
//     value: isSwitched,
//     onChanged: (value){
//       setState(() {
//         isSwitched=value;
//         print(isSwitched);
//       });
//     },
//     activeTrackColor: Colors.lightGreenAccent,
//     activeColor: Colors.green,
//   ),
// ),
//     );
//   }
// }
