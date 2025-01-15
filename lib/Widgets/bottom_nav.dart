import 'package:flutter/material.dart';
import '../Pages/add_car.dart';
import '../Pages/car_page.dart';
import '../Pages/home_page.dart';
import '../Pages/message_page.dart';
import '../Pages/profile_page.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    CarPage(),
    AddCar(),
    MessagePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // The main body content

      // Custom Bottom Navigation Bar
      bottomNavigationBar: Container(
        height: 70.0,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(
                Icons.home,
                size: 30,
              ),
              color: _currentIndex == 0 ? Colors.indigo : Colors.grey,
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.directions_car,
                size: 30,
              ),
              color: _currentIndex == 1 ? Colors.indigo : Colors.grey,
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
            // Spacer for the floating action button in the center
            SizedBox(width: 40),
            IconButton(
              icon: const Icon(
                Icons.message,
                size: 30,
              ),
              color: _currentIndex == 3 ? Colors.indigo : Colors.grey,
              onPressed: () {
                setState(() {
                  _currentIndex = 3;
                });
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.person,
                size: 30,
              ),
              color: _currentIndex == 4 ? Colors.indigo : Colors.grey,
              onPressed: () {
                setState(() {
                  _currentIndex = 4;
                });
              },
            ),
          ],
        ),
      ),

      // Floating Action Button (centered)
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff172b87),
        onPressed: () {
          setState(() {
            _currentIndex = 2; // Navigating to the AddCar page
          });
        },
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),

      // Position of the floating action button (centered at the bottom)
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
