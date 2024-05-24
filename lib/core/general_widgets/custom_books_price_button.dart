import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomBookPriceButton extends StatelessWidget {
  const CustomBookPriceButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius, required this.title, this.onPressed,
  });
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.circular(16)),
          ),
          child: Text(
            title,
            style:
                Styles.textStyle18.copyWith(color: textColor, fontWeight: FontWeight.w500),
          )),
    );
  }
}
