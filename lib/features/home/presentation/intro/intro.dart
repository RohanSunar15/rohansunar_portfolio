import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rohansunar_portfolio/core/config/assets/app_images.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';
import 'package:rohansunar_portfolio/core/widgets/animated_skill_tag.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_button.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_text.dart';
import 'package:rohansunar_portfolio/core/widgets/scroll_down_button.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withAlpha(10),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Colors.white.withAlpha(25)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: SizeConfig.blockHeight * 15,
                    top: SizeConfig.blockWidth * 4,
                    bottom: SizeConfig.blockWidth * 1.5,
                    left: SizeConfig.blockHeight * 5,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.blockWidth * 2,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Rohan Kamal',
                              color: AppColors.white,
                              fontSize: SizeConfig.blockWidth * 5,
                              fontWeight: FontWeight.bold,
                            ),
                            CustomText(
                              text: 'Sunar',
                              fontSize: SizeConfig.blockWidth * 5,
                              fontWeight: FontWeight.bold,
                              isGradient: true,
                            ),
                            CustomText(
                              text: 'Flutter Developer',
                              textColor: AppColors.grey,
                              fontSize: SizeConfig.blockWidth * 1.5,
                              fontWeight: FontWeight.bold,
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: SizeConfig.blockWidth * 1.3,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.grey,
                                ),
                                children: [
                                  const TextSpan(
                                    text: 'Building modern mobile apps with ',
                                  ),
                                  TextSpan(
                                    text: 'Flutter',
                                    style: TextStyle(
                                      color: AppColors.primaryCyan,
                                    ), // Flutter Blue
                                  ),
                                  const TextSpan(text: ' & '),
                                  TextSpan(
                                    text: 'Dart',
                                    style: TextStyle(
                                      color: AppColors.softPurple,
                                    ), // Dart Purple
                                  ),
                                  const TextSpan(
                                    text:
                                        '. Passionate \nabout clean UI and performance-optimized development.',
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Row(
                                children: [
                                  CustomButton(
                                    padding: EdgeInsets.all(
                                      SizeConfig.blockWidth * 1.5,
                                    ),
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          AppColors.buttonBlue,
                                          AppColors.buttonPurple,
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        SizeConfig.blockWidth * 1.1,
                                      ),
                                    ),
                                    childWidget: Text(
                                      'View Projects',
                                      style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: SizeConfig.blockWidth * 1,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 50),
                                  CustomButton(
                                    padding: EdgeInsets.all(
                                      SizeConfig.blockWidth * 1.5,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppColors.grey,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        SizeConfig.blockWidth * 1.1,
                                      ),
                                    ),
                                    childWidget: Text(
                                      'Contact Me',
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontSize: SizeConfig.blockWidth * 1.2,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: SizeConfig.blockHeight * 2,
                                horizontal: SizeConfig.blockWidth * 4,
                              ),

                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.email,
                                      color: AppColors.white,
                                      size: 35,
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(width: SizeConfig.blockWidth * 2),
                                  IconButton(
                                    icon: FaIcon(
                                      FontAwesomeIcons.github,
                                      size: 35,
                                      color: AppColors.white,
                                    ),
                                    color: AppColors.white,

                                    onPressed: () {},
                                  ),
                                  SizedBox(width: SizeConfig.blockWidth * 2),

                                  IconButton(
                                    icon: FaIcon(
                                      FontAwesomeIcons.linkedin,
                                      size: 35,
                                      color: AppColors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(width: SizeConfig.blockWidth * 2),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Center(
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: SizeConfig.blockWidth * 25,
                              height: SizeConfig.blockWidth * 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.tealAccent,
                                  width: 2,
                                ),
                                image: const DecorationImage(
                                  image: AssetImage(AppImages.profileImage),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            AnimatedSkillTag(
                              label: 'Flutter',
                              color: AppColors.primaryCyan,
                              startOffset: Offset(
                                SizeConfig.blockWidth * 19,
                                SizeConfig.blockHeight * -8,
                              ),
                            ),
                            AnimatedSkillTag(
                              label: 'Dart',
                              color: AppColors.softPurple,
                              startOffset: Offset(
                                SizeConfig.blockWidth * -3,
                                SizeConfig.blockHeight * 5,
                              ),
                            ),
                            AnimatedSkillTag(
                              label: 'Firebase',
                              color: AppColors.successGreen,
                              startOffset: Offset(
                                SizeConfig.blockWidth * 23,
                                SizeConfig.blockHeight * 35,
                              ),
                            ),
                            AnimatedSkillTag(
                              label: 'Node.js',
                              color: AppColors.vibrantOrange,
                              startOffset: Offset(
                                SizeConfig.blockWidth * 5,
                                SizeConfig.blockHeight * 50,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: DropArrowButton(onTap: () {}),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
