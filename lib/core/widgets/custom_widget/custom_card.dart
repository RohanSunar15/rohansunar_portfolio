import 'package:flutter/material.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';

class CustomInfoCard extends StatefulWidget {
  final IconData icon;
  final Color iconBackgroundColor;
  final String title;
  final String description;
  final double? height;
  final double? width;
  final Color? iconColor;
  final double? iconSize;
  final double? titleFontSize;
  final double? descFontSize;
  final EdgeInsetsGeometry? padding;

  const CustomInfoCard({
    super.key,
    required this.icon,
    required this.iconBackgroundColor,
    required this.title,
    required this.description,
    this.height,
    this.width,
    this.iconColor,
    this.iconSize,
    this.titleFontSize,
    this.descFontSize,
    this.padding,
  });

  @override
  State<CustomInfoCard> createState() => _CustomInfoCardState();
}

class _CustomInfoCardState extends State<CustomInfoCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        height: widget.height,
        width: widget.width,
        margin: EdgeInsets.symmetric(vertical: SizeConfig.blockHeight * 1.5),
        padding: widget.padding ?? EdgeInsets.all(SizeConfig.blockWidth * 1),
        decoration: BoxDecoration(
          color: const Color(0xFF1E1E1E),
          borderRadius: BorderRadius.circular(16),
          boxShadow:
              _isHovered
                  ? [
                    BoxShadow(
                      color: widget.iconBackgroundColor.withAlpha(150),
                      blurRadius: 20,
                      spreadRadius: 3,
                      offset: const Offset(0, 6),
                    ),
                  ]
                  : [],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(SizeConfig.blockWidth * 1),
              decoration: BoxDecoration(
                color: widget.iconBackgroundColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                widget.icon,
                color: widget.iconColor,
                size: widget.iconSize,
              ),
            ),
            SizedBox(width: SizeConfig.blockWidth * 2),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: widget.titleFontSize,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    widget.description,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.white.withAlpha(150),
                      fontSize: widget.descFontSize,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
