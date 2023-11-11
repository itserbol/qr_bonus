// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_qr/sms-screen.dart';


class PhoneAuthScreen extends StatefulWidget {
  const PhoneAuthScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PhoneAuthScreenState createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController phoneNumberController = TextEditingController();

  String fixedPrefix = '+996';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessageReceivedScreen(),
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
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Укажите ваш номер телефона',
                  style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.w400, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: phoneNumberController,
                  keyboardType: TextInputType.phone, // Updated keyboardType
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(9),
                    FilteringTextInputFormatter.digitsOnly, // Allow only numeric input
                  ],
                  decoration: InputDecoration(
                    prefixText: fixedPrefix,
                    counterText: '',
                    hintStyle: const TextStyle(color: Colors.white),
                    border: const OutlineInputBorder(),
                    fillColor: const Color.fromARGB(255, 40, 40, 40),
                    filled: true,
                  ),
                  style: const TextStyle(fontSize: 16.0, color: Colors.white),
                  cursorColor: Colors.white,
                  validator: (value) {
                    if (value == null || value.length != 9) {
                      return 'Введите правильный номер';
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
                          builder: (context) => MessageReceivedScreen(),
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