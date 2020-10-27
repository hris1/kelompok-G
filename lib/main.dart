import 'package:flutter/material.dart';

void main() { var app = new MyApp(); runApp(app); }

class MyApp extends StatelessWidget {
   @override Widget build(BuildContext context) { 
     return MaterialApp
     ( title: 'sdgs 14', home: Scaffold
     ( appBar: AppBar
     ( title: Text('DAX'), ), 
     body: Text('Haris Arifin - 182410103028 , Ferdy Dwi Kurniawan - 182410103090') ), ); 
    }
}