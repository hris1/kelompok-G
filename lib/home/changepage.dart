import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChangePage {
  ChangePage(BuildContext context, StatefulWidget classes) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) {
          return classes;
        },
      ),
    );
  }
}
