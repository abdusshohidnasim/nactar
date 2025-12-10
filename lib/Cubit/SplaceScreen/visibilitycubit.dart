import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nactar/Cubit/SplaceScreen/visibilitystatecubit.dart';

class visibilitycubit extends Cubit<visibilitystatecubit> {
  visibilitycubit() : super(visibilitystatecubit(true));
  void toggleloagic() {
    emit(visibilitystatecubit(!state.toggle));
  }
}
