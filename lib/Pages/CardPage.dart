import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nactar/Cubit/SplaceScreen/ItemCounter.dart';
import 'package:nactar/Cubit/SplaceScreen/ItemCounterCubit.dart';
import 'package:nactar/Style/Colors.dart';
import 'package:nactar/Wized/Big_Button.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ItemCounterCubit, ItemCount>(
        builder: (context, State) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "My Cart",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("assets/images/egg.png", height: 90),
                              Column(
                                children: [
                                  Text(
                                    "Bell Pepper Red",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "4 pic, price",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  // Text("${State.count[index] ?? 1}"),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          context
                                              .read<ItemCounterCubit>()
                                              .Decrement(index);
                                          //  context.read<ItemCounterCubit>().Decrement(index);
                                        },

                                        icon: ImageIcon(
                                          AssetImage("assets/images/-Icon.png"),
                                        ),
                                      ),
                                      Text("${State.count[index] ?? 1}"),
                                      IconButton(
                                        onPressed: () {
                                          context
                                              .read<ItemCounterCubit>()
                                              .Increment(index);

                                          //    context.read<ItemCounterCubit>().Increment(index);
                                        },
                                        icon: ImageIcon(
                                          AssetImage(
                                            "assets/images/+button.png",
                                          ),
                                          color: Colors.greenAccent,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.close),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                child: BigButton(
                  context: context,
                  ontab: () {},
                  ButtonColor: Appcolors.Primarycolros,
                  Buttontext: "Go to Checkout",
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
