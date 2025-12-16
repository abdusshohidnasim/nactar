import 'package:flutter/material.dart';
import 'package:nactar/Wized/Big_Button.dart';

import '../Style/Colors.dart';
import '../Wized/TextFormField.dart';
import '../Wized/signin_signup_top_ui.dart';

class Signup extends StatelessWidget {
  Signup({super.key});
  final _fronkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Signin_signup_top_ui(context: context),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Form(
                key: _fronkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign up  ",
                      style: TextStyle(
                        fontSize: 29,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Enter your credentials to continue ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Appcolors.smalltextcolor,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "  Username",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Appcolors.smalltextcolor,
                      ),
                    ),
                    CustomTextformfield(
                      hinttext: "Username",
                      isPassword: false,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email is required";
                        }
                        String pattern =
                            r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
                        RegExp regex = RegExp(pattern);
                        if (!regex.hasMatch(value)) {
                          return "Enter a valid email";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    Text(
                      "  Email",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Appcolors.smalltextcolor,
                      ),
                    ),
                    CustomTextformfield(
                      hinttext: "Email",
                      isPassword: false,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email is required";
                        }
                        String pattern =
                            r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
                        RegExp regex = RegExp(pattern);
                        if (!regex.hasMatch(value)) {
                          return "Enter a valid email";
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
                        if (value == null || value!.isEmpty) {
                          return "password requerd";
                        }
                        if (value.length <= 6) {
                          return "minimum 6 latter use ";
                        }
                        return null;
                      },
                    ),

                    Text(
                      " By continuing you agree to our Terms of Serviceand Privacy Policy.",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Appcolors.smalltextcolor,
                      ),
                    ),

                    SizedBox(height: 10),
                    BigButton(
                      context: context,
                      ontab: () {},
                      ButtonColor: Appcolors.Primarycolros,
                      Buttontext: "Sign up ",
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " Already have an account? ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Appcolors.smalltextcolor,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, "/login");
                          },
                          child: Text(
                            "Sign in ",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
