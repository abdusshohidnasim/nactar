import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nactar/Cubit/SplaceScreen/ItemCounter.dart';

class ItemCounterCubit extends Cubit<ItemCount>{
  ItemCounterCubit():super(ItemCount(count: {}));
  void Increment(int index){
    final NewCount= Map<int,int>.from(state.count);
    NewCount[index]= (NewCount[index]??1)+1;
    emit(ItemCount(count: NewCount));
  }
  void Decrement(int index){
    final NewCount = Map<int,int>.from(state.count);
    final Curent = NewCount[index]??1;
    if(Curent>1){
      NewCount[index]=Curent-1;
      emit(ItemCount(count: NewCount));
    }
  }

}

// class ItemCounterCubit extends Cubit<ItemCount>{
//   ItemCounterCubit():super(ItemCount( count: 1));
//   void Incrememt(){
//     emit(ItemCount( count: state.count+1));
//   } void Decrement(){
//     if(state.count>1) {
//       emit(ItemCount(count: state.count - 1));
//     }
//   }
//
//
// }