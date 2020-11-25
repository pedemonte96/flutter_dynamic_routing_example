import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductScreen extends StatelessWidget {
  String id1, id2, id3, id4;

  ProductScreen({
    Key key,
    this.id1,
    this.id2,
    this.id3,
    this.id4,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Test example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Strings passed: " + "$id1 " + "$id2 " + "$id3 " + "$id4 ",
            ),
          ],
        ),
      ),
    );
  }
}
