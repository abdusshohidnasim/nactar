import 'package:flutter/material.dart';

InkWell BigButton({
  required BuildContext context,
  required VoidCallback ontab,
  required Color ButtonColor,
  Image? buttonimage,
  required Buttontext,
}) {
  return InkWell(
    onTap: ontab,
    child: Container(
      height: 50,
      decoration: BoxDecoration(
        color: ButtonColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ?buttonimage,
          Text(
            Buttontext,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    ),
  );
}
