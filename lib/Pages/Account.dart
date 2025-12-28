import 'package:flutter/material.dart';
import 'package:nactar/Style/Colors.dart';
import 'package:nactar/Wized/Accountcard.dart';
import 'package:nactar/Wized/Big_Button.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    double SceenHide = MediaQuery.of(context).size.height;
    double SceenWith = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Container(
                  height: SceenHide / 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: AssetImage("assets/images/Naiem.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Abdus Shohid Nasim",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "mdabdusshohidnasim@gmail.com",
                              maxLines: 3,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Accountcard(
                porertiname: "Orders",
                Iconname: Icon(Icons.shopping_bag_outlined, size: 30),
              ),
              Accountcard(
                porertiname: "My Details",
                Iconname: Icon(Icons.account_box_sharp, size: 30),
              ),
              Accountcard(
                porertiname: "Delivery Address",
                Iconname: Icon(Icons.location_on, size: 30),
              ),
              Accountcard(
                porertiname: "Payment Methods",
                Iconname: Icon(Icons.payment, size: 30),
              ),
              Accountcard(
                porertiname: "Promo Cord",
                Iconname: Icon(Icons.sell, size: 30),
              ),
              Accountcard(
                porertiname: "Notifecations",
                Iconname: Icon(Icons.notifications, size: 30),
              ),
              Accountcard(
                porertiname: "Help",
                Iconname: Icon(Icons.help, size: 30),
              ),
              Accountcard(
                porertiname: "About",
                Iconname: Icon(Icons.info, size: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: BigButton(
                  context: context,
                  ontab: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      "/login",
                      (rout) => false,
                    );
                  },
                  ButtonColor: Appcolors.Primarycolros,
                  Buttontext: "Log out",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
