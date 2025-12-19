import 'package:flutter/material.dart';

import '../Style/Colors.dart';
import '../Wized/Greadeviw.dart';
import '../Wized/TextFormField.dart';

class Explore extends StatelessWidget {
  Explore({super.key});

  @override
  Widget build(BuildContext context) {
    double SceenHide = MediaQuery.of(context).size.height;
    double SceenWith = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Column(
          children: [
            Center(
              child: Text(
                "Find Products",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: CustomTextformfield(
                prefix: Icon(Icons.search),
                hinttext: 'Search Store',
                isPassword: false,
                validator: (String? value) {},
              ),
            ),
            Greadeviw(ImagePath: 'assets/images/egg.png', isbutton: true, addbuttonOntabe: () {  },)
          ],
        ),
      ),
    );
  }
}
