import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uidestinationchallenge/constants/color.dart';
import 'package:uidestinationchallenge/constants/text_style.dart';
import 'package:uidestinationchallenge/pages/ui/day2homepage/notification.dart';

class D2HomePage extends StatefulWidget {
  @override
  _D2HomePageState createState() => _D2HomePageState();
}

class _D2HomePageState extends State<D2HomePage>
    with SingleTickerProviderStateMixin {
  final List<String> entries = <String>['A', 'B', 'C'];

  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorGrey,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              size: 25.0,
              color: colorBlack,
            ),
            onPressed: () {}),
        title: Text(
          "DashBoard",

          style: headerStyle,

          // style: TextStyle(
          //     fontWeight: FontWeight.w700,
          //     fontSize: 19.0,
          //     color: colorBlack,
          //     fontFamily: "Sofia"),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  color: colorBlack,
                  iconSize: 30.0,
                  padding: EdgeInsets.only(left: 28.0),
                icon:FaIcon(FontAwesomeIcons.bell),
                  onPressed: () {
                    Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => NotificationsPage()));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                    child: Row(
                  children: <Widget>[
                    Text(
                      "List Of Account",
                      style: header2Style,
                    )
                  ],
                )),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        child: Card(
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: LinearGradient(
                                      end: FractionalOffset.centerLeft,
                                      begin: FractionalOffset.centerRight,
                                      colors: [
                                        Colors.purpleAccent,
                                        Colors.deepPurple
                                      ])),
                              width: MediaQuery.of(context).size.width * .45,
                              height: MediaQuery.of(context).size.height * 0.15,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Bank Account",
                                      style: cardStyle,
                                    ),
                                  ),
                                  Text(
                                    "\$2500.00",
                                    style: card2Style,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                gradient: LinearGradient(
                                    end: FractionalOffset.centerLeft,
                                    begin: FractionalOffset.centerRight,
                                    colors: [
                                      const Color(0xffFBD8C6),
                                      const Color(0xffFF978D),
                                    ])),
                            width: MediaQuery.of(context).size.width * .45,
                            height: MediaQuery.of(context).size.height * 0.15,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Credit Card",
                                    style: cardStyle,
                                  ),
                                ),
                                Text(
                                  "\$1500.00",
                                  style: card2Style,
                                ),

                                // Icons.audiotrack,
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {
                            print('Card tapped.');
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                gradient: LinearGradient(
                                    end: FractionalOffset.centerLeft,
                                    begin: FractionalOffset.centerRight,
                                    colors: [
                                      const Color(0xffFFEBFDFC),
                                      const Color(0xff51eddb),
                                    ])),
                            width: MediaQuery.of(context).size.width * .45,
                            height: MediaQuery.of(context).size.height * 0.15,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Cash",
                                    style: cardStyle,
                                  ),
                                ),
                                Text(
                                  "\$800.00",
                                  style: card2Style,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
              Stack(
                children: [
                  Center(
                    child: Card(
                      elevation: 4,
                      color: colorGrey,
                      child: Container(
                        width: MediaQuery.of(context).size.width - 40,
                        height: 100,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    child: Card(
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          print('Card tapped.');
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '\$48000.00',
                                style: card1Style,
                              ),
                              Text('Total Balance'),
                            ],
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      Text(
                        "Last Record OverView",
                        style: header2Style,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    print('Card tapped.');
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                    end: FractionalOffset.centerLeft,
                                    begin: FractionalOffset.centerRight,
                                    colors: [
                                      const Color(0xffFBD8C6),
                                      const Color(0xffFF978D),
                                    ])),
                            height: 85,
                            width: 100,
                            child: Center(
                              child: Icon(
                                Icons.shopping_cart,
                                size: 50,
                                color: colorWhite,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 100,
                          top: 5,
                          child: Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            width: MediaQuery.of(context).size.width - 140,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Groceries',
                                        style: header2Style,
                                      ),
                                      Text(
                                        'Today',
                                        style: card3Style,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                      top: 30.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Credit Card',
                                          style: card3Style,
                                        ),
                                        Text(
                                          '\$250.00',
                                          style: TextStyle(color: colorOrange),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    print('Card tapped.');
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                    end: FractionalOffset.centerLeft,
                                    begin: FractionalOffset.centerRight,
                                    colors: [
                                      Colors.purpleAccent,
                                      Colors.deepPurple
                                    ])),
                            height: 85,
                            width: 100,
                            child: Center(
                              child:FaIcon(FontAwesomeIcons.tshirt,

                              // Icon(
                              //   Icons.t,
                                size: 50,
                                color: colorWhite,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 100,
                          top: 5,
                          child: Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            width: MediaQuery.of(context).size.width - 140,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Clothes',
                                        style: header2Style,
                                      ),
                                      Text(
                                        'Today',
                                        style: card3Style,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                      top: 30.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Credit Card',
                                          style: card3Style,
                                        ),
                                        Text(
                                          '\$800.00',
                                          style: TextStyle(color: colorPurple),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    print('Card tapped.');
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                    end: FractionalOffset.centerLeft,
                                    begin: FractionalOffset.centerRight,
                                    colors: [
                                      const Color(0xffFFEBFDFC),
                                      const Color(0xff51eddb),
                                    ])),
                            height: 85,
                            width: 100,
                            child: Center(
                              child: Icon(
                                Icons.home,
                                size: 50,
                                color: colorWhite,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 100,
                          top: 5,
                          child: Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            width: MediaQuery.of(context).size.width - 140,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Rental',
                                        style: header2Style,
                                      ),
                                      Text(
                                        'Today',
                                        style: card3Style,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                      top: 30.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Cash',
                                          style: card3Style,
                                        ),
                                        Text(
                                          '\$48000.00',
                                          style: TextStyle(color: colorGreen),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
