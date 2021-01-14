import 'package:flutter/material.dart';
import 'package:tasek/layout/create.dart';
import 'package:tasek/layout/start.dart';
import 'UserController.dart';
import 'changepage.dart';
import 'detail.dart';

class User extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
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

  void _signOut() {
    AlertDialog alertDialog = AlertDialog(
      content: Container(
        height: 215,
        child: Column(
          children: <Widget>[
            ClipOval(
              child: Container(
                width: 100,
                height: 100,
                child: Image.asset(
                  "img/logo.png",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Yakin Keluar!",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InkWell(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.check),
                      Padding(
                        padding: const EdgeInsets.all(5),
                      ),
                      Text("Yes")
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Start(),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.close),
                      Padding(
                        padding: const EdgeInsets.all(5),
                      ),
                      Text("Batal")
                    ],
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.cyan,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Create(),
            ),
          );
        },
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 200),
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
          Container(
            height: 200.0,
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
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("img/logo.png"),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Welcome",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        Text("User",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: IconButton(
                    icon: Icon(Icons.exit_to_app,
                        color: Colors.white, size: 35.0),
                    onPressed: () {
                      _signOut();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
