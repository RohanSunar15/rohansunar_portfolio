import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rohansunar_portfolio/core/config/helper/web_download_helper.dart';
import 'package:rohansunar_portfolio/core/config/helper/web_redirect_helper.dart';
import 'package:rohansunar_portfolio/features/bloc/home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<ScrollToSectionEvent>(scrollToSectionEvent);
    on<DownloadResumeRequested>(downloadResumeRequested);
    on<OpenGithubProfile>(openGithubProfile);
    on<OpenLinkedInProfile>(openLinkedInProfile);
    on<GmailRedirectRequested>(gmailRedirectRequested);
    on<WhatsAppCloneGitHubLink>(whatsAppCloneGitHubLink);
    on<SpotifyCloneGitHubLink>(spotifyCloneGitHubLink);
    on<TodoAppGitHubLink>(todoAppGitHubLink);
  }

  FutureOr<void> scrollToSectionEvent(
    ScrollToSectionEvent event,
    Emitter<HomeState> emit,
  ) {
    emit(ScrollToSectionState(event.section));
  }

  FutureOr<void> downloadResumeRequested(
    DownloadResumeRequested event,
    Emitter<HomeState> emit,
  ) {
    emit(ResumeDownloadInProgress());
    downloadFile('assets/rohan_resume.pdf', 'Rohan_Sunar_Resume.pdf');
  }

  FutureOr<void> openGithubProfile(
    OpenGithubProfile event,
    Emitter<HomeState> emit,
  ) {
    openUrl('https://github.com/RohanSunar15');
  }

  FutureOr<void> openLinkedInProfile(
    OpenLinkedInProfile event,
    Emitter<HomeState> emit,
  ) {
    openUrl('https://www.linkedin.com/in/rohan-sunar-435663285');
  }

  FutureOr<void> gmailRedirectRequested(
    GmailRedirectRequested event,
    Emitter<HomeState> emit,
  ) {
    openUrl(
      'https://mail.google.com/mail/?view=cm&fs=1&to=rohanksunar15@gmail.com&su=Let\'s Connect,',
    );
  }

  FutureOr<void> whatsAppCloneGitHubLink(
    WhatsAppCloneGitHubLink event,
    Emitter<HomeState> emit,
  ) {
    openUrl('https://github.com/RohanSunar15/whatsapp_clone');
  }

  FutureOr<void> spotifyCloneGitHubLink(
    SpotifyCloneGitHubLink event,
    Emitter<HomeState> emit,
  ) {
    openUrl('https://github.com/RohanSunar15/spotify_clone');
  }

  FutureOr<void> todoAppGitHubLink(
    TodoAppGitHubLink event,
    Emitter<HomeState> emit,
  ) {
    openUrl('https://github.com/RohanSunar15/Todo_app');
  }
}
