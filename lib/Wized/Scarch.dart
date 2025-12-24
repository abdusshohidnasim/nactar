import 'package:flutter/material.dart';

class Scarch extends StatelessWidget {
  const Scarch({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.grey[100],
          focusColor: Colors.grey,

          filled: true,
          hintText: "Scearce",
          prefix: Icon(Icons.search),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}
