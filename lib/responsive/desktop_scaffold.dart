import 'package:dashboard/constants.dart';
import 'package:flutter/material.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);
  @override
  State<DesktopScaffold> createState() => DesktopScaffoldState();
}

class DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefualtBackground,
      appBar: myAppBar,
      body: Column(
        children: <Widget>[
          myDrawer,
        ],
      ),
    );
  }
}
