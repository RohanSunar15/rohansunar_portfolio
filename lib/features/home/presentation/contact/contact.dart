import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';
import 'package:rohansunar_portfolio/core/widgets/contact_me_form_section.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_button.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_card.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_social_Icon_button.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_text.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white.withAlpha(10),
      padding: EdgeInsets.symmetric(vertical: SizeConfig.blockHeight * 2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: 'Lets\'s ',
                fontSize: SizeConfig.blockWidth * 3,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: 'Connect',
                fontSize: SizeConfig.blockWidth * 3,
                fontWeight: FontWeight.bold,
                isGradient: true,
              ),
            ],
          ),
          CustomText(
            text:
                'Ready to bring your mobile app idea to life? Let\'s discuss your project and \nexplore how we can work together.',
            fontSize: SizeConfig.blockWidth * 1.2,
            textColor: AppColors.white.withAlpha(190),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: SizeConfig.blockHeight * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Get in Touch',
                    fontSize: SizeConfig.blockWidth * 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: SizeConfig.blockHeight * 1.5),
                  Container(
                    width: SizeConfig.blockWidth * 40,
                    padding: EdgeInsets.all(1),
                    child: CustomText(
                      text:
                          'I\'m always excited to discuss new projects and opportunities. Whether you need a mobile app built from scratch or want to enhance an existing application, I\'m here to help turn your vision into reality.',
                      fontSize: SizeConfig.blockWidth * 1,
                      textColor: AppColors.white.withAlpha(150),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockHeight * 2),
                  Column(
                    children: [
                      CustomInfoCard(
                        icon: Icons.email_outlined,
                        iconColor: AppColors.primaryCyan,
                        iconBackgroundColor: AppColors.primaryCyan.withAlpha(
                          25,
                        ),
                        title: 'Email',
                        height: SizeConfig.blockHeight * 13,
                        width: SizeConfig.blockWidth * 40,
                        description: 'rohanksunar15@gmail.com',
                      ),
                      CustomInfoCard(
                        icon: Icons.phone_android_outlined,
                        iconColor: AppColors.softPurple,
                        iconBackgroundColor: AppColors.softPurple.withAlpha(25),
                        height: SizeConfig.blockHeight * 13,
                        width: SizeConfig.blockWidth * 40,
                        title: 'Phone Number',
                        description: '+91 98341 50718 ',
                      ),
                      CustomInfoCard(
                        icon: Icons.work_outline,
                        iconColor: AppColors.successGreen,
                        iconBackgroundColor: AppColors.successGreen.withAlpha(
                          25,
                        ),
                        height: SizeConfig.blockHeight * 13,
                        width: SizeConfig.blockWidth * 40,
                        title: 'Previous Internship',
                        description:
                            'Flutter Developer Role (Partially Completed) at Liveasy',
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockHeight * 2),
                  CustomText(
                    text: 'Follow Me',
                    fontSize: SizeConfig.blockHeight * 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: SizeConfig.blockHeight * 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialIconButton(
                        icon: FontAwesomeIcons.github,
                        iconColor: AppColors.white,
                        onTap: () {},
                      ),
                      SocialIconButton(
                        icon: FontAwesomeIcons.linkedin,
                        iconColor: AppColors.white,
                        onTap: () {},
                      ),
                      SocialIconButton(
                        icon: Icons.email_outlined,
                        iconColor: AppColors.white,
                        onTap: () {},
                      ),
                    ],
                  ),

                  SizedBox(height: SizeConfig.blockHeight * 5),

                  MouseRegion(
                    onEnter: (_) => setState(() => _isHovered = true),
                    onExit: (_) => setState(() => _isHovered = false),
                    child: SizedBox(
                      width: SizeConfig.blockWidth * 20,
                      child: CustomButton(
                        padding: EdgeInsets.all(SizeConfig.blockWidth * 1.1),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              AppColors.buttonBlue,
                              AppColors.buttonPurple,
                            ],
                          ),
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
                          borderRadius: BorderRadius.circular(
                            SizeConfig.blockWidth * 1.1,
                          ),
                        ),
                        childWidget: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.download,
                              color:
                                  _isHovered
                                      ? AppColors.white
                                      : AppColors.black,
                              size: SizeConfig.blockWidth * 1.5,
                            ),
                            SizedBox(width: SizeConfig.blockWidth * 1),
                            Text(
                              'Download Resume',
                              style: TextStyle(
                                fontSize: SizeConfig.blockWidth * 0.9,
                                color:
                                    _isHovered
                                        ? AppColors.white
                                        : AppColors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ContactMeFormSection(),
            ],
          ),
        ],
      ),
    );
  }
}
