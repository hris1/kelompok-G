import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tasek/layout/UserController.dart';
import 'package:tasek/layout/changepage.dart';
import 'package:tasek/layout/detail.dart';
import 'package:tasek/layout/start.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List data = [];
  void getUser() async {
    UserController.getData().then((res) {
      setState(() {
        data = res;
      });
      print(data.toString());
    });
  }

  @override
  void initState() {
    getUser();
    super.initState();
  }

  Widget atas() {
    return AppBar(
      title: Text(
        'TASEK',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
      backgroundColor: Colors.cyan,
    );
  }

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
                  backgroundColor: Colors.orange,
                  child: new Image.asset('img/logo.png')),
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
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, int i) {
            return InkWell(
              onTap: () {
                ChangePage(
                    context,
                    Detail(
                      data: data[i],
                    ));
                // print(data[i].toString());
              },
              child: Card(
                shadowColor: Colors.deepOrange,
                child: ListTile(
                  title: Column(
                    children: [
                      Text("${data[i]["name"]}"),
                      Text("${data[i]["email"]}"),
                      Text("${data[i]["address"]["street"]}"),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
