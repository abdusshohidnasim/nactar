import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nactar/Cubit/SplaceScreen/ButtomNavigation_Cubit.dart';
import 'package:nactar/Cubit/SplaceScreen/ButtomNavigatorBar_State.dart';
import 'package:nactar/Pages/Account.dart';
import 'package:nactar/Pages/CardPage.dart';
import 'package:nactar/Pages/Explore.dart';
import 'package:nactar/Pages/Favourite.dart';
import 'package:nactar/Pages/Shop.dart';
import 'package:nactar/Style/Colors.dart';

class ButtomNavigatorBarpage extends StatelessWidget {
  ButtomNavigatorBarpage({super.key});

  List Pages = [Shop(), Explore(), CardPage(), Favourite(), Account()];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ButtomNavigatinCubit, ButtomnavigatorbarState>(
      builder: (context, State) => Scaffold(
        body: Pages[State.CureentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: State.CureentIndex,
          selectedItemColor: Appcolors.Primarycolros,
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (valu){
            context.read<ButtomNavigatinCubit>().Changepage(valu);
         },

          items: [
            BottomNavigationBarItem(
              icon: ImageIcon( AssetImage("assets/images/shop.png", ),),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage ("assets/images/Explore.png", )),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon( AssetImage("assets/images/card.png", )),
              label: "Card",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/favorite.png", )),
              label: "Favorit",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/user 1.png",)),
              label: "Account",
            ),
          ],
        ),
      ),
    );
  }
}
