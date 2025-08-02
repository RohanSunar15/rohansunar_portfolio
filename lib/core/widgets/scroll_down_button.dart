import 'package:flutter/material.dart';

class DropArrowButton extends StatefulWidget {
  final VoidCallback? onTap;

  const DropArrowButton({super.key, this.onTap});

  @override
  State<DropArrowButton> createState() => _DropArrowButtonState();
}

class _DropArrowButtonState extends State<DropArrowButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..repeat();

    _offsetAnimation = TweenSequence<Offset>([
      TweenSequenceItem(
        tween: Tween<Offset>(
          begin: const Offset(0, -0.1),
          end: const Offset(0, 0.2),
        ).chain(CurveTween(curve: Curves.easeInOut)),
        weight: 70,
      ),
      TweenSequenceItem(
        tween: Tween<Offset>(
          begin: const Offset(0, 0.2),
          end: const Offset(0, 0),
        ).chain(CurveTween(curve: Curves.fastOutSlowIn)),
        weight: 30,
      ),
    ]).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: IconButton(
        onPressed: widget.onTap,
        icon: const Icon(
          Icons.keyboard_arrow_down_rounded,
          size: 40,
          color: Colors.white,
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
