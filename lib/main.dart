import 'package:flutter/material.dart';
import 'package:product/productbox.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "baju",
                description: "iPhone is the stylist phone ever",
                price: 1000,
                image: "baju1.jpg"),
            ProductBox(
                name: "baju2",
                description: "Pixel is the most featureful phone ever",
                price: 800,
                image: "baju2.jpg"),
            ProductBox(
                name: "baju3",
                description: "Laptop is most productive development tool",
                price: 2000,
                image: "baju3.jpg"),
          ],
        ));
  }
}
