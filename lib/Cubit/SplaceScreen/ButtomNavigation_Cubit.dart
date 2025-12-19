import 'package:flutter_bloc/flutter_bloc.dart';

import 'ButtomNavigatorBar_State.dart';

class ButtomNavigatinCubit extends Cubit<ButtomnavigatorbarState>{
  ButtomNavigatinCubit():super(ButtomnavigatorbarState(0));
  void Changepage(int index){
    emit(ButtomnavigatorbarState(index));
  }
}
