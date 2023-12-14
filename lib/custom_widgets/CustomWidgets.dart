import 'dart:ffi';

import 'package:flutter/material.dart';

import '../utils/Constants.dart';

Widget addMargin({required double margin}) {
  return SizedBox(height: margin);
}

Widget appEmailField({required TextEditingController controller, required TextInputAction textInputAction}) {
  return Container(
    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(width: 1.2, color: AppColors.gray)),
    child: TextFormField(
      controller: controller,
      textInputAction: textInputAction,
      style: const TextStyle(color: AppColors.black, fontSize: UIConstants.simpleLabelSize, fontFamily: AppConstants.appFontFamily, fontStyle: FontStyle.normal),
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        border: InputBorder.none,
        icon: Icon(Icons.email),
        hintText: 'Enter email address',
      ),
    ),
  );
}

Widget appPasswordField({required TextEditingController controller}) {
  return Container(
    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(width: 1.3, color: AppColors.gray)),
    child: TextFormField(
      controller: controller,
      obscureText: true,
      enableSuggestions: false,
      autocorrect: false,
      style: const TextStyle(color: AppColors.black, fontSize: UIConstants.simpleLabelSize, fontFamily: AppConstants.appFontFamily, fontStyle: FontStyle.normal),
      decoration: const InputDecoration(
        border: InputBorder.none,
        icon: Icon(Icons.lock),
        hintText: 'Enter password',
      ),
    ),
  );
}

Widget appButton({required String text, required onPressed, required Color bgColor}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(shape: const StadiumBorder(), backgroundColor: bgColor),
    child: SizedBox(
      height: UIConstants.buttonHeight,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: AppColors.white, fontSize: UIConstants.buttonTextSize, fontFamily: AppConstants.appFontFamily, fontStyle: FontStyle.normal),
        ),
      ),
    ),
  );
}

Widget clickableLabel({required String text, required onPressed, required Color textColor, required bool isBold}) {
  return InkWell(
    onTap: onPressed,
    child: Text(text, style: TextStyle(color: textColor, fontSize: UIConstants.simpleLabelSize, fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
  );
}

Widget smallClickableIcon({required String image, required onPress, required double size}) {
  return GestureDetector(
    onTap: onPress,
    child: Image.asset(
      image,
      height: size,
      width: size,
    ),
  );
}

Widget appRegularLabel({required String text}) {
  return Text(text, style: const TextStyle(color: AppColors.textColor, fontSize: UIConstants.simpleLabelSize, fontFamily: AppConstants.appFontFamily, fontStyle: FontStyle.normal));
}

Widget appRegularCenterLabel({required String text}) {
  return Text(text, style: const TextStyle(color: AppColors.textColor, fontSize: UIConstants.simpleLabelSize, fontFamily: AppConstants.appFontFamily, fontStyle: FontStyle.normal), textAlign: TextAlign.center);
}

Widget appBoldLabel({required String text}) {
  return Text(text, style: const TextStyle(color: AppColors.textColor, fontSize: UIConstants.simpleLabelSize, fontFamily: AppConstants.appGothamFamily, fontWeight: FontWeight.w700), textAlign: TextAlign.start);
}

Widget appBoldHeading({required String text}) {
  return Text(text, style: TextStyle(color: AppColors.black, fontSize: UIConstants.headingTextSize, fontFamily: AppConstants.appGothamFamily, fontWeight: FontWeight.w700), textAlign: TextAlign.start);
}

Widget appBoldSmallHeading({required String text}) {
  return Text(text, style: TextStyle(decoration: TextDecoration.underline, decorationThickness: 3, color: AppColors.black, fontSize: UIConstants.smallHeadingTextSize, fontFamily: AppConstants.appGothamFamily, fontWeight: FontWeight.w700), textAlign: TextAlign.start);
}

Widget appDropDownContainer({required Widget child, required bool showError}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.2,
            color: AppColors.gray,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(32),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 17, top: 3.75, bottom: 3.75),
          child: child,
        ),
      ),
      const SizedBox(
        height: 7,
      ),
      showError
          ? const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Please Select One',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 13,
                ),
              ),
            )
          : Container(),
    ],
  );
}

Widget appDropDownButton({required List<String> itemList, required String dropDownValue, required onValueChanged}) {
  return DropdownButton(
    isExpanded: true,
    hint: const Text('Please Select Currency', style: TextStyle(fontSize: 15)),
    value: dropDownValue,
    alignment: Alignment.centerRight,
    elevation: 16,
    style: const TextStyle(backgroundColor: Colors.white, color: Colors.black),
    underline: const SizedBox(),
    onChanged: (String? newValue) {
      onValueChanged(newValue!);
    },
    items: itemList.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value.toString(),
            textAlign: TextAlign.right,
            style: const TextStyle(color: AppColors.black, fontSize: UIConstants.simpleLabelSize, fontFamily: AppConstants.appFontFamily, fontStyle: FontStyle.normal),
          ));
    }).toList(),
  );
}

Widget appInputField({required String hintText, required TextInputType type, required TextEditingController controller, required TextInputAction textInputAction}) {
  return Container(
    padding: const EdgeInsets.only(left: 15, right: 17, top: 3.75, bottom: 3.75),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(32), border: Border.all(width: 1.2, color: AppColors.gray)),
    child: TextFormField(
      controller: controller,
      textInputAction: textInputAction,
      style: const TextStyle(color: AppColors.black, fontSize: UIConstants.simpleLabelSize, fontFamily: AppConstants.appFontFamily, fontStyle: FontStyle.normal),
      keyboardType: type,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintText,
      ),
    ),
  );
}

Widget appCheckBox({required String text, required bool checkboxValue, required onCheckboxChanged, required int type}) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
    Checkbox(
        value: checkboxValue,
        onChanged: (bool? value) {
          onCheckboxChanged(value, type);
        }),
    Text(text, style: const TextStyle(color: AppColors.black, fontSize: UIConstants.simpleLabelSize, fontFamily: AppConstants.appFontFamily, fontStyle: FontStyle.normal)), //Text//Checkbox
  ] //<Widget>[]
      );
}
