import 'package:flutter/material.dart';

import 'my_personal_nav_page.dart';

class NavBarMain extends StatefulWidget {
  const NavBarMain({Key? key}) : super(key: key);

  @override
  _NavBarMainState createState() => _NavBarMainState();
}

class _NavBarMainState extends State<NavBarMain> {
  List<Widget> pages = [
    //const HomeNavPage(),
    //const BarItemNavPage(),
    //const SearchNavPage(),
    const MyPersonalNavPage(),
    const MyPersonalNavPage(),
    const MyPersonalNavPage(),
    const MyPersonalNavPage(),
  ];
  int currentTappedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: pages[currentTappedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTappedIndex,
        elevation: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withOpacity(0.3),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_sharp), label: 'Bar'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My'),
        ],
        onTap: (index){
          setState(() {
            currentTappedIndex = index;
          });
        },
      ),
    );
  }
}
