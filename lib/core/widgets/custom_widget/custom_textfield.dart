import 'package:flutter/material.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String? hintText;
  final int maxLines;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final double? height;
  final double? width;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.maxLines = 1,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.height = 35,
    this.width = 200,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.symmetric(horizontal: 1),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        maxLines: maxLines,
        style: TextStyle(color: AppColors.white),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: AppColors.white.withAlpha(120)),
          filled: true,
          fillColor: AppColors.black.withAlpha(40),
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.grey.withAlpha(25)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.primaryCyan, width: 2),
          ),
        ),
      ),
    );
  }
}
