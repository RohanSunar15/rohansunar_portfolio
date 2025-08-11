part of 'home_bloc.dart';

@immutable
class HomeState {
  final String name;
  final String email;
  final String subject;
  final String message;
  final bool isEmailValid;
  final bool isFormValid;

  const HomeState({
    this.name = '',
    this.email = '',
    this.subject = '',
    this.message = '',
    this.isFormValid = false,
    this.isEmailValid = false,
  });
}

final class HomeInitial extends HomeState {}

class ScrollToSectionState extends HomeState {
  final String section;

  const ScrollToSectionState(this.section);
}

class ResumeDownloadInProgress extends HomeState {}

class ResumeDownloaded extends HomeState {}

class HomeError extends HomeState {
  final String error;

  const HomeError(this.error);
}

class FormSubmittedSuccess extends HomeState {}
