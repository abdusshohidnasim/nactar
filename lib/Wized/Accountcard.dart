import 'package:flutter/material.dart';

class Accountcard extends StatelessWidget {
  String porertiname;
  Icon Iconname;
  Accountcard({super.key, required this.porertiname, required this.Iconname});

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          height: 70,
          child: Row(
            children: [
              Iconname,
              SizedBox(width: 20),
              Text(
                porertiname,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios),// icon
            ],
          ),
        ),
      ),
    );
  }
}
//todo apps
