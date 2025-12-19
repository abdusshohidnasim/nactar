import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' ;

import '../Style/Colors.dart';

class Gridviwandlistviw extends StatelessWidget {
  String ImagePath;
  VoidCallback addbuttonOntabe;
   Gridviwandlistviw({super.key,required this.ImagePath,required this.addbuttonOntabe});

  @override
  Widget build(BuildContext context) {
    double SceenHide = MediaQuery.of(context).size.height;
    double SceenWith = MediaQuery.of(context).size.height;
    return
      Card(
      child: Container(
        height:220,
        width:SceenWith/26*5 ,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: SceenHide/35*5,
                child: Image.asset(ImagePath),
              ),
              Text("Exclusive Offer",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
              SizedBox(height: 5,),
              Text("1 kg , Priceg",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Appcolors.smalltextcolor),),
              Spacer(),
              Row(children: [
                Text("\$ 4.54",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                Spacer(),
                InkWell(
                    onTap:addbuttonOntabe,
                    child: Image.asset("assets/images/button.png",height: 40,))
              ],)
            ],),
        ),
      ),
    );

  }
}
