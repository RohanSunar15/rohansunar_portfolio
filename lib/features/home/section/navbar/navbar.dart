import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rohansunar_portfolio/core/config/assets/app_images.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';
import 'package:rohansunar_portfolio/features/widgets/customtext/custom_text.dart';

class NavbarSection extends StatelessWidget {
  const NavbarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.lightBlue),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.github,
                    size: 25,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(width: 10,),
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.linkedin,
                    size: 25,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                CustomText(text: 'Skills', padding: const EdgeInsets.all(10)),
                SizedBox(width: 40),
                CustomText(text: 'Projects', padding: const EdgeInsets.all(10)),
                SizedBox(width: 40),
                CustomText(text: 'Contacts ', padding: const EdgeInsets.all(10)),
                SizedBox(width: 40),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
