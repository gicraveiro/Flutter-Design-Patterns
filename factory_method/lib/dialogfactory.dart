import 'package:factory_method/models/android_dialog.dart';
import 'package:factory_method/dialog_action.dart';
import 'package:factory_method/models/idialog.dart';
import 'package:factory_method/models/ios_dialog.dart';
import 'package:flutter/material.dart';

class DialogFactory {
  static Future<T> showAlertDialog<T>(BuildContext context,
      {int radioValue,
      Widget title,
      Widget content,
      List<DialogAction> actions}) {
    IDialog dialogData;

    if (radioValue == 0) {
      // ios
      dialogData = IosDialog();
    } else if (radioValue == 1) {
      //android
      dialogData = AndroidDialog();
    } else {
      dialogData = AndroidDialog();
    }

    return showDialog(
      context: context,
      builder: (context) => dialogData.create(
        context,
        title ?? Text('Não informado'),
        content ?? Text('Não informado'),
        actions ?? [],
      ),
    );
  }
}
