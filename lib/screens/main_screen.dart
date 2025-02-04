import 'package:flutter/material.dart';

import '../widgets/header_bar_widget.dart';
import 'popular_movies_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentScreen = 0;

  void changeScreen(int index) {
    if (currentScreen == index) return;
    setState(() {
      currentScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderBarWidget(
        onTapMenu: () {},
        onTapUser: () {
          Navigator.pushNamed(context, '/login');
        },
        onTapSearch: () {},
      ),
      body: Center(
        child: IndexedStack(
          index: currentScreen,
          children: [
            Text('Main'),
            PopularMoviesScreen(),
            Text('TV'),
          ],
        ),
      ),
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
