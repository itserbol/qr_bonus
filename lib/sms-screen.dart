// ignore: file_names
import 'package:flutter/material.dart';
import 'package:qr_bonus/navigator.dart';


class MessageReceivedScreen extends StatelessWidget {
  final List<TextEditingController> codeControllers = List.generate(4, (index) => TextEditingController());
  final List<FocusNode> focusNodes = List.generate(4, (index) => FocusNode());

  MessageReceivedScreen({Key? key}) : super(key: key);

  void dispose() {
    for (var controller in codeControllers) {
      controller.dispose();
    }
    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }
  }

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
                  builder: (context) => const CustomNavigator(),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Введите код из SMS',
              style: TextStyle(fontSize: 25.0, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  return Container(
                    width: 75, 
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextFormField(
                      controller: codeControllers[index],
                      focusNode: focusNodes[index],
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1, 
                      obscureText: true,
                      obscuringCharacter: '•',
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(),
                        fillColor: Color.fromARGB(255, 40, 40, 40),
                        filled: true,
                      ),
                      style: const TextStyle(fontSize: 16.0, color: Colors.white),
                      cursorColor: Colors.white,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Пожалуйста, введите SMS-код';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        if (value.length == 1) {
                          if (index < 3) {
                            FocusScope.of(context).requestFocus(focusNodes[index + 1]);
                          }
                        } else if (value.isEmpty) {
                          if (index > 0) {
                            FocusScope.of(context).requestFocus(focusNodes[index - 1]);
                          }
                        }
                      },
                    ),
                  );
                }),
              ),
            ),

            Container(
              width: double.infinity,
              height: 80.0,
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  String smsCode = codeControllers.map((controller) => controller.text).join();

                  if (smsCode.length == 4) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CustomNavigator(),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Введите SMS-код'),
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
    );
  }
}