import 'package:flutter/material.dart';
import 'package:flutter_podacast/screens/home_page.dart';

class BNB extends StatefulWidget {
  const BNB({Key? key}) : super(key: key);

  @override
  State<BNB> createState() => _BNBState();
}

class _BNBState extends State<BNB> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    Scaffold(
      body: Center(child: Text("Coming Soon1")),
    ),
    Scaffold(
      body: Center(child: Text("Coming Soon2")),
    ),
    Scaffold(
      body: Center(child: Text("Coming Soon3")),
    ),
  ];
  final List<IconData> _iconList = [
    Icons.home,
    Icons.favorite_border,
    Icons.blur_on,
    Icons.person,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: _iconList
              .asMap()
              .entries
              .map((mapEntry) => BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    mapEntry.value,
                    size: 30,
                    color: _selectedIndex == mapEntry.key
                        ? Colors.pink
                        : Colors.grey,
                  )))
              .toList()),
    );
  }
}
