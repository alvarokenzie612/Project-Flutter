import 'package:flutter/material.dart';
import 'package:testflutter/components/mytextfield.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Login Page")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: MyTextField(
              // myHint: "Input Username",
              txtController: txtUsername,
              //  radius: 10,
              textColor: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: MyTextField(
              // myHint: "Input Password",
              txtController: TextEditingController(),
              //  radius: 10,
              textColor: Colors.white,
              isPassword: true,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {},
                child: Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
