import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nactar/Style/Colors.dart';

import '../Cubit/SplaceScreen/Splace_Scrren_Cubit.dart';

class Splash_screen extends StatelessWidget {
  const Splash_screen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SplaceCubit>().StatSplace();
    return BlocListener<SplaceCubit, bool>(
      listener: (context, isdone) {
        if (isdone) {
          Navigator.pushReplacementNamed(context, "/welcome");
        }
      },
      child: Scaffold(
        body: Container(
          color: Appcolors.Primarycolros,
          child: Center(
            child: Image.asset(
              "assets/images/splaceimage.png",
              height: 100,
              width: 300,
            ),
          ),
        ),
      ),
    );
  }
}
