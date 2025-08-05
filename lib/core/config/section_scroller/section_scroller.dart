import 'package:flutter/material.dart';

class SectionKeys {
  static final aboutKey = GlobalKey();
  static final contactKey = GlobalKey();
  static final skillsKey = GlobalKey();
  static final projectsKey = GlobalKey();
}

class SectionScroller {
  static void scrollToSection(String section) {
    final contextToScroll =
        {
          'about': SectionKeys.aboutKey.currentContext,
          'contact': SectionKeys.contactKey.currentContext,
          'skills': SectionKeys.skillsKey.currentContext,
          'projects': SectionKeys.projectsKey.currentContext,
        }[section];

    if (contextToScroll != null) {
      Scrollable.ensureVisible(
        contextToScroll,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }
}
