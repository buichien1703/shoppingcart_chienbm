import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qsoft_interview_shoppingcart_chienbm/features/splash/src_splash.dart';

import '../../values/assets.dart';
import '../src_feature.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(''),
            SizedBox(
                height: 150, width: 150, child: Image.asset(AppAssets.splash)),
            textSplash(StrHome.textSplash),
          ],
        ),
      ),
    );
  }
}
