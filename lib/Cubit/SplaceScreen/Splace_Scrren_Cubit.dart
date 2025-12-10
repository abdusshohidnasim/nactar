import 'package:flutter_bloc/flutter_bloc.dart';

class SplaceCubit extends Cubit<bool>{
  SplaceCubit (): super(false);
  void StatSplace() async {
    await Future.delayed(Duration(seconds: 2)); 
    emit(true);

  }
}