import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rohansunar_portfolio/core/config/helper/web_download_helper.dart';
import 'package:rohansunar_portfolio/core/config/helper/web_redirect_helper.dart';
import 'package:rohansunar_portfolio/features/bloc/home_event.dart';
import 'package:rohansunar_portfolio/features/bloc/service/email_service.dart';
import 'package:rohansunar_portfolio/features/bloc/service/email_verify_service.dart';

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

    //Contact Form
    on<FormSubmitted>(formSubmitted);
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

  //Contact Form
  FutureOr<void> formSubmitted(
    FormSubmitted event,
    Emitter<HomeState> emit,
  ) async {
    bool isValidEmail(String email) {
      return RegExp(r'^[\w.-]+@[\w.-]+\.\w+$').hasMatch(email);
    }

    final isEmailValid = isValidEmail(event.email);
    if (!isEmailValid) {
      emit(HomeError('Email is not Valid'));
    }

    if (event.name.isEmpty || event.email.isEmpty || event.message.isEmpty) {
      print('Please fill all required fields ');
      emit(HomeError('Please fill all required fields.'));
      return;
    }

    final isVerified = await verifyEmailWithAPI(event.email);
    if (!isVerified) {
      emit(HomeError('Email could not be verified. Please use a valid one.'));
      print(isVerified);
    }

    try {
      final success = await EmailService.sendEmail(
        name: event.name,
        email: event.email,
        subject: event.subject ?? '',
        message: event.message,
      );

      if (success) {
        emit(FormSubmittedSuccess());
      } else {
        emit(HomeError('Failed to send email.'));
      }
    } catch (error) {
      emit(HomeError('Error sending email: $error'));
    }
  }
}
