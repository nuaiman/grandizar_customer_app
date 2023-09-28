import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:grandizar_customer_app/constants/png_constants.dart';

import '../../../common/red_elevated_button_large.dart';

class SplashAppCategoriesView extends StatefulWidget {
  const SplashAppCategoriesView({super.key});

  @override
  State<SplashAppCategoriesView> createState() =>
      _SplashAppCategoriesViewState();
}

class _SplashAppCategoriesViewState extends State<SplashAppCategoriesView> {
  @override
  void initState() {
    super.initState();
  }

  final CarouselController _carouselController = CarouselController();

  int currentImageIndex = 0;

  void onImageChanged(index) {
    setState(() {
      currentImageIndex = index;
    });
  }

  void onImageChangedWithButton() {
    _carouselController.nextPage();
  }

  List categoryImages = [
    PngConstants.category1,
    PngConstants.category2,
    PngConstants.category3,
    PngConstants.category4,
    PngConstants.category5,
    PngConstants.category6,
  ];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'Skip',
                style: TextStyle(fontSize: 18, color: Color(0xFF646982)),
              )),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: 150,
              width: 150,
              child: Image.asset(
                PngConstants.grandizarLogo,
              ),
            ),
          ),
          Expanded(
              child: Align(
            alignment: Alignment.topCenter,
            child: CarouselSlider(
              carouselController: _carouselController,
              options: CarouselOptions(
                onPageChanged: (index, _) => onImageChanged(index),
                height: 400.0,
                viewportFraction: 1,
              ),
              items: categoryImages.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.asset(i);
                  },
                );
              }).toList(),
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: DotsIndicator(
              mainAxisSize: MainAxisSize.min,
              dotsCount: categoryImages.length,
              position: currentImageIndex,
              decorator: const DotsDecorator(
                activeColor: Color(0xFFEB1933),
                color: Color(0xFFFFCECE),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: RedElevatedButtonLarge(
              text: 'Next',
              onTap: onImageChangedWithButton,
            ),
          ),
        ],
      ),
    );
  }
}
