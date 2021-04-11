import 'package:flash_chat/screens/bookmarks_screen.dart';
import 'package:flash_chat/screens/account_screen.dart';
import 'package:flash_chat/screens/projects_screen.dart';
import 'package:flash_chat/screens/recommendations_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  static const routeName = '/app';
  App({key}) : super(key: key);

  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  PageController _pageController = PageController(
    initialPage: 1,
  );

  int bottomSelectedIndex = 1;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomSelectedIndex,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.construction),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            label: 'For You',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmarks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
        ],
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          bottomTapped(index);
        },
      ),
    );
  }

  Widget buildPageView() {
    return PageView(
      controller: _pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        RecommendationsScreen(),
        SearchProjectsScreen(),
        BookmarksScreen(),
        AccountScreen(),
      ],
    );
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      _pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }
}
