part of 'theme_bloc.dart';

@immutable
sealed class ThemeState {}

final class ThemeInitial extends ThemeState {

}

class LoadTheme extends ThemeState {
  final ThemeMode theme;
  LoadTheme(this.theme);
}


