import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubit/SplaceScreen/ChackboxCubit.dart';
import '../Cubit/SplaceScreen/ChackboxState.dart';


class Chackboxandtext extends StatelessWidget {
  final String chackboxName;

  const Chackboxandtext({
    super.key,
    required this.chackboxName,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChackboxCubit, ChackboxState>(
      builder: (context, state) {
        return Row(
          children: [
            Checkbox(
              value: state.values[chackboxName] ?? false,
              onChanged: (_) {
                context.read<ChackboxCubit>().toggle(chackboxName);
              },
            ),
            const SizedBox(width: 10),
            Text(chackboxName),
          ],
        );
      },
    );
  }
}
