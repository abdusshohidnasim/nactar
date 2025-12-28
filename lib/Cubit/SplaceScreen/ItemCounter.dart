import 'package:equatable/equatable.dart';

class ItemCount extends Equatable{
  final Map<int,int> count;
  ItemCount({required this.count});



  @override
  // TODO: implement props
  List<Object?> get props => [count];}