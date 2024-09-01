import 'package:flutter/material.dart';
import 'package:gamingstore/model/model.dart';
import 'package:gamingstore/widgets/card.dart';
import 'package:gamingstore/widgets/navbar.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ExplorScreen extends StatelessWidget {
  const ExplorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(fontSize: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                ),
              ),
              SizedBox(
                height: screenHeight,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: ItemModel.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return ZoomTapAnimation(
                      child: CardItem(
                          img: ItemModel[index].img,
                          nama: ItemModel[index].nama,
                          harga: ItemModel[index].harga,
                          rating: ItemModel[index].rating),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
