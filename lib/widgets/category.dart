import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({super.key});
  Color primary = Colors.greenAccent;
  Color second = Colors.lime;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          children: [
            Container(
              width: 130,
              height: 50,
              decoration: BoxDecoration(
                color: primary,
                borderRadius: const BorderRadius.all(Radius.circular(50)),
              ),
              child: const Center(
                child: Text(
                  "Headset",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 130,
              height: 50,
              decoration: BoxDecoration(
                color: primary,
                borderRadius: const BorderRadius.all(Radius.circular(50)),
              ),
              child: const Center(
                child: Text(
                  "Keyboard",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 130,
              height: 50,
              decoration: BoxDecoration(
                color: primary,
                borderRadius: const BorderRadius.all(Radius.circular(50)),
              ),
              child: const Center(
                child: Text(
                  "Mouse",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
