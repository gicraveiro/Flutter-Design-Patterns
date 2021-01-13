import 'package:flutter/material.dart';

import '../dialogfactory.dart';
import '../dialog_action.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int radioValue = -1;

  void _handleRadioValueChange(int value) {
    setState(() {
      radioValue = value;
    });
  }

  void _openDialog() {
    DialogFactory.showAlertDialog(
      context,
      radioValue: radioValue,
      title: Text('Alert Dialog!!!'),
      content: Text(
          'This is an alert dialog! It means you should be in alert state... right?'),
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
            new Radio(
              value: 0,
              groupValue: radioValue,
              onChanged: _handleRadioValueChange,
            ),
            new Text('IOS'),
            new Radio(
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
