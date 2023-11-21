// ignore: file_names
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ProfileScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Профиль", style: TextStyle(fontSize: 24, color: Colors.white)),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            width: 386,
            height: 110,
            margin: const EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 59, 59, 59),
              borderRadius: BorderRadius.circular(17),
            ),
            child: const Padding(
              padding: EdgeInsets.all(13),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.circle, color: Colors.white, size: 75),
                      SizedBox(width: 15),
                      Text(
                        'Привет, Амир!',
                        style: TextStyle(fontSize: 21, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}