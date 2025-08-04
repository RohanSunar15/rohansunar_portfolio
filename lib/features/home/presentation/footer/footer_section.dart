import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_social_Icon_button.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_text.dart';

class FooterSection extends StatefulWidget {
  const FooterSection({super.key});

  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black.withAlpha(50),
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.blockWidth * 4,
        vertical: SizeConfig.blockHeight * 4,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Rohan Kamal Sunar',
                    fontSize: SizeConfig.blockWidth * 1.5,
                    fontWeight: FontWeight.bold,
                    isGradient: true,
                  ),
                  SizedBox(height: SizeConfig.blockHeight * 3),
                  SizedBox(
                    width: SizeConfig.blockWidth * 30,
                    child: CustomText(
                      text:
                          'Flutter Developer passionate about creating beautiful, performant mobile applications.',
                      fontSize: SizeConfig.blockWidth * 1.2,
                      textColor: AppColors.white.withAlpha(190),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockHeight * 3),
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
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Quick Links',
                    fontSize: SizeConfig.blockWidth * 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: SizeConfig.blockHeight * 3),
                  CustomText(
                    text: 'About',
                    fontSize: SizeConfig.blockWidth * 1.2,
                    textColor: AppColors.white.withAlpha(190),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.blockHeight * 1.5),
                  CustomText(
                    text: 'Skills',
                    fontSize: SizeConfig.blockWidth * 1.2,
                    textColor: AppColors.white.withAlpha(190),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.blockHeight * 1.5),
                  CustomText(
                    text: 'Projects',
                    fontSize: SizeConfig.blockWidth * 1.2,
                    textColor: AppColors.white.withAlpha(190),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.blockHeight * 1.5),
                  CustomText(
                    text: 'Contact',
                    fontSize: SizeConfig.blockWidth * 1.2,
                    textColor: AppColors.white.withAlpha(190),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Get in Touch',
                    fontSize: SizeConfig.blockWidth * 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: SizeConfig.blockHeight * 3),
                  CustomText(
                    text: 'rohanksunar15@gmail.com',
                    fontSize: SizeConfig.blockWidth * 1.2,
                    textColor: AppColors.white.withAlpha(190),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.blockHeight * 1.5),
                  CustomText(
                    text: 'Available For Work',
                    fontSize: SizeConfig.blockWidth * 1.2,
                    textColor: AppColors.white.withAlpha(190),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: SizeConfig.blockHeight * 3),
          Divider(thickness: 1, color: AppColors.grey),
          SizedBox(height: SizeConfig.blockHeight * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: '© 2024 Rohan Kamal Sunar. All rights reserved.',
                fontSize: SizeConfig.blockWidth * 1,
                textColor: AppColors.grey,
              ),
              CustomText(
                text: 'Made with ❤️ using Flutter & React',
                fontSize: SizeConfig.blockWidth * 1,
                textColor: AppColors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
