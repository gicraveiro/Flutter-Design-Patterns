import 'package:factory_method/dialog_action.dart';
//import 'package:factory_method/dialogfactory.dart';
import 'package:factory_method/idialog.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';

class AndroidDialog implements IDialog {
  @override
  Widget create(BuildContext context, Widget title, Widget content,
      List<DialogAction> actions) {
    return AlertDialog(
      title: title,
      content: content,
      actions: actions?.map<Widget>((a) {
        //se nao for nulo, faça o map dela
        return FlatButton(
          child: a.child,
          onPressed: a.onPressed,
        );
      })?.toList(),
    );
  }
}
