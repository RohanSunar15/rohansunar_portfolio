import 'package:flutter/material.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget//custom_text.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_button.dart';

class NavbarSection extends StatelessWidget {
  const NavbarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: 'RS',
            fontSize: 30,
            fontWeight: FontWeight.bold,
            isGradient: true,
          ),
          Spacer(),
          Row(
            children: [
              CustomText(
                text: 'About',
                fontSize: 18,
                color: AppColors.grey,
                padding: const EdgeInsets.all(10),
              ),
              SizedBox(width: 40),
              CustomText(
                text: 'Skills',
                fontSize: 18,
                color: AppColors.grey,
                padding: const EdgeInsets.all(10),
              ),
              SizedBox(width: 40),
              CustomText(
                text: 'Projects',
                fontSize: 18,
                color: AppColors.grey,
                padding: const EdgeInsets.all(10),
              ),
              SizedBox(width: 40),
              CustomText(
                text: 'Contact',
                fontSize: 18,
                color: AppColors.grey,
                padding: const EdgeInsets.all(10),
              ),
              SizedBox(width: 40),
              CustomButton(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [AppColors.buttonBlue, AppColors.buttonPurple],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                childWidget: Text(
                  'Resume',
                  style: TextStyle(color: AppColors.black, fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
