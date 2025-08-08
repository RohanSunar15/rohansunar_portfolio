import 'package:flutter/material.dart';
import 'package:rohansunar_portfolio/core/config/size_config/size_config.dart';
import 'package:rohansunar_portfolio/core/theme/app_colors.dart';

class AnimatedSkillTag extends StatefulWidget {
  final String label;
  final Color color;
  final Offset startOffset;

  const AnimatedSkillTag({
    super.key,
    required this.label,
    required this.color,
    required this.startOffset,
  });

  @override
  State<AnimatedSkillTag> createState() => _AnimatedSkillTagState();
}

class _AnimatedSkillTagState extends State<AnimatedSkillTag>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(
      begin: 0,
      end: 10,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return AnimatedBuilder(
      animation: _animation,
      builder: (_, child) {
        return Positioned(
          left: widget.startOffset.dx,
          top: widget.startOffset.dy + _animation.value,
          child: child!,
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.blockWidth * 0.5,
          vertical: SizeConfig.blockHeight * 0.5,
        ),
        decoration: BoxDecoration(
          color: AppColors.animatedTagBackgroundColor.withAlpha(200),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey, width: 0.5),
        ),
        child: Text(
          widget.label,
          style: TextStyle(
            color: widget.color,
            fontSize: SizeConfig.blockWidth * 2,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
