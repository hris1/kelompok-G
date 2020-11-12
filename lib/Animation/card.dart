import 'package:flutter/material.dart';
import 'package:tasek/Animation/teks.dart';

class CardView extends StatelessWidget {
  final Color color;
  final String content;
  CardView({this.color, this.content});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TeksClass(isi: content),
        ],
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
      ),
    );
  }
}
