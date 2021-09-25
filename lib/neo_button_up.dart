// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class NeoButton extends StatelessWidget {
  final Function addList; 
 

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(360),
        color: Colors.grey[200],
      ),
      child: IconButton(
      color: Colors.black,
      // ignore: prefer_const_constructors
      icon: Icon(
        Icons.arrow_upward,
      ),
      onPressed: () {addList();}
    ),
    );
  }
}
