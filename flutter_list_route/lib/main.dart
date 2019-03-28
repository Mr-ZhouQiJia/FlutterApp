import 'package:flutter/material.dart';

class Products{
  final String title;  //商品标题
  final String description; //商品描述
  Products(this.title,this.description);
}


void main(){
  runApp(MaterialApp(
    title: 'list',
    home: ListApp(
      products :List.generate(20, (i) => Products('商品 $i ', '这是一个商品编号: $i')),
    ),
  ));
} 

class ListApp extends StatelessWidget {

  final List<Products> products;
  ListApp({Key key , @required this.products}) :super(key :key);

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: new Text('商品列表'),),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(products[index].title),
            subtitle: Text(products[index].description),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => ProductDetail(products:products[index]),
              
              ));
            },
          );
        },
      )
    );
  }
}

class  ProductDetail extends StatelessWidget {
  final Products products;
  ProductDetail({Key key, @required this.products}) :super(key:key);

  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text('商品详情'),),
        body: Center( 
          child: Column(
            children: <Widget>[
              Text(products.title),
              Text(products.description)
            ],
          ),
        )
      );
  }

}
