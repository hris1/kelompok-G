import 'package:flutter/material.dart';
import 'package:tasek/detail.dart';
import 'package:tasek/animation/card.dart';
import 'package:tasek/animation/teks.dart';
import 'package:tasek/routing.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contoh Custom"),
        centerTitle: true,
      ),
      body: Container(
          child: ListView.separated(
              separatorBuilder: (context, int x) {
                return Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.white,
                );
              },
              itemCount: 3,
              itemBuilder: (context, int i) {
                return InkWell(
                    onTap: () {
                      Routes.changePage(
                          context,
                          DetailPage(
                            teks: 'bagian ke-${(i + 1)}',
                          ));
                    },
                    child: CardView(
                      warna: Colors.teal,
                      isiTeks: 'bagian ke-${(i + 1)}',
                    ),
                    itemBuilder: (context, int i) {
                      return InkWell(
                        onTap: () {
                          Routes.changePage(
                              context,
                              DetailPage(
                                teks: 'bagian ke-${(i + 1)}',
                              ));
                        },
                        child: CardExtraction(
                          Colors.teal,
                          'bagian ke-${(i + 1)}',
                        ),
                      );
                    });
              })),
    );
  }
}
