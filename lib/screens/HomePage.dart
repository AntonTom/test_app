import 'package:flutter/material.dart';
import 'package:test_app/screens/FullScreenPage.dart';
import 'package:test_app/screens/ImageListPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Center(
          child: Text(
            'Test Task',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 25),
              child: Text(
                'Choose Button',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 250,
          ),
          Row(
            children: <Widget>[
              Container(
                width: 150,
                height: 35,
                margin: EdgeInsets.only(left: 35),
                child: RaisedButton(
                  color: Colors.black,
                  elevation: 8,
                  onPressed: () {
                    navigateToFullScreenPage(context);
                  },
                  child: Text(
                    'Full Screen Page',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Container(
                width: 150,
                height: 35,
                margin: EdgeInsets.only(left: 35),
                child: RaisedButton(
                  color: Colors.black,
                  elevation: 8,
                  onPressed: () {
                    navigateToImageListPage(context);
                  },
                  child: Text(
                    'ImageListPage',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future navigateToImageListPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ImageListPage()));
  }

  Future navigateToFullScreenPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => FullScreenPage()));
  }
}
