import 'package:flutter/material.dart';
import 'package:rohansunar_portfolio/core/config/section_scroller/section_scroller.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_card.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_text.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: SectionKeys.aboutKey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: 'About ',
                fontSize: SizeConfig.blockWidth * 3,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: 'Me',
                fontSize: SizeConfig.blockWidth * 3,
                fontWeight: FontWeight.bold,
                isGradient: true,
              ),
            ],
          ),
          CustomText(
            text:
                'Passionate Flutter developer with a strong foundation in mobile app development \nand a commitment to creating exceptional user experiences.',
            fontSize: SizeConfig.blockWidth * 1.2,
            textColor: AppColors.white.withAlpha(190),
            textAlign: TextAlign.center,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: SizeConfig.blockWidth * 5,
            runSpacing: SizeConfig.blockHeight * 5,
            children: [
              Container(
                height: SizeConfig.blockHeight * 61.1,
                width: SizeConfig.blockWidth * 38,
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.blockHeight * 3,
                ),
                margin: EdgeInsets.symmetric(
                  vertical: SizeConfig.blockWidth * 2.5,
                  horizontal: SizeConfig.blockWidth * 5,
                ),
                //Description About me
                child: Column(
                  children: [
                    CustomText(
                      text:
                          'I am a dedicated Flutter developer who builds cross-platform mobile applications using Flutter and Dart. With a Bachelor\'s degree in Computer Science, I combine theoretical knowledge with practical skills to create robust, scalable applications.',
                      fontSize: SizeConfig.blockWidth * 1,
                    ),
                    CustomText(
                      text:
                          'My journey in software development has led me to specialize in mobile app development, where I focus on creating intuitive user interfaces and optimizing app performance. I have hands-on experience with various technologies including Firebase for backend services, Node.js for server-side development, and modern state management solutions.\nThrough various projects and continuous learning, I\'ve developed expertise in building full-featured applications that solve real-world problems. I\'m passionate about clean code, responsive design, and staying up-to-date with the latest industry trends.',
                      fontSize: SizeConfig.blockWidth * 1,
                      textColor: Colors.grey,
                    ),
                    SizedBox(height: SizeConfig.blockHeight * 2),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            CustomText(
                              text: '3+',
                              textColor: AppColors.primaryCyan,
                              fontSize: SizeConfig.blockWidth * 2.5,
                              fontWeight: FontWeight.bold,
                            ),
                            CustomText(
                              text: 'Project',
                              fontSize: SizeConfig.blockWidth * 1.5,
                            ),
                          ],
                        ),
                        SizedBox(width: SizeConfig.blockWidth * 12),
                        Column(
                          children: [
                            CustomText(
                              text: 'CS',
                              textColor: AppColors.softPurple,
                              fontSize: SizeConfig.blockWidth * 2.5,
                              fontWeight: FontWeight.bold,
                            ),
                            CustomText(
                              text: 'Degree in Computer Science',
                              fontSize: SizeConfig.blockWidth * 1.5,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Info Card
              Column(
                children: [
                  CustomInfoCard(
                    icon: Icons.school_outlined,
                    iconColor: AppColors.primaryCyan,
                    iconBackgroundColor: AppColors.primaryCyan.withAlpha(25),
                    title: 'Education',
                    height: SizeConfig.blockHeight * 16,
                    width: SizeConfig.blockWidth * 45,
                    description:
                        'Bachelor\'s degree in Computer Science with a strong foundation in software development principles, algorithms, and system design.',
                  ),
                  CustomInfoCard(
                    icon: Icons.phone_android_outlined,
                    iconColor: AppColors.softPurple,
                    iconBackgroundColor: AppColors.softPurple.withAlpha(25),
                    height: SizeConfig.blockHeight * 16,
                    width: SizeConfig.blockWidth * 45,
                    title: 'Mobile App Development',
                    description:
                        'Specialized in Flutter framework for cross-platform mobile app development, creating apps that run seamlessly on both iOS and Android platforms.',
                  ),
                  CustomInfoCard(
                    icon: Icons.code_outlined,
                    iconColor: AppColors.successGreen,
                    iconBackgroundColor: AppColors.successGreen.withAlpha(25),
                    height: SizeConfig.blockHeight * 16,
                    width: SizeConfig.blockWidth * 45,
                    title: 'Full-Stack Skills',
                    description:
                        'Experience with both frontend and backend technologies, including Firebase, Node.js, Express, and various database solutions.',
                  ),
                ],
              ),
            ],
          ),
          SizedBox(width: SizeConfig.blockWidth * 6),
        ],
      ),
    );
  }
}
