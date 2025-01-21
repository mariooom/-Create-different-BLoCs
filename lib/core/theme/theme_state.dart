import 'package:equatable/equatable.dart';

class ThemeState extends Equatable {
  final bool isDark;

  const ThemeState(this.isDark);

  factory ThemeState.light() => const ThemeState(false);
  factory ThemeState.dark() => const ThemeState(true);

  @override
  List<Object> get props => [isDark];
}