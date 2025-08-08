import 'package:flutter/material.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';

class SocialIconButton extends StatefulWidget {
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;
  final VoidCallback onTap;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const SocialIconButton({
    super.key,
    required this.icon,
    this.iconColor,
    this.iconSize,
    required this.onTap,
    this.margin = const EdgeInsets.symmetric(horizontal: 8),
    this.padding = const EdgeInsets.symmetric(horizontal: 8),
  });

  @override
  State<SocialIconButton> createState() => _SocialIconButtonState();
}

class _SocialIconButtonState extends State<SocialIconButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: widget.margin,
          padding: widget.padding,
          decoration: BoxDecoration(
            color: _isHovered ? AppColors.softPurple : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: _isHovered ? AppColors.transparent : AppColors.white,
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockWidth * 0.5,
              vertical: SizeConfig.blockWidth * 1,
            ),
            child: Icon(
              widget.icon,
              color: widget.iconColor,
              size: widget.iconSize,
            ),
          ),
        ),
      ),
    );
  }
}
