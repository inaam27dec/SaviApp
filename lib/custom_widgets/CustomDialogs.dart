import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../utils/Constants.dart';

Future<void> showAlertDialog({required BuildContext context, required String title, required String desc, required String buttonText}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[Text(desc)],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text(buttonText),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

Future<void> showConfirmationDialog({required BuildContext context, required String title, required String desc, required onPressYes}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[Text(desc)],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text("Yes"),
            onPressed: () {
              Navigator.of(context).pop();
              onPressYes();
            },
          ),
          TextButton(
            child: const Text("No"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

void showHideLoader({required bool isShow}) {
  if (isShow) {
    EasyLoading.instance.loadingStyle = EasyLoadingStyle.custom;
    EasyLoading.instance.indicatorSize = 100;
    EasyLoading.instance.progressColor = AppColors.transparent;
    EasyLoading.instance.backgroundColor = AppColors.transparent;
    EasyLoading.instance.userInteractions = false;
    EasyLoading.instance.indicatorColor = AppColors.primary;
    EasyLoading.instance.textColor = AppColors.white;
    EasyLoading.instance.boxShadow = <BoxShadow>[];
    EasyLoading.instance.indicatorType = EasyLoadingIndicatorType.foldingCube;
    EasyLoading.show();
  } else {
    EasyLoading.dismiss();
  }
}
