import 'package:flutter/material.dart';

class ErrorLoadDataWidget extends StatelessWidget {
  const ErrorLoadDataWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(color: Colors.red),
      ),
    );
  }
}
