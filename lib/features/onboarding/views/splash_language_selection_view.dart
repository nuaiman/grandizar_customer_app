import 'package:flutter/material.dart';
import 'package:grandizar_customer_app/constants/png_constants.dart';

import '../../../common/red_elevated_button_large.dart';
import 'splash_app_categories_view.dart';

class SplashLanguageSelectionView extends StatefulWidget {
  const SplashLanguageSelectionView({super.key});

  @override
  State<SplashLanguageSelectionView> createState() =>
      _SplashLanguageSelectionViewState();
}

class _SplashLanguageSelectionViewState
    extends State<SplashLanguageSelectionView> {
  @override
  void initState() {
    super.initState();
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
                height: 150,
                width: 150,
                child: Image.asset(
                  PngConstants.grandizarLogo,
                ),
              ),
            ),
          ),
          const Spacer(),
          RedElevatedButtonLarge(
              text: 'العربية',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SplashAppCategoriesView(),
                ));
              }),
          const SizedBox(height: 20),
          RedElevatedButtonLarge(
              text: 'English',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SplashAppCategoriesView(),
                ));
              }),
          const Spacer(),
        ],
      ),
    );
  }
}
