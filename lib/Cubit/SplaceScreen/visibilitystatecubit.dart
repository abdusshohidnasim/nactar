import 'package:equatable/equatable.dart';

class visibilitystatecubit extends Equatable{
  final bool toggle;
  visibilitystatecubit(this.toggle);
  @override
  // TODO: implement props
  List<Object?> get props => [toggle];

}