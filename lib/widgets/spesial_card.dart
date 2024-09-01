import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            height: 140,
            width: 280,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/1.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Gap(20),
          SizedBox(
            height: 140,
            width: 280,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/2.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Gap(20),
          SizedBox(
            height: 140,
            width: 280,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/3.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
