import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_db/screens/login_screen.dart';

import '../screens/main_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 844),
      builder: (_, child) => MaterialApp(
        theme: ThemeData(
          colorSchemeSeed: Color(0xff032541),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Color(0xff032541),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
          ),
          useMaterial3: false,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/login',
        routes: {
          '/': (context) => MainScreen(),
          '/login': (context) => LoginScreen(),
          '/main': (context) => MainScreen(),
        },
      ),
    );
  }
}
