import 'package:factory_method/dialogfactory.dart';
import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';

import 'dialog_action.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Factory Method',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => MyHomePage(title: 'Factory Method Home Page'),
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title /*, this.platformLayout*/}) : super(key: key);

  final String title;
  //final String platformLayout;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int radioValue = 1;

  void _handleRadioValueChange(int value) {
    setState(() {
      radioValue = value;
    });
  }

  void _openDialog() {
    DialogFactory.showAlertDialog(
      context,
      title: Text('Alert Dialog!!!'),
      content: Text(
          'THIS IS AN ALERT DIALOG! IT MEANS YOU SHOULD BE IN ALERT STATE, RIGHT?'),
      actions: [
        DialogAction(
          child: Text('YES'),
          onPressed: () => print('YES'),
        ),
        DialogAction(
          child: Text('NO'),
          onPressed: () => print('NO'),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio(
              value: 0,
              groupValue: radioValue,
              onChanged: _handleRadioValueChange,
            ),
            new Text('IOS'),
            Radio(
              value: 1,
              groupValue: radioValue,
              onChanged: _handleRadioValueChange,
            ),
            new Text('Android'),
            RaisedButton(
              child: Text('Show Alert'),
              color: Colors.purple,
              textColor: Colors.white,
              onPressed: _openDialog,
            ),
          ],
        ),
      ),
    );
  }
}
