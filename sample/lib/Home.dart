//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// Home page
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg"),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Home Page"),
        actions: <Widget>[
          IconButton(
            //padding: const EdgeInsets.all(8.0),
            alignment: Alignment.centerRight,
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              // By default our  icon color is white
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          // IconButton(
          //   alignment: Alignment.centerLeft,
          //   icon: SvgPicture.asset(
          //     "assets/icons/cart.svg",
          //     // By default our  icon color is white
          //     color: Colors.white,
          //   ),
          //   onPressed: () {},
          // ),
          //SizedBox(width: 200)
        ],
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     child: Text('Go back!'),
      //   ),
      // ),
      body: Image.asset('assets/image/Logo.png'),
    );
  }
}
