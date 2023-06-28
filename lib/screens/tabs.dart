import 'package:flutter/material.dart';
import 'package:mealsapp/screens/categories.dart';
import 'package:mealsapp/screens/meals.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  var activePageTitle = 'categories';
  @override
  Widget build(BuildContext context) {
    Widget activePage = const CategoriesScreen();
    if (_selectedPageIndex == 1) {
      activePage = const MealsScreen(
        meals: [],
      );
      activePageTitle = 'Your Favorites';
    }

    return Scaffold(
        appBar: AppBar(title: Text(activePageTitle)),
        body: activePage,
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          currentIndex: _selectedPageIndex,
          items: const [
            BottomNavigationBarItem(
              icon: const Icon(Icons.category),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.star),
              label: 'Favorites',
            ),
          ],
        ));
  }
}
