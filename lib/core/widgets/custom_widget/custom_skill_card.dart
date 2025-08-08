import 'package:flutter/material.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';

class SkillBox extends StatelessWidget {
  final String emoji;
  final String title;
  final List<String> skills;
  final Color borderColor;
  final Color chipColor;
  final Color textColor;
  final double? emojiFontSize;
  final double? titleFontSize;
  final double? fontSize;
  final EdgeInsetsGeometry? padding;

  const SkillBox({
    super.key,
    required this.emoji,
    required this.title,
    required this.skills,
    required this.borderColor,
    required this.chipColor,
    required this.textColor,
    this.emojiFontSize,
    this.titleFontSize,
    this.fontSize,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.blockHeight * 33,
      width: SizeConfig.blockWidth * 22,
      padding: EdgeInsets.all(SizeConfig.blockWidth * 0.5),
      margin: EdgeInsets.all(SizeConfig.blockWidth * 0.5),
      decoration: BoxDecoration(
        color: AppColors.animatedTagBackgroundColor,
        border: Border.all(color: borderColor, width: 1.2),
        borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              emoji,
              style: TextStyle(
                fontSize: emojiFontSize ?? SizeConfig.blockWidth * 2,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.blockHeight * 1.5),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: titleFontSize ?? SizeConfig.blockWidth * 1,
                color: Colors.white,
              ),
            ),
            SizedBox(height: SizeConfig.blockHeight * 2),
            LayoutBuilder(
              builder: (context, constraints) {
                return ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: constraints.maxWidth),
                  child: Wrap(
                    spacing: SizeConfig.blockWidth * 2.5,
                    runSpacing: SizeConfig.blockWidth * 1,
                    alignment: WrapAlignment.center,
                    children:
                        skills
                            .map(
                              (skill) => Container(
                                padding:
                                    padding ??
                                    EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 9,
                                    ),
                                decoration: BoxDecoration(
                                  color: chipColor,
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: borderColor),
                                ),
                                child: Text(
                                  skill,
                                  style: TextStyle(
                                    color: textColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize:
                                        fontSize ?? SizeConfig.blockWidth * 0.8,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
