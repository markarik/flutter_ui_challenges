import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uidestinationchallenge/constants/color.dart';
import 'package:uidestinationchallenge/constants/text_style.dart';

class MainHomePage extends StatefulWidget {
  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.shade300,

      body: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.03), BlendMode.dstATop),
                      image: AssetImage('assets/mark.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:15.0,right: 15.0),
                  child: Container(
                        margin: EdgeInsets.only( top: 70),
                      height: 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Arthur Ward",style:headerStyle),

                                  Icon(
                                    Icons.settings,
                                    color:colorGrey,
                                    size:30
                                  )

                        ],
                      ),
                    ),
                ),
                Container(
                      margin: EdgeInsets.only( top: 130),
                    height: 40.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: ListTile(
                            title: Text("302",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),),
                            subtitle: Text("Books".toUpperCase(),
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12.0) ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text("148",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),),
                            subtitle: Text("Read".toUpperCase(),
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12.0) ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text("1,2k",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),),
                            subtitle: Text("Following".toUpperCase(),
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12.0) ),
                          ),
                        ),
                      ],
                    ),
                  ),
                Positioned(
                  bottom: 1,
                  child: Container(
                    
                    constraints: BoxConstraints.expand(height: 50),
                    child: TabBar(tabs: [
                      new Tab(
                        child: Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 16.2,
                            color: colorBlack,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      new Tab(
                        child: Text(
                          "Articles",
                          style: TextStyle(
                            fontSize: 16.2,
                            color: colorBlack,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      new Tab(
                        child: Text(
                          "User",
                          style: TextStyle(
                            fontSize: 16.2,
                            color: colorBlack,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: TabBarView(children: [
                  Container(
                    color: colorPurple,
                    child: Text("Home Body"),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          
                          children: <Widget>[
                          Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Architecture",
                              style: header2Style,
                            ),
                            Text(
                              "3 books",
                              style: card3Style,
                            ),
                          ],
                        ),
                      ),
                        IconButton(
                          icon: Icon(
                            Icons.more_horiz
                          ), 
                          onPressed: null)
                          ],
                        ),
                        Container(
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 100,
                        child: ListTile(
                          leading: Container(
                            child: Image(
                            image: AssetImage('assets/mark.jpg'),
                              ),
                          ),
                          title: Text(
                              "Neque porro quisquam est qui dolorem ipsum quia dolor "),
                          subtitle: 
                    Container(
                        // padding: EdgeInsets.all(30.0),
                        child: Chip(
                          label: Text('Read Now',style: TextStyle(
                            color:Colors.white
                          ),),
                          shadowColor: Colors.blue,
                          backgroundColor: Colors.blue,
                          elevation: 10,
                          autofocus: true,
                        )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                      Container(
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 100,
                        child: ListTile(
                          leading: Container(
                            child: Image(
                            image: AssetImage('assets/mark.jpg'),
                              ),
                          ),
                          title: Text(
                              "Neque porro quisquam est qui dolorem ipsum quia dolor "),
                          subtitle: 
                    Container(
                        // padding: EdgeInsets.all(30.0),
                        child: Chip(
                          label: Text('Read Now',style: TextStyle(
                            color:Colors.white
                          ),),
                          shadowColor: Colors.blue,
                          backgroundColor: Colors.blue,
                          elevation: 10,
                          autofocus: true,
                        )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              
                      ],
                    ),
                  ),
                  Container(
                    color: colorPurple,
                    child: Text("User Body"),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),

      // body: SingleChildScrollView(
      //   child: Stack(
      //     children: <Widget>[
      // Container(
      //   height: 250,
      //   width: double.infinity,
      //   decoration: BoxDecoration(
      //     // shape: BoxShape.circle,
      //     image: DecorationImage(
      //       fit: BoxFit.cover,
      //       colorFilter: new ColorFilter.mode(
      //           Colors.black.withOpacity(0.2), BlendMode.dstATop),
      //       image: AssetImage('assets/mark.jpg'),
      //     ),
      //   ),
      // ),
      //       Expanded(
      //         child: DefaultTabController(
      //           length: 5,
      //           child: new Scaffold(
      //             backgroundColor: Colors.white,
      //             appBar: PreferredSize(
      //               preferredSize:
      //                   Size.fromHeight(40.0), // here the desired height
      //               child: new AppBar(
      //                   backgroundColor: Colors.transparent,
      //                   elevation: 0.0,
      //                   centerTitle: true,
      //                   automaticallyImplyLeading: false,
      //                   title: new TabBar(
      //                     isScrollable: true,
      //                     indicatorSize: TabBarIndicatorSize.tab,
      //                     unselectedLabelColor: Colors.black,
      //                     labelColor: Colors.white,
      //                     // labelStyle: TextStyle(fontSize: 19.0),
      //                     // indicator: new BubbleTabIndicator(
      //                     //   indicatorHeight: 36.0,
      //                     //   // indicatorColor: purple,
      //                     //   tabBarIndicatorSize: TabBarIndicatorSize.tab,
      //                     // ),
      //                     tabs: <Widget>[
      // new Tab(
      //   child: Text(
      //     "All",
      //     style: TextStyle(
      //       fontSize: 16.2,
      //       fontWeight: FontWeight.w500,
      //     ),
      //   ),
      // ),
      //                       new Tab(
      //                         child: Text(
      //                           "Today",
      //                           style: TextStyle(
      //                             fontSize: 16.5,
      //                             fontWeight: FontWeight.w500,
      //                           ),
      //                         ),
      //                       ),
      //                       new Tab(
      //                         child: Text(
      //                           "Tommorow",
      //                           style: TextStyle(
      //                             fontSize: 16.0,
      //                             fontWeight: FontWeight.w500,
      //                           ),
      //                         ),
      //                       ),
      //                       new Tab(
      //                         child: Text(
      //                           "This Month",
      //                           style: TextStyle(
      //                             color: Colors.red,
      //                             fontSize: 16.5,
      //                             fontWeight: FontWeight.w500,
      //                           ),
      //                         ),
      //                       ),
      //                       new Tab(
      //                         child: Text(
      //                           "Next Month",
      //                           style: TextStyle(
      //                             fontSize: 16.0,
      //                             fontWeight: FontWeight.w500,
      //                           ),
      //                         ),
      //                       ),
      //                     ],
      //                   )),
      //             ),
      //             body: new TabBarView(
      //               children: [
      //                 Text("all"),
      //                 Text("Today"),
      //                 Text("Tommorrow"),
      //                 Text("This Month"),
      //                 Text("Next Month"),
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
