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
