import 'package:flutter/material.dart';
import 'package:textfieldr/Regestraion.dart';
import 'homePage.dart';
import 'loginPage.dart';

class BNB extends StatefulWidget {
  @override
  _BNBState createState() => _BNBState();
}

class _BNBState extends State<BNB> {
  int _selectedIndex = 0;

  List<Widget> _pages = [
    //Baly(),
    HomePage(),
    LoginPage(),
    Regestraion(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.blue,
        // fixedColor: Colors.blue,
        // unselectedItemColor: Colors.deepOrangeAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.precision_manufacturing_outlined,
              color: Colors.green,
            ),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.green,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}