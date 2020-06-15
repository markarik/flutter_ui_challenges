import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uidestinationchallenge/constants/color.dart';
import 'package:uidestinationchallenge/constants/text_style.dart';

class NotificationsPage extends StatelessWidget {
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
          "Notifications",
          style: headerStyle,
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
                  onPressed: () {},
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
            children: [
              Container(
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 100,
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/mark.jpg'),
                          ),
                          title: Text(
                              "Neque porro quisquam est qui dolorem ipsum quia dolor "),
                          subtitle: Text('TWICE'),
                          // trailing: Container(
                          //   width: 50,
                          //   decoration: const BoxDecoration(
                          //     gradient: LinearGradient(
                          //         end: FractionalOffset.centerLeft,
                          //         begin: FractionalOffset.centerRight,
                          //         colors: [
                          //           Colors.purpleAccent,
                          //           Colors.deepPurple
                          //         ]),
                          //     borderRadius:
                          //         BorderRadius.all(Radius.circular(80.0)),
                          //   ),
                          //   child: Padding(
                          //     padding: const EdgeInsets.all(8.0),
                          //     child: Text(
                          //       "Pay",
                          //       style: card2Style,
                          //     ),
                          //   ),
                          // )
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
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/mark.jpg'),
                            ),
                            title: Text(
                                "Neque porro quisquam est qui dolorem ipsum quia dolor "),
                            subtitle: Text('TWICE'),
                            trailing: Container(
                              width: 50,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    end: FractionalOffset.centerLeft,
                                    begin: FractionalOffset.centerRight,
                                    colors: [
                                      const Color(0xffFBD8C6),
                                      const Color(0xffFF978D),
                                    ]),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(80.0)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Pay",
                                  style: card2Style,
                                ),
                              ),
                            )),
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
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/mark.jpg'),
                          ),
                          title: Text(
                              "Neque porro quisquam est qui dolorem ipsum quia dolor "),
                          subtitle: Text('TWICE'),
                          // trailing: Container(
                          //   width: 50,
                          //   decoration: const BoxDecoration(
                          //     gradient: LinearGradient(
                          //         end: FractionalOffset.centerLeft,
                          //         begin: FractionalOffset.centerRight,
                          //         colors: [
                          //           Colors.purpleAccent,
                          //           Colors.deepPurple
                          //         ]),
                          //     borderRadius:
                          //         BorderRadius.all(Radius.circular(80.0)),
                          //   ),
                          //   child: Padding(
                          //     padding: const EdgeInsets.all(8.0),
                          //     child: Text(
                          //       "Pay",
                          //       style: card2Style,
                          //     ),
                          //   ),
                          // ),
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
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/mark.jpg'),
                            ),
                            title: Text(
                                "Neque porro quisquam est qui dolorem ipsum quia dolor "),
                            subtitle: Text('TWICE'),
                            // trailing: Container(
                            //   width: 50,
                            //   decoration: const BoxDecoration(
                            //     gradient: LinearGradient(
                            //         end: FractionalOffset.centerLeft,
                            //         begin: FractionalOffset.centerRight,
                            //         colors: [
                            //           Colors.purpleAccent,
                            //           Colors.deepPurple
                            //         ]),
                            //     borderRadius:
                            //         BorderRadius.all(Radius.circular(80.0)),
                            //   ),
                            //   child: Padding(
                            //     padding: const EdgeInsets.all(8.0),
                            //     child: Text(
                            //       "Pay",
                            //       style: card2Style,
                            //     ),
                            //   ),
                            // )
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 120,
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/mark.jpg'),
                            ),
                            title: Text(
                                "Neque porro quisquam est qui dolorem ipsum quia dolor "),
                            subtitle: Text('TWICE'),
                            trailing: Container(
                              // width: 80,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    end: FractionalOffset.centerLeft,
                                    begin: FractionalOffset.centerRight,
                                    colors: [
                                      const Color(0xffFFEBFDFC),
                                      const Color(0xff51eddb),
                                    ]),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(80.0)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Paid",
                                  style: card2Style,
                                ),
                              ),
                            )),
                      ),
                    ],
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
