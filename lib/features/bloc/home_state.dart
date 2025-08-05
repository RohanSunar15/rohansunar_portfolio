part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

class ScrollToSectionState extends HomeState {
  final String section;

  ScrollToSectionState(this.section);
}
