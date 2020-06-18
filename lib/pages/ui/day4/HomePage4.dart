import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uidestinationchallenge/constants/color.dart';
import 'package:uidestinationchallenge/constants/text_style.dart';
import 'package:uidestinationchallenge/pages/ui/day4/main.dart';

class HomePage4 extends StatefulWidget {
  @override
  _HomePage4State createState() => _HomePage4State();
}

class _HomePage4State extends State<HomePage4> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomeWidget(),
    HomeWidget(),
    MainHomePage(),
    HomeWidget()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: new Text(''),
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.phone,
                color: Colors.black,
              ),
              title: new Text(''),
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.mail,
                color: Colors.black,
              ),
              title: new Text(''),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: Text(''))
          ],
        ));
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Container(
            // color: colorGrey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 130,
              color: colorWhite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(left: 15, top: 30),
                      child:Text(
                        "All genres",
                        style: headerStyle,
                      ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                          margin: EdgeInsets.only(left: 15, top: 30),
                          child: GestureDetector(
                            onTap: () {
                            },
                            child: Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 28,
                            ),
                          ),
                          ),
                          Container(
                      margin: EdgeInsets.only(left: 15, top: 30,right: 20),
                      child: GestureDetector(
                        onTap: () {

                        },
                        child: 
                        FaIcon(FontAwesomeIcons.filter,
                          color: Colors.grey,
                          size: 28,
                        ),
                      ),
                      ),
                        ],
                      ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Travel Books",
                style: header2Style,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.book,
                            color: colorWhite,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Guides",
                              style: header2Style,
                            ),
                            Text(
                              "20 featured books",
                              style: card3Style,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MainHomePage()));
                    },
                                      child: Text(
                      "All",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            horizontalListViewbottom(context),

            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.public,
                            color: colorWhite,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "International travel writing",
                              style: header2Style,
                            ),
                            Text(
                              "22 featured books",
                              style: card3Style,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "All",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              ),
            ),
                      horizontalListViewbottom(context),

          ],
        ),
      ),
    );
  }


  Widget horizontalListViewtop(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, top: 17, right: 20),
        height: 250.0,
        child: CustomScrollView(
          scrollDirection: Axis.horizontal,
          slivers: <Widget>[
            SliverFixedExtentList(
              itemExtent: 210,
              delegate: SliverChildBuilderDelegate(
                  (context, index) => buidCardtop(context, index),
                  childCount: 3),
            ),
          ],
        ));
  }


  Widget buidCardtop(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.fromLTRB(index != 0 ? 7 : 0, 0, index != 2 ? 7 : 0, 7),
      child: GestureDetector(
        onTap: () {
          // Navigator.push(context,
          // MaterialPageRoute(builder: (context) => MyHomePageScreen()));
        },
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          // elevation: 3,
          child: Stack(
            children: <Widget>[
              ClipRRect(
                child: Image.asset(
                  "assets/beach.jpg",
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Alibag Beach",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              size: 12,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "India",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "4.7",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.white),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),

      ),
    );
  }


  Widget horizontalListViewbottom(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, top: 17, right: 20),
        height: 250.0,
        child: CustomScrollView(
          scrollDirection: Axis.horizontal,
          slivers: <Widget>[
            SliverFixedExtentList(
              itemExtent: 210,
              delegate: SliverChildBuilderDelegate(
                  (context, index) => buidCardbottom(context, index),
                  childCount: 3),
            ),
          ],
        ));
  }


  Widget buidCardbottom(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.fromLTRB(index != 0 ? 7 : 0, 0, index != 2 ? 7 : 0, 7),
      child: GestureDetector(
        onTap: () {
          // Navigator.push(context,
          // MaterialPageRoute(builder: (context) => MyHomePageScreen()));
        },
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          // elevation: 3,
          child: Stack(
            children: <Widget>[
              ClipRRect(
                child: Image.asset(
                  "assets/beach.jpg",
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Alibag Beach",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              size: 12,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "India",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "4.7",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.white),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),

      ),
    );
  }


  

  
  
}
