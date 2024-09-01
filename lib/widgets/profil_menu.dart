import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MenuProfile extends StatelessWidget {
  const MenuProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.070),
      height: screenHeight * 0.44,
      width: screenWidth,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                  height: screenHeight * 0.060,
                  width: screenWidth * 0.120,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.greenAccent,
                  )),
              Gap(40),
              Text(
                'Profil',
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
          Gap(20),
          Row(
            children: [
              Container(
                  height: screenHeight * 0.060,
                  width: screenWidth * 0.120,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.local_mall,
                    size: 30,
                    color: Colors.greenAccent,
                  )),
              Gap(40),
              Text(
                'Pesananku',
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
          Gap(20),
          Row(
            children: [
              Container(
                  height: screenHeight * 0.060,
                  width: screenWidth * 0.120,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.bookmark_add,
                    size: 30,
                    color: Colors.greenAccent,
                  )),
              Gap(40),
              Text(
                'Whislist',
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
          Gap(20),
          Row(
            children: [
              Container(
                  height: screenHeight * 0.060,
                  width: screenWidth * 0.120,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.settings,
                    size: 30,
                    color: Colors.greenAccent,
                  )),
              Gap(40),
              Text(
                'Pengaturan',
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
          Gap(20),
          Row(
            children: [
              Container(
                  height: screenHeight * 0.060,
                  width: screenWidth * 0.120,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.people,
                    size: 30,
                    color: Colors.greenAccent,
                  )),
              Gap(40),
              Text(
                'Tentang kami',
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
