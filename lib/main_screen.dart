import 'package:flutter/material.dart';
import 'package:covid_office/info_covid.dart';
import 'package:covid_office/gejala_screen.dart';
import 'package:covid_office/penularan_screen.dart';
import 'package:covid_office/pencegahan_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  int _selectedIndex = 0;
  var screen;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedIndex == 0
          ? InfoScreen()
          : _selectedIndex == 1
              ? GejalaScreen()
              : _selectedIndex == 2
                  ? PenularanScreen()
                  : _selectedIndex == 3 ? PencegahanScreen() : null,
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Info'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Gejala'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.transfer_within_a_station),
              title: Text('Penularan'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.done_outline),
              title: Text('Pencegahan'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped),
    );
  }
}
