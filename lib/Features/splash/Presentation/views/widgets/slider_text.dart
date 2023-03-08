import 'package:flutter/cupertino.dart';

class SliderText extends StatelessWidget {
  const SliderText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, widget) {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'Read All Books Free.',
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
