import 'package:flutter/material.dart';
import 'package:covid_office/list_penularan.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailPenularan extends StatelessWidget {
  final ListPenularan item;
  DetailPenularan({@required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SafeArea(
                  child: Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(item.image),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.black),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ],
              )),
              Container(
                child: Text(
                  item.name,
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Hexcolor('#FB3364')),
                ),
                margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 24.0),
                  child: Text(
                    item.desc,
                    style: TextStyle(fontSize: 18.0, color: Colors.black),
                  )),
            ],
          ),
        ));
  }
}
