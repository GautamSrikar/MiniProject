import 'package:flutter/material.dart';
import 'package:flutter_food/home/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Food APP',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: Scaffold(
            backgroundColor: Colors.grey.shade50,
            body: const Home(),
            // body: const PopularPage(),
            bottomNavigationBar: BottomNav()));
  }

  BottomNavigationBar BottomNav() {
    return BottomNavigationBar(
      currentIndex: 0,
      iconSize: 27,
      elevation: 10,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      unselectedIconTheme: IconThemeData(color: Colors.black),
      selectedIconTheme: IconThemeData(color: Colors.deepPurpleAccent.shade700),
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
          ),
          label: "Home",
          backgroundColor: Colors.deepPurple.shade200,
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.explore_outlined,
            ),
            label: "Explore"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
            ),
            label: "Cart"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
            ),
            label: "Account"),
      ],
    );
  }
}
