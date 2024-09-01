import 'package:flutter/material.dart';

class BannerDiscount extends StatelessWidget {
  const BannerDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text.rich(
        TextSpan(
          text: "Summer Surprise\n",
          style: TextStyle(color: Colors.white, fontSize: 20),
          children: [
            TextSpan(
                text: "Cashback 40%",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
