import 'package:equatable/equatable.dart';   //using Equatable to simplify equality checks for state objects.

class ThemeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ToggleTheme extends ThemeEvent {}