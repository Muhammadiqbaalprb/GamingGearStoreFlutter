import 'package:flutter/material.dart';
import 'package:gamingstore/screens/beranda/beranda.dart';
import 'package:gamingstore/screens/explor/explor.dart';
import 'package:gamingstore/screens/keranjang/keranjang.dart';
import 'package:gamingstore/screens/profil/profil.dart';
import 'package:get/get.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  final primary = Colors.greenAccent;
  final secondary = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
      height: 70,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(blurRadius: 1)],
        color: primary,
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(35),
          right: Radius.circular(35),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              Get.to(HomeScreen());
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) {
              //     return HomeScreen();
              //   },
              // ));
            },
            icon: Icon(
              semanticLabel: "Beranda",
              Icons.home,
              size: 30,
              color: secondary,
            ),
          ),
          IconButton(
            onPressed: () {
              Get.to(ExplorScreen());
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) {
              //     return ExplorScreen();
              //   },
              // ));
            },
            icon: Icon(
              semanticLabel: "Explorer",
              Icons.explore,
              size: 30,
              color: secondary,
            ),
          ),
          IconButton(
            onPressed: () {
              Get.to(CartScreen());
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) {
              //     return CartScreen();
              //   },
              // ));
            },
            icon: Icon(
              semanticLabel: "Keranjang",
              Icons.shopping_cart,
              size: 30,
              color: secondary,
            ),
          ),
          IconButton(
            onPressed: () {
              Get.to(ProfilScreen());
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) {
              //     return ProfilScreen();
              //   },
              // ));
            },
            icon: Icon(
              semanticLabel: "Profil",
              Icons.person,
              size: 30,
              color: secondary,
            ),
          ),
        ],
      ),
    );
  }
}
