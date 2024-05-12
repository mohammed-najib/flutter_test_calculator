import 'package:flutter/material.dart';

import '../widgets/buttons_panel.widget.dart';
import '../widgets/top.widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 400,
            maxHeight: MediaQuery.of(context).size.height,
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TopWidget(),
              ButtonsPanelWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
