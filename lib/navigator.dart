import 'package:flutter/material.dart';
import 'package:flutter_qr/QR-screen.dart';
import 'package:flutter_qr/home.dart';
import 'package:flutter_qr/orders-screen.dart';
import 'package:flutter_qr/profile-screen.dart';
import 'package:flutter_qr/restaurants-screen.dart';

class CustomNavigator extends StatefulWidget {
  const CustomNavigator({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomNavigatorState createState() => _CustomNavigatorState();
}

class _CustomNavigatorState extends State<CustomNavigator> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          HomePage(),
          RestaurantsScreen(),
          QRCodeScreen(),
          OrderScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 35, 35, 35),
        selectedItemColor: const Color.fromARGB(255, 131,76,255), 
        unselectedItemColor: Colors.grey, 
        selectedFontSize: 12,
        unselectedFontSize: 12,
        currentIndex: _currentIndex,
        iconSize: 25,
        elevation: 5,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Рестораны',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'QR',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Заказы',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
