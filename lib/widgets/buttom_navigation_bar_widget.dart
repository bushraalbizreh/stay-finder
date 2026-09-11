import 'package:flutter/material.dart';
import '../pages/cat_screen.dart';
import '../pages/favorite_screen.dart';
import '../pages/home_screen.dart';
import '../pages/profile_screen.dart';


class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
     BottomNavigationBarWidgetState();
}

class BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int currentPageIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    CatScreen(),
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

