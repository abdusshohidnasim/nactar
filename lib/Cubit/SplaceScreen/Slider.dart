import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nactar/Cubit/SplaceScreen/ButtomNavigatorBar_State.dart';

class SliderCubit extends Cubit<ButtomnavigatorbarState>{
  late Timer _timer;
  final int TotalImage;
  SliderCubit(this.TotalImage):super(ButtomnavigatorbarState(0)){
    _timer = Timer.periodic(Duration(seconds: 5), (timer){
      int nextIndex = state.CureentIndex+1;
      if(nextIndex>=TotalImage){
        nextIndex=0; 
      }
      emit(ButtomnavigatorbarState(nextIndex));
    });
  }
  @override
  Future<void> Close() {
    _timer.cancel();
    return super.close();
  }
  
}