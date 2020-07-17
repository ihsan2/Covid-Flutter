import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Hexcolor('#F44700'),
        appBar: AppBar(
          backgroundColor: Hexcolor('#D13E0D'),
          title: Text('Info Covid19'),
        ),
        body: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        child: Text(
                      'Panduan',
                      style: TextStyle(
                          fontSize: 36.0,
                          color: Hexcolor('#FFFF01'),
                          fontWeight: FontWeight.w500),
                    )),
                    Container(
                        child: Text(
                      'Pencegahan &',
                      style: TextStyle(
                          fontSize: 36.0,
                          color: Hexcolor('#FFFF01'),
                          fontWeight: FontWeight.w500),
                    )),
                    Container(
                        child: Text(
                      'Pengendalian',
                      style: TextStyle(
                          fontSize: 36.0,
                          color: Hexcolor('#FFFF01'),
                          fontWeight: FontWeight.w500),
                    )),
                    Container(
                        child: Image.asset(
                      'images/covid.png',
                      width: 240,
                    )),
                    Container(
                        margin: EdgeInsets.only(top: 16.0),
                        child: Image.asset(
                          'images/home.png',
                          width: MediaQuery.of(context).size.width,
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 16.0),
                        child: Text(
                          'COVID-19 merupakan penyakit menular ynag disebabkan oleh jenis virus Corona baru (novel coronavirus/nCov))',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Hexcolor('#FFFFFF'),
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.justify,
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Virus Corona baru mirip dengan keluarga virus yang menyebabkan SARS (Severe Acute Respiratory Syndrome) dan sejumlah influensa biasa.)',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Hexcolor('#FFFFFF'),
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.justify,
                        )),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Hexcolor('#00B3AD'),
                        ),
                        margin: EdgeInsets.only(top: 8.0),
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Virus Corona merupakan jenis virus yang tidak mampu bertahan hidup lama jika di luar inang (makhluk hidup). Virus ini juga tidak mampu bertahan pada suhu diatas 56^C selama 30 Menit dan Virus ini dapat masuk melalui mata, hidung dan mulut',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Hexcolor('#FFFFFF'),
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        )),
                  ],
                ))));
  }
}
