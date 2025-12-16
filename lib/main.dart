import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nactar/Cubit/SplaceScreen/visibilitycubit.dart';
import 'package:nactar/Pages/Login.dart';

import 'Cubit/SplaceScreen/Splace_Scrren_Cubit.dart';
import 'Pages/Locaton_Page.dart';
import 'Pages/Signup.dart';
import 'Pages/SplaceScreen.dart';
import 'Pages/Welcome.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SplaceCubit()),
        BlocProvider(create: (context)=>visibilitycubit())

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

      },
    );
  }
}
