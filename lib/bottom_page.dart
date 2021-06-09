import 'package:coffee_shop_app_ui/home_page.dart';
import 'package:flutter/material.dart';

class BottomPage extends StatefulWidget {
  @override
  _BottomPageState createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOption = <Widget>[
    HomePage(),
    Text(
      "Page2",
      style: optionStyle,
    ),
    Text(
      "Page3",
      style: optionStyle,
    ),
    Text(
      "Page4",
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c0f14),
      body: Center(
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          elevation: 0.0,
          backgroundColor: Color(0xff0c0f14),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shop_rounded,
                size: 30,
              ),
              label: "Business",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 30,
              ),
              label: "favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                size: 30,
              ),
              label: "notifications",
            ),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: Color(0xff4e5053),
          selectedItemColor: Color(0xffd17842),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
