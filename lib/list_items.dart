// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors, must_be_immutable, unnecessary_new, unused_element
import 'package:adils_list_maker/card_template.dart';
import 'package:adils_list_maker/list_data.dart';
import 'package:flutter/material.dart';

class ListItems extends StatefulWidget {
  const ListItems({Key? key}) : super(key: key);

  @override
  _ListItemsState createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
  List<ListData> listdata = [
    ListData(serialNumber: 1, name: "mango"),
    ListData(serialNumber: 2, name: "orange"),
  ];
  Function addList(){
    listdata.add(ListData(name: ))
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listdata
          .map((e) => CardTemplate(
              listdata: e,
              delete:() {
                setState(() {
                  listdata.remove(e);
                });
              }))
          .toList(),
    );
  }
}

