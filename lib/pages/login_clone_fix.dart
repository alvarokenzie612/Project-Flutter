import 'package:flutter/material.dart';

import '../components/mytextfield.dart';
import '../components/mytextview.dart';
import '../components/mybutton.dart';

class LoginCloneFix extends StatelessWidget {
  LoginCloneFix({super.key});

  final TextEditingController txtEmail = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70),

              Center(
                child: Image.asset(
                  'assets/netflix_logo.png',
                  width: 250,
                  height: 100,
                ),
              ),

              const SizedBox(height: 50),

              const MyTextView(
                text: "Sign In",
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),

              const SizedBox(height: 25),

              MyTextfield(
                txtController: txtEmail,
                myHint: "Email or phone number",
                radius: 4,
              ),

              const SizedBox(height: 15),

              MyTextfield(
                txtController: txtPassword,
                isPassword: true,
                myHint: "Password",
                radius: 4,
              ),

              const SizedBox(height: 25),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: MyButton(
                  label: "Sign In",
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),

              const SizedBox(height: 20),

              const Center(
                child: MyTextView(
                  text: "Forgot password?",
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
