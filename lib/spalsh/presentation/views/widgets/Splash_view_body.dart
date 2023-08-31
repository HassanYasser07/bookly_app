import 'package:bookly_app/core/utils/assets_image.dart';
import 'package:bookly_app/features/presentation/views/widgets/slidind_text.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
  }


  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
       SlidingText(slidingAnimation: slidingAnimation)

      ],
    );
  }
  void initSlidingAnimation() {
    animationController=AnimationController(
        vsync: this,
        duration:const Duration(seconds: 1));
    slidingAnimation =Tween<Offset>(begin:const Offset(0,2) ,end:const Offset(0,0) ).animate(animationController);
    animationController.forward();
  }
}

