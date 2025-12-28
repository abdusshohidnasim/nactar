import 'package:flutter/material.dart';

import '../Wized/Chackbox.dart';


class Filters extends StatelessWidget {
  const Filters({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),

          /// Top bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.close, size: 30)),
                const Text(
                  "Filters",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 30),
              ],
            ),
          ),

          const SizedBox(height: 20),

          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffF2F3F2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),

                  Chackboxandtext(chackboxName: 'Eggs'),
                  Chackboxandtext(chackboxName: 'Noodles & Pasta'),
                  Chackboxandtext(chackboxName: 'Chips & Crisps'),
                  Chackboxandtext(chackboxName: 'Fast Food'),

                  SizedBox(height: 20),

                  Text(
                    "Brand",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),

                  Chackboxandtext(chackboxName: 'Individual Callection'),
                  Chackboxandtext(chackboxName: 'Cocola'),
                  Chackboxandtext(chackboxName: 'Ifad'),
                  Chackboxandtext(chackboxName: 'Kazi Farmas'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
