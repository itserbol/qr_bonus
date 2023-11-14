import 'package:flutter/material.dart';
import 'package:flutter_qr/QR-screen.dart';
import 'package:flutter_qr/home.dart';
import 'package:flutter_qr/phone-screen.dart';
import 'package:flutter_qr/profile-screen.dart';
import 'package:flutter_qr/restaurants-screen.dart';
import 'package:flutter_qr/sms-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => const NameAuthScreen());
          case '/number-screen':
            return MaterialPageRoute(builder: (context) => const PhoneAuthScreen());
          case '/massage-screen':
            return MaterialPageRoute(builder: (context) => MessageReceivedScreen());
          case '/home-screen':
            return MaterialPageRoute(builder: (context) => const HomePage());
          case '/menu-screen':
            return MaterialPageRoute(builder: (context) => const HomePage());
          case '/QR-screen':
            return MaterialPageRoute(builder: (context) => const QRCodeScreen());
          case '/restaurants-screen':
            return MaterialPageRoute(builder: (context) => const RestaurantsScreen());
          case '/order-screen':
            return MaterialPageRoute(builder: (context) => const HomePage());
          case '/profile-screen':
            return MaterialPageRoute(builder: (context) => const ProfileScreen());
        }
        return null;
      },
      theme: ThemeData(
        fontFamily: "Montserrat",
        appBarTheme: 
        const AppBarTheme(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),),
        scaffoldBackgroundColor: Colors.black,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 30, 30, 30),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0), 
            ),
            textStyle: const TextStyle(
              fontSize: 15.0, 
            ),
          ),
        ),
      ),
    );
  }
}

class NameAuthScreen extends StatefulWidget {
  const NameAuthScreen({Key? key});

  @override
  // ignore: library_private_types_in_public_api
  _PhoneAuthScreenState createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<NameAuthScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController smsCodeController = TextEditingController();
  String userName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PhoneAuthScreen(),
                ),
              );
            },
            child: const Text(
              'Пропустить',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(25.0, 20.0, 0.0, 0.0),
                child: Text(
                  'Как вас зовут?',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w400, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 10),
                child: Text(
                  'Дайте нам знать, как к вам лучше обращаться',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: phoneNumberController,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    hintText: 'Введите ваше имя',
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                    fillColor: Color.fromARGB(255, 40, 40, 40),
                    filled: true,
                  ),
                  style: const TextStyle(fontSize: 16.0, color: Colors.white),
                  cursorColor: Colors.white,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Пожалуйста, введите имя';
                    } else if (containsNumbers(value)) {
                      return 'Имя должно содержать только';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: 80.0,
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PhoneAuthScreen(),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: const Text('Продолжить'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
bool containsNumbers(String value) {
  return RegExp(r'[0-9]').hasMatch(value);
}