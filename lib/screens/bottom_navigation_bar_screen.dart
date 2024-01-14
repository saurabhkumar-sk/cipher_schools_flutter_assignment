import 'package:cipher_schools_flutter_assignment/screens/home_screen.dart';
import 'package:cipher_schools_flutter_assignment/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarScree extends StatefulWidget {
  const BottomNavigationBarScree({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScree> createState() =>
      _BottomNavigationBarScreeState();
}

class _BottomNavigationBarScreeState extends State<BottomNavigationBarScree> {
  final PageController pageController = PageController(initialPage: 0);
  late int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const <Widget>[
          Center(
            child: HomeScreen(),
          ),
          Center(
            child: Search(),
          ),
          Center(
            child: Favourite(),
          ),
          Center(
            child: ProfileScreen(),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF7F3DFF),
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF7F3DFF),
        unselectedItemColor: const Color(0xFFC6C6C6),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            pageController.jumpToPage(index);
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              size: 32,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/images/Transaction.png"),
            ),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage("assets/images/pie chart.png"),
            ),
            label: 'Budget',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 32,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// Screens for the different bottom navigation items

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Search');
  }
}

class Favourite extends StatelessWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Favourites');
  }
}
