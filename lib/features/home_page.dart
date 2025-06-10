import 'package:flutter/material.dart';
import 'package:waddy/features/explore/explore.dart';
import 'package:waddy/features/homepage/home.dart';
import 'package:waddy/features/profile/profile.dart';
import 'package:waddy/features/schedule/schedule.dart';
import 'package:waddy/features/wishlist/wishlist.dart';
import 'package:waddy/shared/components/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final List _pages = [
      Home(height: height, width: width),
      WishlistPage(),
      ExplorePage(),
      SchedulePage(),
      ProfilePage(),
    ];
    return Scaffold(
      bottomNavigationBar: RoundedBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              _pages[_selectedIndex],
            ])),
      ),
    );
  }
}
