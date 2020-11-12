import 'package:flutter/material.dart';
import 'package:tasek/Animation/teks.dart';

class CardView extends StatelessWidget {
  final Color warna;
  final String isiTeks;
  CardView({this.warna, this.isiTeks});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TeksClass(isi: isiTeks),
        ],
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: warna,
      ),
    );
  }
}
