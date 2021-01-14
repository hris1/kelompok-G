import 'package:flutter/material.dart';
import 'package:tasek/layout/user.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
        padding: const EdgeInsets.all(25),
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Selamat Datang",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87)),
                  prefixIcon: Icon(
                    Icons.person,
                    size: 30,
                  ),
                  hintText: "Masukkan username ",
                  hintStyle: TextStyle(color: Colors.black87),
                  labelText: "Username",
                  labelStyle: TextStyle(color: Colors.black87),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87)),
                  prefixIcon: Icon(Icons.lock, size: 30),
                  hintText: "Masukkan Password ",
                  hintStyle: TextStyle(color: Colors.black87),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.black87),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.cyan,
                elevation: 5,
                child: Container(
                  height: 50,
                  child: InkWell(
                    splashColor: Colors.white,
                    child: Center(
                      child: Text(
                        "Masuk",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => User(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
