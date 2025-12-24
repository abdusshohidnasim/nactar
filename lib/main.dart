import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nactar/Cubit/SplaceScreen/ButtomNavigation_Cubit.dart';
import 'package:nactar/Cubit/SplaceScreen/Slider.dart';
import 'package:nactar/Cubit/SplaceScreen/visibilitycubit.dart';
import 'package:nactar/Pages/Login.dart';

import 'Cubit/SplaceScreen/ItemCounterCubit.dart';
import 'Cubit/SplaceScreen/Splace_Scrren_Cubit.dart';
import 'Pages/CurrentLocation.dart';
import 'Pages/Locaton_Page.dart';
import 'Pages/ButtomNavigatorBarpage.dart';
import 'Pages/Signup.dart';
import 'Pages/SplaceScreen.dart';
import 'Pages/Welcome.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SplaceCubit()),
        BlocProvider(create: (context)=>visibilitycubit()),
        BlocProvider(create: (context)=>ButtomNavigatinCubit()),
        BlocProvider(create: (context)=>SliderCubit(3)),
        BlocProvider(create: (context)=>ItemCounterCubit()),

      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Splash_screen(),
        "/welcome": (context) => Welcome(),
        "/login": (context) => Login(),
        "/Signup": (context) => Signup(),
        "/LocatonPage": (context) => LocatonPage(),
        "/CurrentLocation": (context) => CurrentLocation(),
        "/ButtomNavigatorBarpage": (context) => ButtomNavigatorBarpage(),
      },
    );
  }
}
