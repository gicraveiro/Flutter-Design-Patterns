import 'package:builder/views/Menu.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*void _incrementCounter() {
    setState(() {});
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Container(color: Colors.purple[100]),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Menu',
                      style: TextStyle(color: Colors.purple, fontSize: 40)),
                  SizedBox(height: 100),
                  Menu(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
