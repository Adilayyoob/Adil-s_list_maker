// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> listdata = <String>[];
  String currentName = "";

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height -20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Text(
                  "Adil's List Maker",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700,
                    fontSize: 40,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 380,
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 20,
                    right: 20,
                    bottom: 10,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade300,
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(10, 10),
                              color: Colors.black38,
                              blurRadius: 20)
                        ]),
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                        child: ListTile(
                          leading: Text(
                            '${index + 1}'.toString(),
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                          title: Text(
                            listdata[index],
                            style: TextStyle(
                              color: Colors.amberAccent[700],
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              setState(() {
                                listdata.removeAt(index);
                              });
                            },
                            icon: Icon(Icons.close_rounded,
                                color: Colors.red[500]),
                          ),
                        ),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey.shade300,
                            // ignore: prefer_const_literals_to_create_immutables
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(10, 10),
                                  color: Colors.black38,
                                  blurRadius: 20)
                            ]),
                      ),
                      itemCount: listdata.length,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                    bottom: 20,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        listdata.clear();
                      });
                    },
                    child: Text(
                      "Delete All",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Container(
                      width: 280,
                      height: 50,
                      // ignore: prefer_const_constructors
                      child: TextField(
                        onChanged: (String textValue) {
                          currentName = textValue;
                        },
                        decoration: InputDecoration(
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
                    ),
                     Container(
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
                          onPressed: () {
                            setState(() {
                              if (currentName.isNotEmpty)
                                listdata.add(currentName);
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
