import 'package:flutter/material.dart';
import 'package:nactar/Style/Colors.dart';
import 'package:nactar/Wized/Big_Button.dart';

import '../Wized/TextFormField.dart';
import '../Wized/signin_signup_top_ui.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final _fromkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height / 3;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Signin_signup_top_ui(context),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Loging ",
                    style: TextStyle(fontSize: 29, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Enter your emails and password ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Appcolors.smalltextcolor,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "  Email",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Appcolors.smalltextcolor,
                    ),
                  ),
                  CustomTextformfield(
                    key: _fromkey,
                    hinttext: "Email",
                    isPassword: false,
                    validator: (String? value) {
                      if (value!.isEmpty || value == null) {
                        return "email requert";
                      } else if (value.contains("@")) {
                        return "please invalid email";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  Text(
                    "  Password",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Appcolors.smalltextcolor,
                    ),
                  ),
                  CustomTextformfield(
                    hinttext: "password",
                    isPassword: true,
                    validator: (String? value) {
                      if (value!.isEmpty || value == null) {
                        return "password requerd";
                      }
                      if (value.length <= 6) {
                        return "minimum 6 latter use ";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "forgot password?  ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Appcolors.smalltextcolor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  BigButton(
                    context: context,
                    ontab: () {
                      if(_fromkey.currentState!.validate()){

                      }
                    },
                    ButtonColor: Appcolors.Primarycolros,
                    Buttontext: "Log In",
                  ),
                  SizedBox(height: 10),
                  BigButton(
                    buttonimage: Image.asset("assets/images/googleicon.png"),
                    context: context,
                    ontab: () {},
                    ButtonColor: Appcolors.googlebouttonColors,
                    Buttontext: "Continue with Google",
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account? ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Appcolors.smalltextcolor,
                        ),
                      ),
                      Text(
                        "Singup",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
