import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/calculator.controller.dart';
import 'views/screen/main.screen.dart';

void main() {
  runApp(const TestCalculatorApp());
}

class TestCalculatorApp extends StatelessWidget {
  const TestCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (_) => CalculatorController(),
        child: const MainScreen(),
      ),
    );
  }
}
