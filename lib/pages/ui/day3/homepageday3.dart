import 'package:flutter/material.dart';
import 'package:uidestinationchallenge/constants/color.dart';
import 'package:uidestinationchallenge/constants/text_style.dart';

class HomePage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                                  Row(
                                    children:<Widget>[
                                      Icon(
                                        Icons.location_on,
                                        size: 10,
                                        color: colorGrey,
                                      ),
                                      Text("Nairobi , Kenya",
 
                                      style: smallHeaderStyle,),
                                    ]
                                  )
                                  
                                ],
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Padding(
                              padding: const EdgeInsets.only(top:20),
                              child: Row(
                                children: <Widget>[
                                  Text("Profile Settings",
                                  style: headerStyle,
                                  ),
                                  
                                ],
                              ),
                            ),
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
                  Container(
                    
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text("User information"),
                        ),
                        Divider(),
                        ListTile(
                          title: Text("Email"),
                          subtitle: Text("butterfly.little@gmail.com"),
                          leading: Icon(Icons.email),
                        ),
                        ListTile(
                          title: Text("Phone"),
                          subtitle: Text("+977-9815225566"),
                          leading: Icon(Icons.phone),
                        ),
                        ListTile(
                          title: Text("Website"),
                          subtitle: Text("https://www.littlebutterfly.com"),
                          leading: Icon(Icons.web),
                        ),
                        ListTile(
                          title: Text("About"),
                          subtitle: Text(
                              "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nulla, illo repellendus quas beatae reprehenderit nemo, debitis explicabo officiis sit aut obcaecati iusto porro? Exercitationem illum consequuntur magnam eveniet delectus ab."),
                          leading: Icon(Icons.person),
                        ),
                        ListTile(
                          title: Text("Joined Date"),
                          subtitle: Text("15 February 2019"),
                          leading: Icon(Icons.calendar_view_day),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                "Settings"
              ),
              centerTitle: true,
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                  ), 
                  onPressed: (){

                  })
              ],
            )
          ],
        ),
      ),
    );
  }
}
