// ignore_for_file: prefer_const_constructors

import 'dart:js';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:dashboard/loginScreen.dart';

var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
);
var myDefualtBackground = Colors.grey[300];
var myDrawer = Drawer(
  backgroundColor: myDefualtBackground,
  child: Column(
    children: [
      DrawerHeader(child: Icon(Icons.favorite)),
      ListTile(
          leading: Icon(Icons.home),
          title: Text(
            'D A S H B O A R D',
          ),
          onTap: () {
            Navigator.pop(context as BuildContext);
          }),
      ListTile(
          leading: Icon(Icons.chat),
          title: Text(
            'MESSAGE',
          ),
          onTap: () {
            Navigator.push(
              context as BuildContext,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          }),
      ListTile(
          leading: Icon(Icons.settings),
          title: Text(
            'SETTINGS',
          ),
          onTap: () {
            Navigator.push(
              context as BuildContext,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          }),
      ListTile(
          leading: Icon(Icons.logout),
          title: Text(
            'LOG OUT',
          ),
          onTap: () {
            Navigator.push(
              context as BuildContext,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          }),
    ],
  ),
);
var myBody = ListView(
  children: [
    CarouselSlider(
      options: CarouselOptions(
          height: 180.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 0 / 9,
          autoPlayCurve: Curves.fastLinearToSlowEaseIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          viewportFraction: 0.8),
      items: [
        Container(
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
                color: Colors.black, width: 0.2, style: BorderStyle.solid),
            image: const DecorationImage(
              image: AssetImage('images/img-og-pubg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
                color: Colors.black, width: 0.2, style: BorderStyle.solid),
            image: const DecorationImage(
              image: AssetImage('images/mobileLegends.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
                color: Colors.black, width: 0.2, style: BorderStyle.solid),
            image: const DecorationImage(
              image: AssetImage('images/steam.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    ),
    Column(
      children: [
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          childAspectRatio: 2.5 / 2,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                      color: Colors.black, width: 1, style: BorderStyle.solid),
                  image: const DecorationImage(
                    image: AssetImage('images/hiCharge.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                        color: Colors.black,
                        width: 1,
                        style: BorderStyle.solid),
                    image: const DecorationImage(
                      image: AssetImage('images/umoney.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                      color: Colors.black, width: 1, style: BorderStyle.solid),
                  image: const DecorationImage(
                    image: AssetImage('images/hiCharge.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                        color: Colors.black,
                        width: 1,
                        style: BorderStyle.solid),
                    image: const DecorationImage(
                      image: AssetImage('images/umoney.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
          ],
        ),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 1,
          childAspectRatio: 2.2 / 1,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                      color: Colors.black, width: 1, style: BorderStyle.solid),
                  image: const DecorationImage(
                    image: AssetImage('images/hiCharge.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ),
  ],
);
