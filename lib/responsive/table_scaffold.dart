import 'package:dashboard/constants.dart';
import 'package:flutter/material.dart';

class TableScaffold extends StatefulWidget {
  const TableScaffold({Key? key}) : super(key: key);
  @override
  State<TableScaffold> createState() => _TableScaffoldState();
}

class _TableScaffoldState extends State<TableScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefualtBackground,
      drawer: myDrawer,
      body: myBody,
    );
  }
}
