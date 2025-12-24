import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nactar/Cubit/SplaceScreen/ItemCounter.dart';

class ItemCounterCubit extends Cubit<ItemCount>{
  ItemCounterCubit():super(ItemCount( count: 1));
  void Incrememt(){
    emit(ItemCount( count: state.count+1));
  } void Decrement(){
    if(state.count>0) {
      emit(ItemCount(count: state.count - 1));
    }
  }


}