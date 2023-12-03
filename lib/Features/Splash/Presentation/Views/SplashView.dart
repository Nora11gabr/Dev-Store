import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:store/Core/Utils/Consts.dart';
import 'package:store/Features/Auth/Presentation/Views/LoginView.dart';
import 'package:store/Features/Splash/Presentation/Views/Widgets/SplashViewbody.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static String id = 'SplashView';
  @override
  State<SplashView> createState() => _SplashScreenState();
}

late AnimationController animationController;
late Animation<Offset> Slidinganimation;

class _SplashScreenState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    Slidinganimation = Tween(begin: const Offset(0, 15), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
    goToNextView();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SplashViewbody(),
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 5), () {
      Get.to(() => LoginView(), transition: Transition.fade);
    });
  }
}
