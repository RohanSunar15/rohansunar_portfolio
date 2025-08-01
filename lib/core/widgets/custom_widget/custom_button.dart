import 'package:flutter/material.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.childWidget,
    this.onPressed,
    this.backgroundColor,
    this.borderSideColor,
    this.decoration,
    this.padding,
    this.childWidgetDistance,
    this.borderRadius,
    this.margin,
    this.height,
    this.width,
    this.overlayColor,
  });

  final void Function()? onPressed;
  final Color? backgroundColor;
  final Color? overlayColor;
  final Color? borderSideColor;
  final Decoration? decoration;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? childWidgetDistance;
  final double? borderRadius;
  final double? height;
  final double? width;

  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      decoration: decoration,
      child: OutlinedButton(
        onPressed: onPressed ?? () {},
        style: OutlinedButton.styleFrom(
          overlayColor: overlayColor ?? AppColors.transparent,
          backgroundColor: backgroundColor,
          padding: padding,
          side: BorderSide(color: borderSideColor ?? AppColors.transparent),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
          ),
        ),
        child: childWidget,
      ),
    );
  }
}
