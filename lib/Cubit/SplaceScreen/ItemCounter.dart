import 'package:equatable/equatable.dart';

class ItemCount extends Equatable{
  final int count;
  ItemCount({required this.count});



  @override
  // TODO: implement props
  List<Object?> get props => [count];}