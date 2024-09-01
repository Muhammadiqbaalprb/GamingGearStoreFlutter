import 'package:flutter/material.dart';

class DemoRec extends StatelessWidget {
  const DemoRec(
      {super.key, required this.nama, required this.harga, required this.img});

  final String nama;
  final String harga;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 230,
        width: 230,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 150,
              width: 230,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      image: AssetImage("assets/images/$img"),
                      fit: BoxFit.cover)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  nama,
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w500),
                ),
                const Icon(
                  Icons.favorite_border,
                  // color: Colors.red,
                  size: 18,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                "Rp. $harga",
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
