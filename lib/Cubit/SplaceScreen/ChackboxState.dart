import 'package:equatable/equatable.dart';

class ChackboxState extends Equatable{
  final Map<String, bool> values;
  ChackboxState({required this.values});

  ChackboxState copyWith({Map<String, bool>? values}) {
    return ChackboxState(values: values ?? this.values);
  }
  @override
  // TODO: implement props
  List<Object?> get props => [values];
  
}