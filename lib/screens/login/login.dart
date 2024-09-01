import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gamingstore/controller/auth_controller.dart';
import 'package:gamingstore/routes/name_routes.dart';
import 'package:gamingstore/routes/routes.dart';
import 'package:gamingstore/screens/daftar/daftar.dart';
import 'package:get/get.dart';
import '../../widgets/emailfield.dart';
import '../../widgets/passwordfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
  // GlobalKey<FormState> _formKey = GlobalKey<FormState>();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  final FirebaseAuth auth = FirebaseAuth.instance;

  double screenHeight = 0;
  double screenWidth = 0;

  Color primary = Colors.greenAccent;
  Color secondary = Colors.white;

  final authC = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // UI Layout as before...
            Container(
              height: screenHeight / 3.9,
              width: screenWidth,
              decoration: BoxDecoration(
                  color: primary,
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(70),
                      bottomLeft: Radius.circular(70))),
              child: Center(
                  child: Container(
                height: screenHeight / 6,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/google.png'),
                        fit: BoxFit.contain)),
              )),
            ),
            Container(
              margin: EdgeInsets.only(top: screenHeight / 30),
              child: const Text(
                "Welcome back",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: screenWidth / 18),
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
                  PasswordField(controller: passController),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(fontSize: 13),
                          ),
                          TextButton(
                              onPressed: () => Get.toNamed(NameRoutes.Register),
                              child: Text(
                                "Sign up",
                                style: TextStyle(fontSize: 13),
                              )),
                        ],
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget Password",
                            style: TextStyle(fontSize: 13),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    width: screenHeight,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        color: primary),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.greenAccent)),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/home');
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(fontSize: 20, color: secondary),
                      ),
                    ),
                    // ) ElevatedButton(
                    //   style: ButtonStyle(
                    //       backgroundColor:
                    //           WidgetStatePropertyAll(Colors.greenAccent)),
                    //   onPressed: () => authC.login,
                    //   child: Text(
                    //     "LOGIN",
                    //     style: TextStyle(fontSize: 20, color: secondary),
                    //   ),
                    // ),
                  ),
                  // UI for Google and Facebook buttons (you need to implement the sign-in logic for these separately)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
