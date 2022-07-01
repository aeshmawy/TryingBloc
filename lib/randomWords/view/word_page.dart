import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_project/randomWords/cubit/word_cubit.dart';
import 'package:testing_project/randomWords/view/word_widget.dart';

class WordPage extends StatelessWidget {
  const WordPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => WordCubit(),
      child:  RandomWord(),
    );
  }
}