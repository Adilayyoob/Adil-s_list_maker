// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:adils_list_maker/list_data.dart';
class CardTemplate extends StatelessWidget {
  final ListData listdata;
  final Function delete;
  CardTemplate({required this.listdata, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Text(
          listdata.serialNumber.toString(),
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        title: Text(
          listdata.name,
          style: TextStyle(
            color: Colors.amberAccent[700],
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        trailing: IconButton(
          onPressed:(){delete();}, 
          icon: Icon(Icons.close_rounded, color: Colors.red[500]),
        ),
      ),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.shade300,
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            BoxShadow(
                offset: Offset(10, 10), color: Colors.black38, blurRadius: 20)
          ]),
    );
  }
}