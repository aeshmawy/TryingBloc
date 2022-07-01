import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_project/randomWords/cubit/word_cubit.dart';

class RandomWord extends StatelessWidget {
  const RandomWord({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar( title: const Text("Words"),),
      body: Center(child: BlocBuilder<WordCubit, String>(
        builder: (context, state) {
          return Text(state, style: textTheme.headline2);
        },
      ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            //key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.shuffle),
            onPressed: () => context.read<WordCubit>().randomWord(),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            //key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.star_outline),
            onPressed: () => context.read<WordCubit>().initialWord(),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            //key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.navigate_before),
            onPressed: () => Navigator.pop(context, '/'),
          ),
        ],
      ),
    );
  }
}