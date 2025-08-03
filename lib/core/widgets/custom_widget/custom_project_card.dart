import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';
import 'package:rohansunar_portfolio/core/widgets/custom_widget/custom_button.dart';

class ProjectCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String description;
  final List<String> features;
  final List<String> tags;
  final Color color;

  const ProjectCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.features,
    required this.tags,
    required this.color,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovered = false;
  bool _isGitHubHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: EdgeInsets.all(SizeConfig.blockWidth * 3),
        margin: EdgeInsets.symmetric(
          vertical: SizeConfig.blockHeight * 2.5,
          horizontal: SizeConfig.blockWidth * 1.5,
        ),
        width: 400,
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
                    size: SizeConfig.blockHeight * 4,
                    color: widget.color,
                  ),
                ),
                //Github Icon
                MouseRegion(
                  onEnter: (_) => setState(() => _isGitHubHovered = true),
                  onExit: (_) => setState(() => _isGitHubHovered = false),
                  child: GestureDetector(
                    onTap: () {},
                    child: CustomButton(
                      height: SizeConfig.blockHeight * 5.5,
                      width: SizeConfig.blockWidth * 3,
                      onPressed: () async {},
                      padding: EdgeInsets.all(SizeConfig.blockWidth * 0.2),
                      borderRadius: 25,
                      backgroundColor:
                          _isGitHubHovered
                              ? AppColors.softPurple
                              : AppColors.grey.withAlpha(0),
                      overlayColor: Colors.transparent,
                      childWidget: FaIcon(
                        FontAwesomeIcons.github,
                        size: SizeConfig.blockHeight * 4,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.blockHeight * 2.5),

            // Title
            Text(
              widget.title,
              style: TextStyle(
                color: widget.color,
                fontSize: SizeConfig.blockWidth * 1.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: SizeConfig.blockHeight * 2.5),

            // Description
            Text(
              widget.description,
              style: TextStyle(
                color: Colors.white.withAlpha(150),
                fontSize: SizeConfig.blockWidth * 0.9,
              ),
            ),
            const SizedBox(height: 18),

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
              spacing: 40,
              runSpacing: 10,
              children:
                  widget.features.map((feature) {
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.fiber_manual_record,
                          size: SizeConfig.blockWidth * 0.8,
                          color: widget.color,
                        ),
                        SizedBox(width: SizeConfig.blockWidth * 0.5),
                        Text(
                          feature,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.blockWidth * 0.8,
                          ),
                        ),
                      ],
                    );
                  }).toList(),
            ),

            const SizedBox(height: 20),

            // Tags
            Wrap(
              spacing: 8,
              children:
                  widget.tags.map((tag) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
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
                          fontSize: SizeConfig.blockWidth * 0.8,
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
