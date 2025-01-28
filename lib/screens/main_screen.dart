import 'package:flutter/material.dart';

import '../widgets/header_bar_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> screens = [
    Text('Main'),
    Text('Movie'),
    Text('TV'),
  ];
  int currentScreen = 0;

  void changeScreen(int index) {
    setState(() {
      currentScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderBarWidget(
        onTapMenu: () {},
        onTapUser: () {},
        onTapSearch: () {},
      ),
      body: Center(child: screens[currentScreen]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentScreen,
        onTap: changeScreen,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_filter,
            ),
            label: 'Фильмы',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.tv,
            ),
            label: 'Сериалы',
          ),
        ],
      ),
    );
  }
}
