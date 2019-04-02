import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProductPageState();
  }
}

class ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('项目'),),
      body: Container(
        child: Text('项目'),
      ),
    );
  }
}