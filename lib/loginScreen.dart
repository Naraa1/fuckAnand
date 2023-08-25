// ignore_for_file: prefer_const_constructors

import 'package:dashboard/responsive/desktop_scaffold.dart';
import 'package:dashboard/responsive/layout.dart';
import 'package:dashboard/responsive/mobile_scaffold.dart';
import 'package:dashboard/responsive/table_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<LoginScreen> {
  bool isRememberMe = false;

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Email',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ]),
            height: 60,
            child: const TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xff252229),
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                  color: Colors.black38,
                ),
              ),
            ))
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Password',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ]),
            height: 60,
            child: const TextField(
              obscureText: true,
              style: TextStyle(
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xff252229),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: Colors.black38,
                ),
              ),
            ))
      ],
    );
  }

  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
        Radius.circular(20),
      )),
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Layout(
                      mobileScaffold: MobileScaffold(),
                      tableScaffold: TableScaffold(),
                      desktopScaffold: DesktopScaffold())),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white70,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text('LOGIN',
                style: TextStyle(
                    color: Color(0xff252229),
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: GestureDetector(
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0x66252229),
                    Color(0x99252229),
                    Color(0xcc252229),
                    Color(0xff252229),
                  ])),
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 100,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Sign in',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 50),
                    buildEmail(),
                    SizedBox(
                      height: 20,
                    ),
                    buildPassword(),
                    buildLoginBtn(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
