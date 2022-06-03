import 'package:flutter/material.dart';
import 'package:flutter_social_app/extensions/extensions.dart';
import 'package:flutter_social_app/utilities/constants.dart';
import 'package:flutter_social_app/widgets/texts.dart';

import 'my_personal_nav_page.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({Key? key}) : super(key: key);

  @override
  _MainNavigationScreenState createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
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
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Texts(
            Constants.appName,
            color: Colors.black,
          ).fadeInList(5, false),
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ).fadeInList(5, false),
            onPressed: () => Navigator.pop(context),
          ),
        ),
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
