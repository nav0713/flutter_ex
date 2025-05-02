import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeMode currentTheme = ThemeMode.system;
  ThemeBloc() : super(ThemeInitial()) {

    on<ChangeTheme>((event, emit) {
      if(currentTheme == ThemeMode.light) {
        currentTheme = ThemeMode.dark;
      } else {
        currentTheme = ThemeMode.light;
      }
      emit(LoadTheme(currentTheme));
    });
  }
}
