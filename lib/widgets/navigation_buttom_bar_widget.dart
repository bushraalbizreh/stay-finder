import 'package:flutter/material.dart';
import 'package:stayfinder/pages/cart_screen.dart';
import 'package:stayfinder/pages/favorite_screen.dart';
import 'package:stayfinder/pages/home_screen.dart';
import 'package:stayfinder/pages/profile_screen.dart';

class NavigationBottomBarWidget extends StatefulWidget {
  const NavigationBottomBarWidget({super.key});

  @override
  State<NavigationBottomBarWidget> createState() =>
      _NavigationBottomBarWidgetState();
}

class _NavigationBottomBarWidgetState extends State<NavigationBottomBarWidget> {
  int currentPageIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(color: Color(0xFF55433D)),
        unselectedItemColor: Color(0xFF55433D),
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Color(0xFF55433D),
        ),
        selectedItemColor: Color(0xFF99462A),
      
        selectedIconTheme: IconThemeData(color: Color(0xFF99462A)),
        currentIndex: currentPageIndex,
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Color(0xFF99462A),
        ),

        onTap: (value) {
          currentPageIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home, color: Color(0xFF99462A)),
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),

          BottomNavigationBarItem(
            activeIcon: Icon(Icons.shopping_cart, color: Color(0xFF99462A)),
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),

          BottomNavigationBarItem(
            activeIcon: Icon(Icons.favorite_outlined, color: Color(0xFF99462A)),
            icon: Icon(Icons.favorite_outline_outlined),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.person, color: Color(0xFF99462A)),
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
      body: pages[currentPageIndex],
    );
  }
}
