import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nactar/Cubit/SplaceScreen/Slider.dart';

import '../Cubit/SplaceScreen/ButtomNavigatorBar_State.dart';

class Sliderimage extends StatelessWidget {
   Sliderimage({super.key});
   final List<String> images = [
     "assets/images/banner (1).png",
     "assets/images/banar2.jpeg",
     "assets/images/banar3.webp",
   ];


  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>SliderCubit(images.length),
        child: BlocBuilder<SliderCubit, ButtomnavigatorbarState>(builder:(context, State){
          return Column(
            children: [
              AnimatedSwitcher(
                duration: Duration(seconds: 2),
                child: Container(
                  height: 100,

                  decoration: BoxDecoration(

                    image: DecorationImage(
                      image: AssetImage(images[State.CureentIndex]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,

                    children: List.generate(images.length, (index) {
                      bool isActive = index == State.CureentIndex;
                      return AnimatedContainer(
                        duration: Duration(seconds: 3),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        height: isActive?10:7,
                        width: isActive?30:7,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: isActive?Colors.blueGrey:Colors.red
                        ),
                      );
                    },

                    ),
                  ),


                  // child: Image.asset(
                  //   images[State.CureentIndex],
                  //   fit: BoxFit.cover,
                  // ),
                ),
              ),
              const SizedBox(height: 30),

            ],
          );
      }),
    );
  }
}
