import 'package:flutter/material.dart';
import 'package:netflix/features/home/presentation/pages/home_page.dart';
import 'package:netflix/features/search/presentation/pages/search_page.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const SearchPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.white,
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
                activeIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ))
          ]),
    );
  }
}
