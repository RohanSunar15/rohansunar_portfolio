part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class ScrollToSectionEvent extends HomeEvent {
  final String section;

  ScrollToSectionEvent(this.section);
}
