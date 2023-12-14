import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:savostoreapp/custom_widgets/CustomWidgets.dart';
import 'package:savostoreapp/utils/Constants.dart';

import '../../../models/responseModels/LoginResponseModel.dart';
import '../../../utils/Extensions.dart';
import '../../../utils/Prefs.dart';
import '../DashboardScreen.dart';

class CreateOrderSuccessScreen extends StatelessWidget {
  const CreateOrderSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String setTitle(){
      var userObj = UserData.fromJson(jsonDecode(Prefs.getString(PrefConstants.userData)!));
      return "Thank you, ${userObj.firstName}!";
    }

    void onPress(){}

    void onPressViewOrders(){
      AppExtensions.replaceWithAll(context, DashboardScreen());
    }

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            appBoldHeading(text: setTitle()),
            addMargin(margin: 10),
            appRegularLabel(text: AppLabels.receiveOrderLabel),
            addMargin(margin: 20),
            smallClickableIcon(image: AppAssets.successImage, onPress: onPress, size: 50),
            addMargin(margin: 20),
            appBoldSmallHeading(text: AppLabels.whatNextLabel),
            addMargin(margin: 20),
            appRegularCenterLabel(text: AppLabels.successScreenDesc),
            addMargin(margin: 20),
            appButton(text: AppLabels.viewOrdersBtnLabel, onPressed: onPressViewOrders, bgColor: AppColors.secondary)
          ],
        ),
      ),
    );
  }


}
