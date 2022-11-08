import 'package:flutter/material.dart';
import 'package:nav_app/widgets/favorite_widget.dart';
import 'package:nav_app/widgets/home_widget.dart';
import 'package:nav_app/widgets/profile_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List _appBarWidgets = <Widget>[
    Text("Home"),
    Text("Favorites"),
    Text("Profile"),
  ];
  static const List _navBarWidgets = <Widget>[
    HomeWidget(),
    FavoriteWidget(),
    ProfileWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: _appBarWidgets[_selectedIndex],
      ),
      body: _navBarWidgets[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "favorites"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
