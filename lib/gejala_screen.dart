import 'package:flutter/material.dart';
import 'package:covid_office/list_gejala.dart';
import 'package:hexcolor/hexcolor.dart';

class GejalaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Hexcolor('#F44700'),
        appBar: AppBar(
          backgroundColor: Hexcolor('#D13E0D'),
          title: Text('Gejala Covid19'),
        ),
        body: Container(
          margin: EdgeInsets.all(16.0),
          child: GridView.count(
            childAspectRatio: 0.72,
            crossAxisCount: 2,
            children: gejalaList.map((val) {
              return Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        width: 160.0,
                        height: 160.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: new AssetImage(val.image)))),
                    Container(
                      margin: EdgeInsets.only(top: 12.0),
                      child: Text(
                        val.jenis,
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        ));
  }
}

var gejalaList = [
  ListGejala(jenis: 'Demam', image: 'images/gejala/g1.png'),
  ListGejala(jenis: 'Batuk dan Pilek', image: 'images/gejala/g2.png'),
  ListGejala(jenis: 'Sakit Tenggorokan', image: 'images/gejala/g3.png'),
  ListGejala(jenis: 'Letih dan Lesu', image: 'images/gejala/g4.png'),
  ListGejala(jenis: 'Sesak Nafas', image: 'images/gejala/g5.png'),
  ListGejala(
      jenis:
          'Menyebabkan timbulnya Pneumonia yaitu infeksi atau peradangan akut di jaringan paru-paru',
      image: 'images/gejala/g6.png')
];
