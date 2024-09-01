import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gamingstore/controller/auth_controller.dart';
import 'package:gamingstore/widgets/emailfield.dart';
import 'package:gamingstore/widgets/passwordfield.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  double screenHeight = 0;
  double screenWidth = 0;

  Color primary = Colors.greenAccent;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    // final authC = Get.put(AuthController());
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            height: screenHeight / 3.9,
            width: screenWidth,
            decoration: BoxDecoration(
              color: primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(70),
                bottomRight: Radius.circular(70),
              ),
            ),
            child: Center(
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: screenWidth / 5,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: screenHeight / 30),
            child: Text(
              "Register",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: screenWidth / 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: const Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                EmailField(controller: emailController),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: const Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                PasswordField(controller: passwordController),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: screenWidth,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: primary,
                      borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(70),
                          right: Radius.circular(70))),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              // Login With google
              // Login With facebook
            ],
          )
        ],
      ),
    );
  }
}
