import 'package:flutter/material.dart';
import 'package:tasek/layout/mapscreen.dart';

class Detail extends StatefulWidget {
  final Map data;
  Detail({this.data});
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lebih Lengkap"),
        backgroundColor: Colors.orange,
      ),
      body: Card(
        child: ListTile(
          title: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Data diri',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange[600]),
                ),
              ),
              Text('Nama = ${widget.data['name']}'),
              SizedBox(height: 10),
              Text('User Name = ${widget.data['username']}'),
              SizedBox(height: 10),
              Text('Email = ${widget.data['email']}'),
              SizedBox(height: 10),
              Text('Nomor = ${widget.data['phone']}'),
              SizedBox(height: 10),
              Text('Alamat web = ${widget.data['website']}'),
              SizedBox(height: 20),
              Text(
                'Isi Artikel',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange[600]),
              ),
              SizedBox(height: 10),
              Text('${widget.data['address']['street']}'),
            ],
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        child: Icon(Icons.add_location),
        backgroundColor: Colors.cyan,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => (MapScreen()),
            ),
          );
        },
      ),
    );
  }
}
