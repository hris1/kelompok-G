import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:tasek/layout/home.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/bagg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("img/logo.png", width: 200, height: 300),
            SizedBox(height: 70),
            Text(
              "TaSek",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 70,
                fontFamily: "Almondita",
              ),
            ),
            Text(
              '"Selamat Datang"',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.only(bottom: 70),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
              child: Image.asset(
                "img/start.png",
                width: 200,
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
