import 'package:flutter/material.dart';
import 'package:rohansunar_portfolio/core/config/assets/app_images.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';
import 'package:rohansunar_portfolio/features/widgets/customtext/custom_text.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkBlue,
      height: 500,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    color:AppColors.lightBlue,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(AppImages.profileImage),
                      backgroundColor: AppColors.lightBlue,
                      radius: 150,
                    ),
                  ),
                ),
              ),
              CustomText(
                text: 'Rohan Sunar ',
                padding:const EdgeInsets.all(10.0),
                fontSize:50,
              ),
            ],
          ),
          SizedBox(width: 30,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: 'Hey There! ',
                  fontSize: 40,
                ),
                CustomText(
                  text: 'I\'m Flutter Developer ',
                  fontSize: 40,
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
