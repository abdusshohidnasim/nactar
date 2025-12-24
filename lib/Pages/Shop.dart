import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nactar/Cubit/SplaceScreen/ButtomNavigatorBar_State.dart';
import 'package:nactar/Cubit/SplaceScreen/Slider.dart';
import 'package:nactar/Style/Colors.dart';
import 'package:nactar/Wized/ProdrectedAndPrice.dart';

import '../Wized/Sliderimage.dart';
import '../Wized/SmallPradectedAndName.dart';
import '../Wized/TextFormField.dart';

class Shop extends StatelessWidget {
  Shop({super.key});
  final List<String> images = [
    "assets/images/banner (1).png",
    "assets/images/banar2.jpeg",
    "assets/images/banar3.webp",
  ];

  @override
  Widget build(BuildContext context) {
    double SceenHide = MediaQuery.of(context).size.height;
    double SceenWith = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, bottom: 20),
          child: Column(
            children: [
              Center(child: Image.asset("assets/images/Group (1).png")),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  const Icon(Icons.location_on),
                  Expanded(child: Text((ModalRoute.of(context)!.settings.arguments).toString())),
                ],
              ),
              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: CustomTextformfield(
                  prefix: Icon(Icons.search),
                  hinttext: 'Search Store',
                  isPassword: false,
                  validator: (String? value) {},
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Sliderimage(),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Text(
                      "Exclusive Offer",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Text("Sell all ", style: TextStyle(color: Colors.green)),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Prodrectedandprice(
                itemcount: 10,
                ImagePath: 'assets/images/apple.png',
                addbuttonOntabe: () {},
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Text(
                      "Best Selling",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Text("Sell all ", style: TextStyle(color: Colors.green)),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Prodrectedandprice(
                itemcount: 10,
                ImagePath: 'assets/images/banana.png',
                addbuttonOntabe: () {},
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Text(
                      "Groceries",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Text("Sell all ", style: TextStyle(color: Colors.green)),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SmallProdradatedAndName(
                itemcount: 10,
                ImagePath: 'assets/images/egg.png',
                prodectedname: 'Egg',
              ),
              SizedBox(height: 10),
              Prodrectedandprice(
                itemcount: 10,
                ImagePath: "assets/images/rice.png",
                addbuttonOntabe: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
