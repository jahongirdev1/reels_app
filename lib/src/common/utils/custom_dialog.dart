import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  void okButton(BuildContext context) => Navigator.pop(context);

  @override
  Widget build(BuildContext context) => CupertinoAlertDialog(
        title: const Text('Title'),
        content: const Text('Content'),
        actions: [
          MaterialButton(
            onPressed: () => okButton(context),
            child: const Text('Ok'),
          ),
        ],
      );
}
