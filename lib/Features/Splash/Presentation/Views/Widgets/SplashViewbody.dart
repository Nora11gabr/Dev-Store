import 'package:flutter/material.dart';
import 'package:store/Core/Utils/Consts.dart';
import 'package:store/Features/Splash/Presentation/Views/SplashView.dart';

class SplashViewbody extends StatelessWidget {
  const SplashViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Image.asset(
            'assets/imgs/photo_2023-12-03_23-37-42.jpg',
            width: 200,
            height: 200,
          ),
          AnimatedBuilder(
              animation: Slidinganimation,
              builder: (context, _) {
                return SlideTransition(
                  position: Slidinganimation,
                  child: Text(
                    ' Devices Store',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: KPrimaryColor,
                        letterSpacing: 3),
                  ),
                );
              }),
          Spacer(),
        ],
      ),
    );
  }
}
