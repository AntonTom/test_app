import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test_app/screens/ImageListPage.dart';

class FullScreenPage extends StatefulWidget {
  @override
  _FullScreenPageState createState() => _FullScreenPageState();
}

class _FullScreenPageState extends State<FullScreenPage> {
  List data;
  final url = 'https://api.unsplash.com/photos/?client_id=cf49c08b444ff4cb9e4d126b7e9f7513ba1ee58de7906e4360afc1a33d1bf4c0';
  Future<String> getData() async {
    var response = await http.get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    this.setState(() {
      data = json.decode(response.body);
    });
  }

  @override
  void initState() {
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Full Screen Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: (data == null)
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SafeArea(
              child: Center(
                child: Container(
                  child: Image.network(
                    data[1]['urls']['regular'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
    );
  }

  void backToMainPage(context) {
    Navigator.pop(context);
  }
}
