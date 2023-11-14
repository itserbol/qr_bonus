import 'package:flutter/material.dart';
import 'package:flutter_qr/menu.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              color: const Color.fromARGB(255, 166, 255, 0),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(10),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star_border, color: Colors.black, size: 24),
                SizedBox(width: 10),
                Text(
                  '1000',
                  style: TextStyle(fontSize: 18, color: Colors.black),
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
              height: 144,
              margin: const EdgeInsets.only(top: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                border: Border.all(
                  width: 2,
                  color: const Color.fromARGB(255, 166, 255, 0),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Как накопить',
                          style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                        Icon(Icons.arrow_right, size: 20, color: Colors.white),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.star_border, color: Colors.white, size: 35),
                        Text(
                          '1 000 бонусов',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        Text(
                          'Кэшбек 3% с каждого заказа',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Container(
              width: 386,
              height: 85,
              margin: const EdgeInsets.only(top: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 40, 40, 40),
              ),
              child: Stack(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 13, top: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Бронируйте ваш стол в пару кликов',
                              style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 13, top: 13),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.circle, color: Colors.white),
                            Icon(Icons.circle, color: Colors.white),
                            Icon(Icons.circle, color: Colors.white),
                            Icon(Icons.circle, color: Colors.white),
                            Icon(Icons.circle, color: Colors.white),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 30,
                    right: 10,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MenuScreen(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255,131,76,255)),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
                      ),
                      child: const Text('К меню', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 13)),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 40, left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Предложения на доставку',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 23),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25, left: 10),
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 300,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                        child: const Center(
                          child: Text(
                            'Важная инфа!',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                        child: const Center(
                          child: Text(
                            'Важная инфа!',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                        child: const Center(
                          child: Text(
                            'Важная инфа!',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 40, left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Доставка из ресторанов Kaynar',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 23),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25, left: 10),
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 300,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                        child: const Center(
                          child: Text(
                            'Важная инфа!',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                        child: const Center(
                          child: Text(
                            'Важная инфа!',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                        child: const Center(
                          child: Text(
                            'Важная инфа!',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}