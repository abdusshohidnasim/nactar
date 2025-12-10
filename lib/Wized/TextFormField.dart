import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nactar/Cubit/SplaceScreen/visibilitycubit.dart';
import 'package:nactar/Cubit/SplaceScreen/visibilitystatecubit.dart';

class CustomTextformfield extends StatelessWidget {
  final String hinttext;
  final bool isPassword;
  //final String? Function(String?)? validator;
  final FormFieldValidator<String>? validator;

  CustomTextformfield({
    super.key,
    required this.hinttext,
    required this.isPassword,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<visibilitycubit,visibilitystatecubit>(builder: (context,State,)=>
        Card(
          elevation: 1,
          child: isPassword
              ? TextFormField(
            obscureText: State.toggle,
            validator: validator,
            decoration: InputDecoration(

              hintText: hinttext,

              suffixIcon: IconButton(onPressed: (){context.read<visibilitycubit>().toggleloagic();},icon: Icon(State.toggle?Icons.visibility_off:Icons.visibility),),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          )
              : TextFormField(
            decoration: InputDecoration(
              hintText: hinttext,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ));
     
  }
}