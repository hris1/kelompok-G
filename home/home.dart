import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tasek/home/start.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget atas() {
    return AppBar(
      title: Text(
        'TASEK',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
    );
  }

  var cakalan = [
    'Cakalan',
    'Ikan ini menjadi buruan utama di semua nelayan indonesia',
  ];
  var hiu = ['Hiu', 'Ikan ini menjadi predator di peselancar '];
  var paus = ['Paus ', 'Ikan terbesar di dunia yang beratnya ber ton ton '];
  var show = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: atas(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Tasek'),
              accountEmail: Text('tasekapp@gmail.com'),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Image.asset('img/inka.png')),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.home),
              title: Text('Beranda'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Start()));
              },
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.calendar),
              title: Text('Event'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            Divider(
              color: Colors.black87,
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.user),
              title: Text('Akun'),
              onTap: () {
                //add routes to navigate
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  child: new Image.asset(
                    'img/nelayan.jpg',
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Text('Ikan Cakalan',
              style: TextStyle(color: Colors.blue, fontSize: 25)),
          Container(
            height: 80,
            child: ListView(
              children: cakalan.map((e) {
                return Padding(
                  child: Text(e),
                  padding: EdgeInsets.only(top: 5.0, left: 20.0),
                );
              }).toList(),
            ),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('View'),
            color: Colors.cyan,
          ),
          Padding(padding: EdgeInsets.all(10)),
          Text('Ikan Hiu', style: TextStyle(color: Colors.blue, fontSize: 25)),
          Container(
            height: 80,
            child: ListView(
              children: hiu.map((e) {
                return Padding(
                  child: Text(e),
                  padding: EdgeInsets.only(top: 5.0, left: 20.0),
                );
              }).toList(),
            ),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('View'),
            color: Colors.cyan,
          ),
        ],
      ),
    );
  }
}
