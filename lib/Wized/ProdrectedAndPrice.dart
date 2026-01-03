import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Style/Colors.dart';
import 'GridviwAndListviw.dart';




class Prodrectedandprice extends StatelessWidget {
  final int itemcount;
  final  VoidCallback addbuttonOntabe;
  String ImagePath;


   Prodrectedandprice({super.key, required this.itemcount,required this.ImagePath, required this.addbuttonOntabe,});

  @override
  Widget build(BuildContext context) {
    double SceenHide = MediaQuery.of(context).size.height;
    double SceenWith = MediaQuery.of(context).size.height;
    return
      Container(
        height: SceenHide/18*5,
        child: ListView.builder(

          scrollDirection: Axis.horizontal,
          itemCount: itemcount,
          itemBuilder: (BuildContext context, int index) {
            return Gridviwandlistviw(ImagePath: ImagePath, addbuttonOntabe: addbuttonOntabe,);

          },


        )
    );
  }
}
