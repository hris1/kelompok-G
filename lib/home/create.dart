import 'package:flutter/material.dart';
import 'package:tasek/layout/user.dart';
import 'home.dart';
import 'user.dart';

class Create extends StatefulWidget {
  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/bg.png"), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 8.0,
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Artikel Tasek",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 70,
                    fontFamily: "Almondita",
                  ),
                ),
                Text(
                  "Create",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Icon(
                  Icons.list,
                  color: Colors.white,
                  size: 30,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Judul",
              style: TextStyle(fontSize: 22, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.fiber_new),
                  hintText: "judul artikel",
                  border: InputBorder.none),
              style: TextStyle(fontSize: 22.0, color: Colors.black),
            ),
          ),
          Text(
            "Isi Artikel",
            style: TextStyle(fontSize: 22, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.format_align_center),
                  hintText: "Isi artikel",
                  border: InputBorder.none),
              style: TextStyle(fontSize: 22.0, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 350),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.check,
                    size: 30,
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
                IconButton(
                  icon: Icon(
                    Icons.close,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => User(),
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
