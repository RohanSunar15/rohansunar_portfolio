import 'package:flutter/material.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';

class CustomSkillChip extends StatefulWidget {
  final String label;
  const CustomSkillChip({super.key, required this.label});

  @override
  State<CustomSkillChip> createState() => _CustomSkillChipState();
}

class _CustomSkillChipState extends State<CustomSkillChip> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.blockWidth * 0.2),
      child: MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            color:
                isHovered
                    ? AppColors.primaryCyan.withAlpha(20)
                    : AppColors.grey.withAlpha(20),

            borderRadius: BorderRadius.circular(20),
          ),

          child: Text(
            widget.label,
            style: TextStyle(
              color: isHovered ? AppColors.brightCyan : AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
