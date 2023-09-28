import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'features/onboarding/views/spalsh_screen.dart';

void main() {
  runApp(const ProviderScope(child: GrandizarCustomerApp()));
}

class GrandizarCustomerApp extends StatelessWidget {
  const GrandizarCustomerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grandizar Customer App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      ),
      home: const SplashScreen(),
    );
  }
}
