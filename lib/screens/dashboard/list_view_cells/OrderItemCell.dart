import 'package:flutter/material.dart';
import 'package:savostoreapp/custom_widgets/CustomWidgets.dart';
import 'package:savostoreapp/models/responseModels/RecordItemModel.dart';
import '../../../utils/Constants.dart';

Widget renderOrderItemCell({required RecordItemModel item, required int size}) {
  return Container(
    padding: EdgeInsets.all(10),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      appBoldLabel(text: "${item.parentName}-${item.number}"),
      addMargin(margin: 5),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          appRegularLabel(text: item.name!),
          appRegularLabel(text: "x${item.itemQty}"),
        ],
      ),
      addMargin(margin: 10),
      size > 1 ? Container(height: 0.7, color: AppColors.textColor) : Container()
    ]),
  );
}
