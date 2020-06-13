import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uidestinationchallenge/constants/color.dart';
import 'package:uidestinationchallenge/pages/ui/day1signinsignup/signup.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    bool _value1 = false;
      void _value1Changed(bool value) => setState(() => _value1 = value);


  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: colorWhite),
          ),
          
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: lightPink,
                  filled: true))
        ],
      ),
    );
  }

  Widget _submitButton() {
    return Container(
            margin: EdgeInsets.symmetric(vertical: 10),

      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [colorWhite,colorWhite])),
      child: Text(
        'Login',
        style: TextStyle(fontSize: 15, color: mainColor),
      ),
    );
  }

  Widget _divider() {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          // SizedBox(
          //   width: 20,
          // ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text('or'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          // SizedBox(
          //   width: 20,
          // ),
        ],
      ),
    );
  }

  Widget _facebookButton() {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RaisedButton(
            child: Row(
              children: <Widget>[
                FaIcon(FontAwesomeIcons.facebook),
                Text("FaceBook"),
              ],
            ),
            onPressed: () {},
            color: Colors.blue,
            textColor: colorWhite,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            splashColor: Colors.grey,
          ),
          RaisedButton(
            child: Row(
              children: <Widget>[
                FaIcon(FontAwesomeIcons.twitter),
                Text("twitter"),
              ],
            ),
            onPressed: () {},
            color: Colors.lightBlue,
            textColor: colorWhite,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            splashColor: Colors.grey,
          ),
          RaisedButton(
            child: Row(
              children: <Widget>[
                FaIcon(FontAwesomeIcons.google),
                Text("Google"),
              ],
            ),
            onPressed: () {},
            color: colorWhite,
            textColor: Colors.black,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            splashColor: Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget _createAccountLabel() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.all(15),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Don\'t have an account ?',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600,color: colorWhite),
          ),
         
          InkWell(
            onTap: (){

              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpPage()));

        // Navigator.pushNamed(),
        },
                      child: Text(
              'SignUp',
              style: TextStyle(
                  color: colorWhite,
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }

  Widget _title() {
    return Container(
      height: 150,
      child: Image.asset('assets/logo.png', scale: 3.5),
    );
    
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Username"),
        _entryField("Password", isPassword: true),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      color: mainColor,
      height: height,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // SizedBox(height: height * .2),
              _title(),
              // SizedBox(height: 50),
              _emailPasswordWidget(),
              // SizedBox(height: 20),
              _submitButton(),
              Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            activeColor: colorWhite,
                            value: _value1,
                            onChanged: _value1Changed,
                          ),
                          Text(
                            "Remember Me",
                            style: TextStyle(
                                color: colorWhite,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                                  _createAccountLabel(),

              // Container(
              //   padding: EdgeInsets.symmetric(vertical: 10),
              //   alignment: Alignment.centerRight,
              //   child: Text('Forgot Password ?',
              //       style:
              //           TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
              // ),
              _divider(),
              _facebookButton(),
              SizedBox(height: height * .055),
            ],
          ),
        ),
      ),
    ));
  }
}
