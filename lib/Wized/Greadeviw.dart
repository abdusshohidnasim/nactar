import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Style/Colors.dart';
import 'GridviwAndListviw.dart';
import 'NonbuttonDesigin.dart';

class Greadeviw extends StatelessWidget {
  String ImagePath;
  VoidCallback addbuttonOntabe;
  bool isbutton;

  Greadeviw({
    super.key,
    required this.ImagePath,
    required this.addbuttonOntabe,
    required this.isbutton,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.70,
        ),
        itemBuilder: (BuildContext context, int index) {
          double SceenHide = MediaQuery.of(context).size.height;
          double SceenWith = MediaQuery.of(context).size.height;
          return isbutton
              ? Nonbuttondesigin(ImagePath: ImagePath)
              : Gridviwandlistviw(
                  ImagePath: ImagePath,
                  addbuttonOntabe: addbuttonOntabe,
                );
        },
      ),
    );
  }
}
