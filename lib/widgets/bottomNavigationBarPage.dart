import 'package:flutter/material.dart';

import '../pages/accountPage.dart';
import '../pages/cartPage.dart';
import '../pages/categoryPage.dart';
import '../pages/home_page_1.dart';
import '../pages/wishlistPage.dart';

class BottonNavigationBarPage extends StatefulWidget {
  const BottonNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottonNavigationBarPage> createState() =>
      _BottonNavigationBarPageState();
}

class _BottonNavigationBarPageState extends State<BottonNavigationBarPage> {
  int _selectIndex = 2;

  void _navigationBottonBar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> _pages = [
    CategoryPage(),
    WishlistPage(),
    HomePage1(),
    CartPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Color(0xFF656567),
        unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 8),
        showSelectedLabels: false,
        selectedIconTheme: IconThemeData(size: 25),
        showUnselectedLabels: true,
        backgroundColor: Colors.blue,
        currentIndex: _selectIndex,
        onTap: _navigationBottonBar,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_outlined, color: Color(0xFF656567)),
              label: "Category"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border, color: Color(0xFF656567)),
              label: "Wishlist"),
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.red), label: "Home"),
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.shopping_cart_outlined, color: Color(0xFF656567)),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, color: Color(0xFF656567)),
              label: "Account"),
        ],
      ),
    );
  }
}
// // Group: Group 226

// // Group: Group 24
//       Text(
//     'Category',
//     style: GoogleFonts.roboto(
//       fontSize: 12.0,
//       color: const Color(0xFF656567),
//     ),
//   );