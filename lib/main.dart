import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = [];
  int num = 0;

  @override
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: Column(
          children: [
            Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                    onPressed: () {
                      setState(() {
                       _products.add('number ${num}');
                       print(num);
                       num++;
                      });
                    },
                    child: Text('Add Product'))),

          ],
        ),
      ),
    );
  }
}
