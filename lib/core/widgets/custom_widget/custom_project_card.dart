import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_social_icon_button.dart';

class ProjectCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String description;
  final List<String> features;
  final List<String> tags;
  final Color color;
  final VoidCallback onTap;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? githubIconPadding;
  final double? tagFontSize;
  final double? titleFontSize;
  final double? descFontSize;
  final double? iconSize;
  final double? containerWidth;
  final double? bulletSize;
  final double? featureFontSize;

  const ProjectCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.features,
    required this.tags,
    required this.color,
    required this.onTap,
    this.padding,
    this.githubIconPadding,
    this.tagFontSize,
    this.titleFontSize,
    this.descFontSize,
    this.iconSize,
    this.containerWidth,
    this.bulletSize,
    this.featureFontSize,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: EdgeInsets.all(SizeConfig.blockWidth * 3),
        margin: EdgeInsets.symmetric(
          vertical: SizeConfig.blockHeight * 1,
          horizontal: SizeConfig.blockWidth * 0.5,
        ),
        width: widget.containerWidth ?? 400,
        decoration: BoxDecoration(
          color: AppColors.projectCardBackgroundColor,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: isHovered ? widget.color : Colors.transparent,
            width: 1.5,
          ),
          boxShadow:
              isHovered
                  ? [
                    BoxShadow(
                      color: widget.color,
                      blurRadius: 16,
                      spreadRadius: 1,
                    ),
                  ]
                  : [],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon box
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(SizeConfig.blockWidth * 1),
                  decoration: BoxDecoration(
                    color: AppColors.grey.withAlpha(60),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    widget.icon,
                    size: widget.iconSize ?? SizeConfig.blockHeight * 4,
                    color: widget.color,
                  ),
                ),

                //Github Icon
                SocialIconButton(
                  icon: FontAwesomeIcons.github,
                  iconColor: AppColors.white,
                  iconSize: widget.iconSize ?? SizeConfig.blockHeight * 3,
                  padding:
                      widget.githubIconPadding ??
                      EdgeInsets.symmetric(
                        vertical: SizeConfig.blockWidth * 0.01,
                        horizontal: SizeConfig.blockWidth * 0.1,
                      ),
                  onTap: widget.onTap,
                ),
              ],
            ),
            SizedBox(height: SizeConfig.blockHeight * 1),

            // Title
            Text(
              widget.title,
              style: TextStyle(
                color: widget.color,
                fontSize: widget.titleFontSize ?? SizeConfig.blockWidth * 1.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: SizeConfig.blockHeight * 1),

            // Description
            Text(
              widget.description,
              style: TextStyle(
                color: Colors.white.withAlpha(150),
                fontSize: widget.descFontSize ?? SizeConfig.blockWidth * 0.9,
              ),
            ),
            SizedBox(height: SizeConfig.blockWidth * 2),

            // Key Features
            const Text(
              'KEY FEATURES',
              style: TextStyle(
                color: AppColors.grey,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 70,
              runSpacing: 10,
              children:
                  widget.features.map((feature) {
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.fiber_manual_record,
                          size:
                              widget.bulletSize ?? SizeConfig.blockWidth * 0.6,
                          color: widget.color,
                        ),
                        SizedBox(width: SizeConfig.blockWidth * 0.5),
                        Text(
                          feature,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:
                                widget.featureFontSize ??
                                SizeConfig.blockWidth * 0.8,
                          ),
                        ),
                      ],
                    );
                  }).toList(),
            ),

            SizedBox(height: SizeConfig.blockWidth * 2),

            // Tags
            Wrap(
              runSpacing: 10,
              spacing: 8,
              children:
                  widget.tags.map((tag) {
                    return Container(
                      padding:
                          widget.padding ??
                          const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 8,
                          ),
                      decoration: BoxDecoration(
                        color: widget.color.withAlpha(25),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        tag,
                        style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.w500,
                          fontSize:
                              widget.tagFontSize ?? SizeConfig.blockWidth * 0.9,
                        ),
                      ),
                    );
                  }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
