import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';






class SmallProdradatedAndName extends StatelessWidget {
  final int itemcount;
  
  String ImagePath;
  String prodectedname;

  SmallProdradatedAndName({super.key, required this.itemcount,required this.ImagePath,required  this.prodectedname});

  @override
  Widget build(BuildContext context) {
    double SceenHide = MediaQuery.of(context).size.height;
    double SceenWith = MediaQuery.of(context).size.height;
    return  Container(
        height: SceenHide/50*5,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itemcount,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Container(
                height:220,
                width:SceenWith/15*5 ,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.amber[100]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 30,bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(height: SceenHide/35*5,
                        child: Image.asset(ImagePath),
                      ),
                      SizedBox(width: 10,),
                      Text(prodectedname,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),)
                    ],),
                ),
              ),
            );
          },
        )
    );

  }
}
