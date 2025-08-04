import 'package:flutter/material.dart';

class AnimatedHoverText extends StatefulWidget {
  final Widget child;
  final double hoverScale;
  final Duration duration;

  const AnimatedHoverText({
    super.key,
    required this.child,
    this.hoverScale = 1.1,
    this.duration = const Duration(milliseconds: 200),
  });

  @override
  State<AnimatedHoverText> createState() => _AnimatedHoverTextState();
}

class _AnimatedHoverTextState extends State<AnimatedHoverText> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedScale(
        scale: isHovered ? widget.hoverScale : 1.0,
        duration: widget.duration,
        curve: Curves.easeInOut,
        child: widget.child,
      ),
    );
  }
}
