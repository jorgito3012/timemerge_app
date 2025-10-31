import 'package:flutter/material.dart';

AppBar buildAppbar(String text) {
  return AppBar(
        backgroundColor: Color.fromARGB(255, 151, 151, 151),
        title: Text(text),
        titleTextStyle: TextStyle(fontSize: 24, color: Colors.white),
        centerTitle: true,
        /*leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),*/
      );
}
