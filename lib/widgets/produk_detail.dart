import 'package:flutter/material.dart';
import 'package:gamingstore/model/model.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Product product = Get.arguments;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: screenHeight * 0.4,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(product.img), fit: BoxFit.fill)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).popAndPushNamed('/home');
                        },
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.share),
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Gap(1),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.020,
                      vertical: screenHeight * 0.010),
                  height: screenHeight * 0.55,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(spreadRadius: 1, color: Colors.white)
                      ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      Container(
                          width: screenWidth,
                          height: screenHeight * 0.43,
                          color: Colors.grey,
                          child: ListView.builder(
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.nama,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Gap(10),
                                  Text(product.brand),
                                  Gap(10),
                                  Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.red),
                                      Icon(Icons.star, color: Colors.red),
                                      Icon(Icons.star, color: Colors.red),
                                      Icon(Icons.star, color: Colors.red),
                                      Icon(Icons.star_border),
                                      Gap(5),
                                      Text(
                                        product.rating,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Gap(5),
                                      Text("(1482 Review)"),
                                    ],
                                  ),
                                  Gap(20),
                                  Text(
                                    product.harga,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Gap(20),
                                  Text(
                                    "deskripsi",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Gap(10),
                                  SingleChildScrollView(
                                    child: Text(
                                      product.deskripsi,
                                    ),
                                  ),
                                ],
                              );
                            },
                          )),
                      Gap(15),
                      Container(
                        height: screenHeight * 0.080,
                        width: screenWidth,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                // Container(
                //   height: screenHeight * 0.080,
                //   width: screenWidth,
                //   decoration: BoxDecoration(
                //       color: Colors.green,
                //       borderRadius: BorderRadius.circular(20)),
                //   child: Row(
                //     children: [],
                //   ),
                // )
              ],
            ),
          ),
        ));
  }
}
