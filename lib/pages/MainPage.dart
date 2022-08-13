import 'package:cozyv2/pages/HomePage.dart';
import 'package:cozyv2/pages/ProfilePage.dart';
import 'package:cozyv2/pages/TransactionHistoryPage.dart';
import 'package:cozyv2/pages/WishllistPage.dart';
import 'package:cozyv2/theme.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // Index of page
  var _currentIndex = 0;

  // List of Pages
  final pages = [
    HomePage(),
    WishlistPage(),
    TransactionHistoryPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) =>setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(icon: Icon(Icons.home), title: Text("Home"), selectedColor: PurpleColor),
          SalomonBottomBarItem(icon: Icon(Icons.favorite_outline), title: Text("Wishlist"), selectedColor: PurpleColor),
          SalomonBottomBarItem(icon: Icon(Icons.history), title: Text("Transaction"), selectedColor: PurpleColor),
          SalomonBottomBarItem(icon: Icon(Icons.person), title: Text("Account"), selectedColor: PurpleColor),
        ],
      ),
    );
  }
}