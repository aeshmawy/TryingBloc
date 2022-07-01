import 'package:bloc/bloc.dart';
import 'package:english_words/english_words.dart';

class WordCubit extends Cubit<String> {
  /// {@macro counter_cubit}
  WordCubit() : super("SuperCool");

  /// Add 1 to the current state.
  void randomWord() => emit(WordPair.random().asCamelCase);

  /// Subtract 1 from the current state.
  void initialWord() => emit("SuperCool");
}