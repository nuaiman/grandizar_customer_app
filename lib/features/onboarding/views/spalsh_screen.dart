import 'dart:async';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:grandizar_customer_app/constants/png_constants.dart';

import 'splash_language_selection_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String welcomeText = 'Welcome to Grandizar';
  String titleText = 'Your All-in-One Super App';
  String subTitleText = 'Discover Limitless Possibilities';

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(milliseconds: 700), (timer) {
      setState(() {
        welcomeText = (welcomeText == 'Welcome to Grandizar')
            ? 'مرحبا بكم في غرانديزار'
            : 'Welcome to Grandizar';
        // -----------------------------------------------------------------
        titleText = (titleText == 'Your All-in-One Super App')
            ? 'تطبيقك الشامل والشامل'
            : 'Your All-in-One Super App';
        // -----------------------------------------------------------------
        subTitleText = (subTitleText == 'Discover Limitless Possibilities')
            ? 'اكتشف إمكانيات لا حدود لها'
            : 'Discover Limitless Possibilities';
      });
    });
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const SplashLanguageSelectionView(),
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  PngConstants.grandizarLogo,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width - 80,
            child: DottedBorder(
              strokeWidth: 2,
              color: const Color(0xFFEB1933),
              borderType: BorderType.RRect,
              radius: const Radius.circular(4),
              child: Center(
                child: Text(
                  welcomeText,
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFEB1933)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              titleText,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF999192)),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text(
              subTitleText,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF858478)),
            ),
          ),
        ],
      ),
    );
  }
}
