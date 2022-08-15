import 'package:flutter/material.dart';
import 'package:flutter_food/acoount/main.dart';
import 'package:flutter_food/cart/main.dart';
import 'package:flutter_food/explore/main.dart';
import 'package:flutter_food/home/main.dart';
import 'package:flutter_food/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;
  dynamic routes = [
    Home(),
    Explore(),
    Cart(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Food APP',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: Scaffold(
            backgroundColor: Colors.grey.shade50,
            body: routes[_index],
            // body: const PopularPage(),
            bottomNavigationBar: BottomNav()));
  }

  void handleTap(int index) {
    setState(() {
      if (_index < 4 && _index != index) {
        _index = index;
        print(index);
      }
    });
  }

  BottomNavigationBar BottomNav() {
    return BottomNavigationBar(
      backgroundColor: Colors.deepPurpleAccent.shade700,
      currentIndex: _index,
      onTap: handleTap,
      iconSize: 27,
      elevation: 10,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      unselectedIconTheme: IconThemeData(color: Colors.black),
      selectedIconTheme: IconThemeData(color: Colors.deepPurpleAccent.shade700),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
          ),
          label: "Home",
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
