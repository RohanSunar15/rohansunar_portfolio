import 'package:flutter/material.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_skill_card.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_skill_chip.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_text.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: 'Technical ',
              fontSize: SizeConfig.blockWidth * 4.2,
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              text: 'Skills',
              fontSize: SizeConfig.blockWidth * 4.2,
              fontWeight: FontWeight.bold,
              isGradient: true,
            ),
          ],
        ),
        CustomText(
          text:
              'A comprehensive toolkit for building modern, scalable mobile applications and \nbackend services.',
          fontSize: SizeConfig.blockWidth * 1.2,
          textColor: AppColors.white.withAlpha(190),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: SizeConfig.blockHeight * 2),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth * 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SkillBox(
                emoji: '📱',
                title: 'Mobile Development',
                skills: ['Flutter', 'Dart', 'Android', 'iOS'],
                borderColor: AppColors.primaryCyan.withAlpha(100),
                chipColor: AppColors.primaryCyan.withAlpha(40),
                textColor: AppColors.brightCyan,
              ),
              SkillBox(
                emoji: '⚡',
                title: 'Backend & Services',
                skills: ['Firebase', 'Node.js', 'Express', 'REST APIs'],
                borderColor: AppColors.softPurple.withAlpha(100),
                chipColor: AppColors.softPurple.withAlpha(20),
                textColor: AppColors.brightSoftPurple,
              ),
              SkillBox(
                emoji: '🗄️ ',
                title: 'Database & Storage',
                skills: [
                  'Hive',
                  'Shared Preferences',
                  'Mongoose',
                  'Cloud Firestore',
                ],
                borderColor: AppColors.successGreen.withAlpha(100),
                chipColor: AppColors.successGreen.withAlpha(20),
                textColor: AppColors.brightGreen,
              ),
              SkillBox(
                emoji: '🛠️',
                title: 'Tools & Platforms',
                skills: [
                  'Git',
                  'Android Studio',
                  'VS Code',
                  'Firebase Console',
                ],
                borderColor: AppColors.vibrantOrange.withAlpha(100),
                chipColor: AppColors.vibrantOrange.withAlpha(20),
                textColor: AppColors.brightOrange,
              ),
            ],
          ),
        ),
        SizedBox(height: SizeConfig.blockHeight * 2),
        CustomText(
          text: 'Core Competencies',
          fontSize: SizeConfig.blockHeight * 4,
        ),
        SizedBox(height: SizeConfig.blockHeight * 2),
        SizedBox(
          height: SizeConfig.blockHeight * 10,
          width: SizeConfig.blockWidth * 60,
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              CustomSkillChip(label: 'Cross-platform Development'),
              CustomSkillChip(label: 'UI/UX Implementation'),
              CustomSkillChip(label: 'State Management'),
              CustomSkillChip(label: 'API Integration'),
              CustomSkillChip(label: 'Performance Optimization'),
              CustomSkillChip(label: 'Code Architecture'),
              CustomSkillChip(label: 'Testing & Debugging'),
              CustomSkillChip(label: 'Version Control'),
              CustomSkillChip(label: 'Agile Development'),
              CustomSkillChip(label: 'Problem Solving'),
            ],
          ),
        ),
      ],
    );
  }
}
