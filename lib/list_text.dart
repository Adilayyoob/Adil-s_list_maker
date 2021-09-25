// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class ListText extends StatelessWidget {
  
  String name="";
  final nameCon = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    // ignore: duplicate_ignore
    return Container(
      width: 280,
      height: 50,
      // ignore: prefer_const_constructors
      child: TextField(
        controller: nameCon,
        onChanged: (String textValue){
          print(name);
        },
        decoration:  InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
        ),
        // ignore: prefer_const_constructors
        style: TextStyle(
          color: Colors.black,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        keyboardType: TextInputType.text,
      ),
    );
  }
}

class NameValue extends StatelessWidget {
  String name;
  NameValue({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}