import 'package:flutter/cupertino.dart';

Container Signin_signup_top_ui(BuildContext context) {
  double hight = MediaQuery.of(context).size.height / 3;
  return Container(
    height: hight,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/gajorbackgrount.png"),
        fit: BoxFit.fill,
      ),
    ),
    child: Center(child: Image.asset("assets/images/gajor.png", height: 70)),
  );
}
