// import 'package:gamingstore/bindings/Login_binding.dart';
// import 'package:gamingstore/bindings/home_binding.dart';
// import 'package:gamingstore/bindings/register_binding.dart';
import 'package:gamingstore/screens/beranda/beranda.dart';
import 'package:gamingstore/screens/daftar/daftar.dart';
import 'package:gamingstore/screens/explor/explor.dart';
import 'package:gamingstore/screens/keranjang/bill.dart';
import 'package:gamingstore/screens/keranjang/keranjang.dart';
import 'package:gamingstore/screens/login/login.dart';
import 'package:gamingstore/screens/profil/profil.dart';
import 'package:gamingstore/widgets/produk_detail.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: '/home',
      page: () => HomeScreen(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: '/login',
      page: () => LoginScreen(),
      // binding: LoginBinding(),
    ),
    GetPage(
      name: '/register',
      page: () => RegisterScreen(),
      // binding: RegisterBinding()
    ),
    GetPage(
      name: '/explor',
      page: () => ExplorScreen(),
    ),
    GetPage(
      name: '/detail',
      page: () => ProductDetail(),
    ),
    GetPage(
      name: '/profil',
      page: () => ProfilScreen(),
    ),
    GetPage(
      name: '/pay',
      page: () => Payment(),
    ),
    GetPage(
      name: '/Keranjang',
      page: () => CartScreen(),
    ),
  ];
}
