//import 'dart:io';
import 'package:factory_method/android_dialog.dart';
import 'package:factory_method/dialog_action.dart';
import 'package:factory_method/idialog.dart';
import 'package:factory_method/ios_dialog.dart';
import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//import 'homepage.dart';
/*
Future<IDialog> getSelectedValue() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int radioValue = prefs.getInt('radio.value');
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

  return dialogData;
}*/

class DialogFactory {
  static Future<T> showAlertDialog<T>(BuildContext context,
      {Widget title, Widget content, List<DialogAction> actions}) {
    IDialog dialogData;
    //String platformLayout; //interface
    int radioValue = -1;

    // HOW TO GET RADIO VALUE?

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
