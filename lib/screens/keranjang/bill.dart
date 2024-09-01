import 'package:flutter/material.dart';
import 'package:gamingstore/screens/beranda/beranda.dart';
import 'package:gamingstore/screens/keranjang/keranjang.dart';
import 'package:gap/gap.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: screenWidth * 0.1),
          height: screenHeight,
          width: screenWidth,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return CartScreen();
                        },
                      ));
                    },
                    icon: Icon(Icons.cancel_outlined),
                    iconSize: 30,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.ios_share),
                    iconSize: 30,
                  )
                ],
              ),
              Center(
                  child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                    boxShadow: [
                      BoxShadow(spreadRadius: 15, color: Colors.green.shade50)
                    ]),
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                  size: 40,
                ),
              )),
              Gap(25),
              Text(
                "Pembayaran Sukses!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Gap(25),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05,
                    vertical: screenHeight * 0.020),
                height: screenHeight * 0.5,
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Jumlah",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "IDR. 1.000.000",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Gap(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Status Pembayaran",
                          style: TextStyle(fontSize: 16),
                        ),
                        Container(
                          width: 75,
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.green.shade100),
                          child: Center(
                            child: Text(
                              "Sukses",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                    Divider(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nomor Referensi",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "0003204213",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Gap(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nama Toko",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "REXUS",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Gap(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Metode Transaksi",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Bank Transfer",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Gap(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Waktu Transaksi",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Agu, 3 2024, 06:29:30",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Gap(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Pengirim",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Iqbal Ramadhan Purba",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Gap(30),
              InkWell(
                onTap: () {},
                child: Container(
                    height: 50,
                    width: screenWidth * 0.9,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(spreadRadius: 1, color: Colors.greenAccent)
                        ]),
                    child: Center(
                        child: Text(
                      "Simpan Bukti Transaksi",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ))),
              ),
              Gap(10),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen();
                    },
                  ));
                },
                child: Container(
                    height: 50,
                    width: screenWidth * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                        child: Text(
                      "Berhasil",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
