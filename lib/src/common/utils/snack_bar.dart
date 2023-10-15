import 'package:flutter/material.dart';

void showSnackBar({
 required BuildContext context,
 required Color color,
 required String text,
}) =>
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          content: Text(text),
          duration: const Duration(seconds: 2),
          backgroundColor: color,
        ),
      );
