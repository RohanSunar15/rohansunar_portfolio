import 'package:flutter/material.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_button.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_text.dart';

class NavbarSection extends StatelessWidget {
  const NavbarSection({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.blockHeight * 2,
        horizontal: SizeConfig.blockWidth * 4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: 'RS',
            fontSize: SizeConfig.blockWidth * 2,
            fontWeight: FontWeight.bold,
            isGradient: true,
          ),
          const Spacer(),
          Row(
            children: [
              CustomText(
                text: 'About',
                fontSize: SizeConfig.blockWidth * 1.2,
                color: AppColors.grey,
                padding: EdgeInsets.all(SizeConfig.blockWidth * 0.8),
              ),
              SizedBox(width: SizeConfig.blockWidth * 1.5),
              CustomText(
                text: 'Skills',
                fontSize: SizeConfig.blockWidth * 1.2,
                color: AppColors.grey,
                padding: EdgeInsets.all(SizeConfig.blockWidth * 0.8),
              ),
              SizedBox(width: SizeConfig.blockWidth * 1.5),
              CustomText(
                text: 'Projects',
                fontSize: SizeConfig.blockWidth * 1.2,
                color: AppColors.grey,
                padding: EdgeInsets.all(SizeConfig.blockWidth * 0.8),
              ),
              SizedBox(width: SizeConfig.blockWidth * 1.5),
              CustomText(
                text: 'Contact',
                fontSize: SizeConfig.blockWidth * 1.2,
                color: AppColors.grey,
                padding: EdgeInsets.all(SizeConfig.blockWidth * 0.8),
              ),
              SizedBox(width: SizeConfig.blockWidth * 1.5),
              CustomButton(
                padding: EdgeInsets.all(SizeConfig.blockWidth * 1.1),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [AppColors.buttonBlue, AppColors.buttonPurple],
                  ),
                  borderRadius: BorderRadius.circular(
                    SizeConfig.blockWidth * 1.1,
                  ),
                ),
                childWidget: Text(
                  'Resume',
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: SizeConfig.blockWidth * 1.2,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
