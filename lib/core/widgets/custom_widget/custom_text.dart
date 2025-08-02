import 'package:flutter/material.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? padding;
  final TextAlign? textAlign;
  final bool isGradient;

  const CustomText({
    super.key,
    required this.text,
    this.textColor = AppColors.white,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.onTap,
    this.padding,
    this.textAlign,
    this.isGradient = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0.0),
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          text,
          style:
              isGradient
                  ? TextStyle(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    foreground:
                        Paint()
                          ..shader = const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [AppColors.gradient1, AppColors.gradient2],
                          ).createShader(Rect.fromLTWH(0, 0, 200, 70)),
                  )
                  : TextStyle(
                    color: textColor,
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                  ),
          textAlign: textAlign,
        ),
      ),
    );
  }
}
