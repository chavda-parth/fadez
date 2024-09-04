import 'package:fadez/cart_page.dart';
import 'package:fadez/favorites_page.dart';
import 'package:fadez/home_page.dart';
import 'package:fadez/profile_page.dart';
import 'package:flutter/material.dart';

class PageNavigation extends StatefulWidget {
  const PageNavigation({super.key});

  @override
  State<PageNavigation> createState() => _PageNavigationState();
}

class _PageNavigationState extends State<PageNavigation> {
  int _currentPageIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  void _onNavigationItemTapped(int index) {
    setState(() {
      _currentPageIndex = index;
    });
    _pageController.jumpToPage(_currentPageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      bottomNavigationBar: NavigationBar(
        height: MediaQuery.of(context).size.height * 0.08,
        selectedIndex: _currentPageIndex,
        onDestinationSelected: _onNavigationItemTapped,
        destinations: [
          NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                color: Theme.of(context).primaryColorDark,
              ),
              selectedIcon: Icon(
                Icons.home,
                color: Theme.of(context).primaryColorDark,
              ),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(
                Icons.star_border,
                color: Theme.of(context).primaryColorDark,
              ),
              selectedIcon: Icon(
                Icons.star,
                color: Theme.of(context).primaryColorDark,
              ),
              label: 'Favorites'),
          NavigationDestination(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Theme.of(context).primaryColorDark,
              ),
              selectedIcon: Icon(
                Icons.shopping_cart_rounded,
                color: Theme.of(context).primaryColorDark,
              ),
              label: 'Cart'),
          NavigationDestination(
              icon: Icon(Icons.person_outline,
                  color: Theme.of(context).primaryColorDark),
              selectedIcon: Icon(
                Icons.person,
                color: Theme.of(context).primaryColorDark,
              ),
              label: 'Profile')
        ],
        backgroundColor: Color(0xffe6e6fa),
        indicatorColor: Colors.transparent,
        overlayColor: WidgetStateColor.transparent,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: const [
          HomePage(),
          FavoritesPage(),
          CartPage(),
          ProfilePage()
        ],
      ),
    );
  }
}
