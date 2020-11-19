import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:tasek/home/home.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TASEK',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        backgroundColor: Color(0xFFF1C40F),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                width: 200,
                height: 200,
                child: new Image.asset(
                  'img/inka.png',
                ),
              ),
            ),
            Text(
              'Selamat Datang',
              style: TextStyle(
                color: Colors.amberAccent,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            Text(
              'Artikel Nelayan Lokal Indonesia',
              style: TextStyle(fontSize: 12.0),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 400.0),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      RaisedButton(
                        elevation: 10,
                        color: Colors.amberAccent,
                        child: Text(
                          'Delok',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100.0),
            bottomRight: Radius.circular(100.0),
          ),
        ),
      ),
    );
  }
}
