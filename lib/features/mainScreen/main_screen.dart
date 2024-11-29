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
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          HomePage(onSearchPressed: () {
            _onTabTapped(1);
          }),
          const SearchPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
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
