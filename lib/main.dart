import 'package:flutter/material.dart';

import 'features/splash/src_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.white,fontSize: 24
          ),
          bodyMedium: TextStyle(color: Colors.white,fontSize: 20),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}


