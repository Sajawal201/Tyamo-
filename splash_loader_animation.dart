import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashAnimation extends StatelessWidget {
  const SplashAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.halfTriangleDot(
        color: const Color.fromARGB(255, 5, 108, 192),
        size: 70,
      ),
    );
  }
}
