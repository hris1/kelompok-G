import 'package:flutter/material.dart';

class TeksClass extends StatefulWidget {
  final String conten;
  TeksClass({this.conten});
  @override
  _TeksClassState createState() => _TeksClassState();
}

class _TeksClassState extends State<TeksClass> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.conten,
        style: TextStyle(
          color: Colors.orange,
        ));
  }
}
