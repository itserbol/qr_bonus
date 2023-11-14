// ignore: file_names
import 'package:flutter/material.dart';

class RestaurantsScreen extends StatelessWidget {
  const RestaurantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Улица Медерова, 116/4',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 59, 59, 59),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(10),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star_border, color: Colors.white, size: 24),
                SizedBox(width: 10),
                Text(
                  '1000',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  hintText: 'Компании рядом',
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Color.fromARGB(255, 59, 59, 59),
                  filled: true,
                  prefixIcon: Icon(Icons.search, color: Colors.white, size: 35),
                ),
                style: const TextStyle(fontSize: 16.0, color: Colors.white),
                cursorColor: Colors.white,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              width: 386,
              height: 100,
              margin: const EdgeInsets.only(top: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: const Color.fromARGB(255, 135, 135, 135),
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'KAYNAR',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),     
                      ]
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              width: 386,
              height: 100,
              margin: const EdgeInsets.only(top: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: const Color.fromARGB(255, 135, 135, 135),
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ZERNO',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),     
                      ]
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              width: 386,
              height: 100,
              margin: const EdgeInsets.only(top: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: const Color.fromARGB(255, 135, 135, 135),
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Барашек',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),     
                      ]
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              width: 386,
              height: 100,
              margin: const EdgeInsets.only(top: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: const Color.fromARGB(255, 135, 135, 135),
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'FRUNZE',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),     
                      ]
                    ),
                  ],
                ),
              ),
            ),
          ],
      )
    ),
    );
  }
}