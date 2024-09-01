import 'package:flutter/material.dart';
import 'package:gamingstore/model/example.dart';
import 'package:gamingstore/widgets/profil_menu.dart';
import 'package:gap/gap.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height; // ukuran tinggi 100%
    final screenWidth = MediaQuery.of(context).size.width; // ukuran lebar 100%
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              // gambar profil
              Container(
                height: screenHeight * 0.20,
                width: screenWidth * 0.40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/profil.png'),
                      fit: BoxFit.cover),
                ),
              ),
              Gap(20),
              Text(
                "Iqbal Ramadhan Purba",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Iqbalrama45@gmail.com",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
              Gap(20),
              Container(
                height: screenHeight * 0.060,
                width: screenWidth * 0.40,
                // color: Colors.amber,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: ElevatedButton(
                  onPressed: () {
                    Models.connectAPI("reza", "frontend").then(
                      (value) {
                        print(value.name);
                      },
                    );
                  },
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(fontSize: 17),
                  ),
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.lime)),
                ),
              ),
              Gap(20),
              MenuProfile()
            ],
          ),
        ),
      ),
    );
  }
}
