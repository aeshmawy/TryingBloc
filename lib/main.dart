import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testing_project/counter/counter.dart';
import 'package:testing_project/randomWords/view/word_page.dart';


import 'general_observer.dart';


void main() {
  

  
  BlocOverrides.runZoned(
    () => runApp(const CounterWord()),
    blocObserver: GeneralObserver(),
  );
}

class CounterWord extends StatelessWidget {
  const CounterWord({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: 
    {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => const CounterPage(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/word': (context) => const WordPage(),
    },
  );
  }
}