import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/calculator.controller.dart';
import 'button.widget.dart';

class TopWidget extends StatefulWidget {
  const TopWidget({super.key});

  @override
  State<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  String displayValue = "0";

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 200,
      ),
      color: Colors.blue.shade200,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Consumer<CalculatorController>(
                  builder: (context, calculator, child) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      for (final result
                          in calculator.previousCalculationsWithResults)
                        Column(
                          children: [
                            Row(
                              children: [
                                ButtonWidget(
                                  onPressed: () => context
                                      .read<CalculatorController>()
                                      .setNewDisplayedValue(result.$1),
                                  backgroundColor: Colors.transparent,
                                  foregroundColor: Colors.black,
                                  text: "${result.$1} = ${result.$2}",
                                  align: Alignment.centerLeft,
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),
                    ],
                  ),
                );
              }),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(16),
              child: Consumer<CalculatorController>(
                  builder: (context, calculator, child) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.linear,
                  color: displayValue == calculator.displayedValue
                      ? Colors.red
                      : Colors.transparent,
                  onEnd: () {
                    setState(() {
                      displayValue = calculator.displayedValue;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      displayValue,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
