import 'package:flutter/material.dart';

import '../Style/Colors.dart';

class Nonbuttondesigin extends StatelessWidget {
  String ImagePath;
  Nonbuttondesigin({super.key, required this.ImagePath});

  @override
  Widget build(BuildContext context) {
    double SceenHide = MediaQuery.of(context).size.height;
    double SceenWith = MediaQuery.of(context).size.height;
    return Card(
      child: Container(
        height: 220,
        width: SceenWith / 26 * 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.orange[100],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: SceenHide / 35 * 5,

                child: Image.asset(ImagePath),
              ),
              SizedBox(height: 10),
              Text(
                "Frash Fruits & Vegetable",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
