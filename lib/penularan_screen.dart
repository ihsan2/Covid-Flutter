import 'package:covid_office/list_penularan.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:covid_office/detail_penularan.dart';

class PenularanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Hexcolor('#D13E0D'),
          title: Text('Cara Penularan'),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          child: ListView(
            children: penularanList.map((val) {
              var index = penularanList.indexOf(val);
              var t = index != 0 ? 16.0 : 0.0;
              return Padding(
                padding: EdgeInsets.only(top: t),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailPenularan(item: val);
                    }));
                  },
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Image.asset(val.image),
                        ),
                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(left: 16.0, right: 16.0),
                              child: Text(
                                val.name,
                                style: TextStyle(
                                    fontSize: 18.0, color: Hexcolor('#FB3364')),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ));
  }
}

var penularanList = [
  ListPenularan(
      name: 'Droplet',
      desc:
          'COVID-19 ditularkan orang dengan COVID-19 melalui DROPLET (percikan seseorang ketika batuk/berbicara)',
      image: 'images/penularan/g1.png'),
  ListPenularan(
      name: 'Kontak Erat',
      desc:
          'Seperti cium tangan, jabat tangan, berpelukan, ataupun cipika-cipiki',
      image: 'images/penularan/g2.png'),
  ListPenularan(
      name: 'Menyentuh Permukaan Benda Terkontaminasi',
      desc:
          'Virus Corona dapat bertahan pada permukaan benda mati selama berjam-jam sampai berhari-hari',
      image: 'images/penularan/g3.png'),
];
