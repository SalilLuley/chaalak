import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';
import 'splash_viewmodel.dart';

class SplashView extends HookWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController();

    return ViewModelBuilder<SplashViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Lottie.asset(
            "assets/lottie/map.json",
            onLoaded: (composition) {
              animationController.addStatusListener((status) {
                if (status == AnimationStatus.completed) {
                  model.indicateAnimationComplete();
                }
              });

              // Configure the AnimationController with the duration of the
              // Lottie file and start the animation.
              animationController
                ..duration = composition.duration
                ..forward();
            },
          ),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: () => model.navigateToDetail()),
      ),
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
