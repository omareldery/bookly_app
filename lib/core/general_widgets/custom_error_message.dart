import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorMessage extends StatelessWidget {
  final String errorMessage;
  const CustomErrorMessage({super.key, required this.errorMessage});
  @override
  Widget build(BuildContext context) {
    return  Text(errorMessage,style: Styles.textStyle18,);
  }
}
