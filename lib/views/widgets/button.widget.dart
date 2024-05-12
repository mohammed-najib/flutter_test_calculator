import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final void Function() onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  final String text;
  final Alignment align;

  const ButtonWidget({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    this.foregroundColor = Colors.white,
    required this.text,
    this.align = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          alignment: align,
          fixedSize: const Size(48, 48),
          shape: const RoundedRectangleBorder(),
        ),
        child: Text(
          text,
        ),
      ),
    );
  }
}
