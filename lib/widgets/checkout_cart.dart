import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class CheckOutCart extends StatelessWidget {
  const CheckOutCart(
      {super.key,
      required this.nama,
      required this.harga,
      required this.img,
      required this.jumlah});

  final String nama;
  final String harga;
  final String img;
  final String jumlah;

  @override
  Widget build(BuildContext context) {
    var count = 0.obs;
    void add() {
      count++;
    }

    void remove() {
      count--;
    }

    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 1)],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.cover)),
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        nama,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete),
                        color: Colors.red,
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () => remove(),
                        icon: Icon(
                          Icons.remove_circle_outline,
                        ),
                        color: Colors.grey,
                        iconSize: 30,
                      ),
                      Obx(
                        () => Text(
                          "$count",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.normal),
                        ),
                      ),
                      IconButton(
                        onPressed: () => add(),
                        icon: Icon(Icons.add_circle_outlined),
                        iconSize: 30,
                      )
                    ],
                  ),
                  Gap(10),
                  Text(
                    "Rp. $harga",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
