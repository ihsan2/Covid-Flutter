import 'package:covid_office/list_pencegahan.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PencegahanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Hexcolor('#D13E0D'),
          title: Text('Pencegahan & Penyebaran'),
        ),
        body: Container(
            margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            child: CarouselPencegahan()));
  }
}

class CarouselPencegahan extends StatefulWidget {
  @override
  _CarouselPencegahan createState() {
    return _CarouselPencegahan();
  }
}

class _CarouselPencegahan extends State<CarouselPencegahan> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            height: 300.0,
            enableInfiniteScroll: false,
            autoPlay: false,
            reverse: false),
        items: pencegahanList.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(color: Colors.white),
                  child: Image.asset(i.image));
            },
          );
        }).toList(),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: pencegahanList.map((url) {
          int index = pencegahanList.indexOf(url);
          return Container(
            width: 8.0,
            height: 8.0,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _current == index
                  ? Color.fromRGBO(0, 0, 0, 0.9)
                  : Color.fromRGBO(0, 0, 0, 0.4),
            ),
          );
        }).toList(),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: pencegahanList.map((e) {
          int index = pencegahanList.indexOf(e);
          var text = _current == index ? e.desc : '';
          return Container(
            margin: EdgeInsets.only(top: 16.0),
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width - 16.0),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
          );
        }).toList(),
      )
    ]);
  }
}

var pencegahanList = [
  ListPencegahan(
      desc: 'Cuci tangan dengan sabun dan air mengalir selama minimal 20 detik',
      image: 'images/pencegahan/g1.png'),
  ListPencegahan(
      desc: 'Menutup mulut dan hidung dengan masker',
      image: 'images/pencegahan/g2.png'),
  ListPencegahan(
      desc: 'Hindari berada dalam kerumunun',
      image: 'images/pencegahan/g3.png'),
  ListPencegahan(
      desc: 'Hindari bersentuhan dengan orang lain',
      image: 'images/pencegahan/g4.png'),
  ListPencegahan(
      desc: 'Hindari memegang fasilitas umum',
      image: 'images/pencegahan/g5.png'),
  ListPencegahan(
      desc: 'Hindari menyentuh wajah dengan tangan kotor',
      image: 'images/pencegahan/g6.png'),
  ListPencegahan(
      desc: 'Hindari berkumpul di tempat-tempat umum',
      image: 'images/pencegahan/g7.png'),
  ListPencegahan(
      desc: 'Hindari melakukan perjalanan', image: 'images/pencegahan/g8.png'),
  ListPencegahan(
      desc: 'Perilaku hidup bersih dan sehat',
      image: 'images/pencegahan/g9.png'),
];
