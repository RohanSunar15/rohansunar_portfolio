import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rohansunar_portfolio/core/config/section_scroller/section_scroller.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_button.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_project_card.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_text.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: SectionKeys.projectsKey,
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.blockHeight * 2,
        horizontal: SizeConfig.blockWidth * 2,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: 'Featured ',
                fontSize: SizeConfig.blockWidth * 3,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: 'Projects',
                fontSize: SizeConfig.blockWidth * 3,
                fontWeight: FontWeight.bold,
                isGradient: true,
              ),
            ],
          ),
          CustomText(
            text:
                'A showcase of my mobile development work, featuring cross-platform \napplications built with Flutter and modern technologies.',
            fontSize: SizeConfig.blockWidth * 1.2,
            textColor: AppColors.white.withAlpha(190),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: SizeConfig.blockHeight * 2),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              ProjectCard(
                icon: Icons.phone_android,
                title: 'WhatsApp Clone',
                description:
                    'A full-featured chat app with real-time messaging, user auth, and media sharing.',
                features: [
                  'Real-time messaging',
                  'Media sharing',
                  'User authentication',
                  'Group chats',
                ],
                tags: ['Flutter', 'Firebase', 'Dart', 'Real-time'],
                color: AppColors.primaryCyan,
              ),
              ProjectCard(
                icon: Icons.music_note,
                title: 'Spotify-like Music App',
                description:
                    'A modern UI music app with playlist and audio control functionality.',
                features: [
                  'Music streaming',
                  'Modern UI',
                  'Playlist management',
                  'Audio controls',
                ],
                tags: ['Flutter', 'Audio', 'UI/UX', 'Dart'],
                color: AppColors.softPurple,
              ),
              ProjectCard(
                icon: Icons.music_note,
                title: 'Todo App',
                description:
                    'A task management application with local storage using Hive and SharedPreferences, featuring task categorization and reminders.',
                features: [
                  'Task management',
                  'Local storage',
                  'Categories',
                  'Reminders',
                ],
                tags: ['Flutter', 'Audio', 'UI/UX', 'Dart'],
                color: AppColors.successGreen,
              ),
            ],
          ),
          MouseRegion(
            onEnter: (_) => setState(() => _isHovered = true),
            onExit: (_) => setState(() => _isHovered = false),
            child: SizedBox(
              width: SizeConfig.blockWidth * 20,
              child: CustomButton(
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.blockHeight * 3,
                  horizontal: SizeConfig.blockWidth * 2.5,
                ),
                decoration: BoxDecoration(
                  boxShadow:
                      _isHovered
                          ? [
                            BoxShadow(
                              color: Colors.cyanAccent.withAlpha(150),
                              blurRadius: 40,
                              spreadRadius: 1,
                              offset: const Offset(0, 4),
                            ),
                          ]
                          : [],
                ),
                borderSideColor:
                    _isHovered ? AppColors.primaryCyan : AppColors.grey,
                borderRadius: 15,
                backgroundColor:
                    _isHovered ? AppColors.softPurple : AppColors.transparent,
                overlayColor: AppColors.transparent,
                childWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.github,
                      color: _isHovered ? AppColors.black : AppColors.white,
                      size: SizeConfig.blockWidth * 1.5,
                    ),
                    SizedBox(width: SizeConfig.blockWidth * 1),
                    Text(
                      'View all Projects on GitHub',
                      style: TextStyle(
                        fontSize: SizeConfig.blockWidth * 0.9,
                        color: _isHovered ? AppColors.black : AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
