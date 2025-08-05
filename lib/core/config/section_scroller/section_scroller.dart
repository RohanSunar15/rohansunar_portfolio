import 'package:flutter/material.dart';

class SectionKeys {
  static final homeKey = GlobalKey();
  static final aboutKey = GlobalKey();
  static final contactKey = GlobalKey();
  static final skillsKey = GlobalKey();
  static final projectsKey = GlobalKey();
  static final scrollDownKey = GlobalKey();
  static final toProjectsKey = GlobalKey();
  static final toContactKey = GlobalKey();
}

class SectionScroller {
  static void scrollToSection(String section) {
    final contextToScroll =
        {
          'home': SectionKeys.homeKey.currentContext,
          'about': SectionKeys.aboutKey.currentContext,
          'contact': SectionKeys.contactKey.currentContext,
          'skills': SectionKeys.skillsKey.currentContext,
          'projects': SectionKeys.projectsKey.currentContext,
        }[section];

    if (contextToScroll != null) {
      Scrollable.ensureVisible(
        contextToScroll,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeInOut,
      );
    }
  }
}
