import 'package:flutter/material.dart';

class Googlemape extends StatefulWidget {
   Googlemape({super.key});

  @override
  State<Googlemape> createState() => _GooglemapeState();

}

class _GooglemapeState extends State<Googlemape> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(

        height: 500,
      ),
    );
  }
}
