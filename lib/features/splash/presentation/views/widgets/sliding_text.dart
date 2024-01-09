import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, child) => SlideTransition(
        position: slidingAnimation,
        child: const Text(
          "Read Free Books",
          textAlign: TextAlign.center,
          style: Styles.textStyle30,
        ),
      ),
      animation: slidingAnimation,
    );
  }
}
