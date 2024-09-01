import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gamingstore/controller/auth_controller.dart';
import 'package:gamingstore/routes/name_routes.dart';
import 'package:gamingstore/routes/routes.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final authC = Get.put(AuthController(), permanent: true);
    return StreamBuilder<User?>(
      stream: authC.streamAuthStatus,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          print(snapshot.data);
        }
        print(snapshot);
        return GetMaterialApp(
          title: 'Gaming Store App',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          getPages: AppRoutes.pages,
          initialRoute:
              snapshot.data != null && snapshot.data!.emailVerified == true
                  ? NameRoutes.Home
                  : NameRoutes.Login,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
