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
      appBar: AppBar(title: Text('散标',style: TextStyle(color: Colors.black),),backgroundColor: Colors.white,elevation: 0.0,),
      body: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            
          ],
        ),
      ),
    );
  }
}