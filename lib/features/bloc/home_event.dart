import 'package:flutter/foundation.dart';

@immutable
sealed class HomeEvent {}

class ScrollToSectionEvent extends HomeEvent {
  final String section;

  ScrollToSectionEvent(this.section);
}

class DownloadResumeRequested extends HomeEvent {}

class OpenGithubProfile extends HomeEvent {}

class OpenLinkedInProfile extends HomeEvent {}

class GmailRedirectRequested extends HomeEvent {}

//Projects Open Github links ,

class WhatsAppCloneGitHubLink extends HomeEvent {}

class SpotifyCloneGitHubLink extends HomeEvent {}

class TodoAppGitHubLink extends HomeEvent {}

//Contact me Form
class NameChanged extends HomeEvent {
  final String name;

  NameChanged({required this.name});
}

class EmailChanged extends HomeEvent {
  final String email;

  EmailChanged({required this.email});
}

class SubjectChanged extends HomeEvent {
  final String subject;

  SubjectChanged({required this.subject});
}

class MessageChanged extends HomeEvent {
  final String message;

  MessageChanged({required this.message});
}

class FormSubmitted extends HomeEvent {
  final String name;
  final String email;
  final String? subject;
  final String message;

  FormSubmitted({
    required this.name,
    required this.email,
    this.subject,
    required this.message,
  });
}

class SubmitForm extends HomeEvent {}
