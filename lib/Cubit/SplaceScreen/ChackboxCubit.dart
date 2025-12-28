import 'package:flutter_bloc/flutter_bloc.dart';
import 'ChackboxState.dart';


class ChackboxCubit extends Cubit<ChackboxState> {
  ChackboxCubit()
      : super(
     ChackboxState(
      values: {
        'Eggs': false,
        'Noodles & Pasta': false,
        'Chips & Crisps': false,
        'Fast Food': false,
        'Individual Callection': false,
        'Cocola': false,
        'Ifad': false,
        'Kazi Farmas': false,
      },
    ),
  );

  void toggle(String key) {
    final updated = Map<String, bool>.from(state.values);
    updated[key] = !(updated[key] ?? false);
    emit(state.copyWith(values: updated));
  }

  void reset() {
    final cleared =
    state.values.map((key, value) => MapEntry(key, false));
    emit(state.copyWith(values: cleared));
  }
}
