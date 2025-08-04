import 'package:flutter/material.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';

class CustomText extends StatefulWidget {
  final String text;
  final Color? textColor;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? padding;
  final TextAlign? textAlign;
  final bool isGradient;
  final bool isHoverable;

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
    this.isHoverable = false,
  });

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final baseStyle =
        widget.isGradient
            ? TextStyle(
              fontSize: widget.fontSize,
              fontWeight: widget.fontWeight,
              foreground:
                  Paint()
                    ..shader = const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [AppColors.gradient1, AppColors.gradient2],
                    ).createShader(const Rect.fromLTWH(0, 0, 200, 70)),
            )
            : TextStyle(
              color:
                  widget.isHoverable && isHovered
                      ? AppColors.brightCyan
                      : widget.textColor,
              fontSize: widget.fontSize,
              fontWeight: widget.fontWeight,
            );

    return Padding(
      padding: widget.padding ?? const EdgeInsets.all(0.0),
      child: MouseRegion(
        onEnter: (_) {
          if (widget.isHoverable) setState(() => isHovered = true);
        },
        onExit: (_) {
          if (widget.isHoverable) setState(() => isHovered = false);
        },
        cursor:
            widget.onTap != null && widget.isHoverable
                ? SystemMouseCursors.click
                : MouseCursor.defer,
        child: GestureDetector(
          onTap: widget.onTap,
          child: Text(
            widget.text,
            style: baseStyle,
            textAlign: widget.textAlign,
          ),
        ),
      ),
    );
  }
}
