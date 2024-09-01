import 'package:flutter/material.dart';
import 'package:gamingstore/widgets/checkout_cart.dart';
import 'package:gamingstore/widgets/total.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeigth =
        MediaQuery.of(context).size.height; // ukuran tinggi 100%
    final screenWidth = MediaQuery.of(context).size.width; // ukuran lebar 100%
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.offAllNamed('/home');
            },
            icon: Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.white,
        title: Text(
          "Cart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: screenHeigth,
        width: screenWidth,
        color: Colors.white,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    height: screenHeigth * 0.65,
                    width: screenWidth,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          CheckOutCart(
                            nama: 'Mouse HyperX',
                            harga: '1.999.999',
                            img: 'assets/images/11.jpeg',
                            jumlah: '2',
                          ),
                          CheckOutCart(
                            nama: 'Headset Razer',
                            harga: '2.599.999',
                            img: 'assets/images/13.jpeg',
                            jumlah: '3',
                          ),
                          CheckOutCart(
                            nama: 'Keyboard Mech',
                            harga: '999.999',
                            img: 'assets/images/5.jpeg',
                            jumlah: '1',
                          ),
                          CheckOutCart(
                              nama: 'Imperion Mech',
                              harga: '399.999',
                              img: 'assets/images/32.jpeg',
                              jumlah: '9')
                        ],
                      ),
                    ),
                  ),
                  TotalBarang()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
