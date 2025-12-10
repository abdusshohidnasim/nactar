import 'package:flutter/material.dart';
import 'package:nactar/Style/Colors.dart';
import 'package:nactar/Wized/Big_Button.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Naiem.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              SizedBox(child: Image.asset("assets/images/Group.png")),
              Text(
                "Welcome to our store",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 48,
                  color: Colors.white,
                ),
              ),
              Text(
                "Ger your groceries in as fast as one hour",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Color(0xffFCFCFCB2),
                ),
              ),
              SizedBox(height: 10,),

              BigButton(
                context: context,
                ontab: () {
                  Navigator.pushNamed(context, "/login");
                },
                ButtonColor: Appcolors.Primarycolros,
                Buttontext: "Get Started",
              ),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
}
