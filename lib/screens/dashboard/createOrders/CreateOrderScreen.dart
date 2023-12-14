import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:savostoreapp/custom_widgets/CustomDialogs.dart';
import 'package:savostoreapp/models/requestModels/CreateOrderRequestModel.dart';
import 'package:savostoreapp/screens/dashboard/createOrders/DeliveryInfoScreen.dart';
import 'package:savostoreapp/utils/Extensions.dart';

import '../../../models/responseModels/LoginResponseModel.dart';
import '../../../utils/Constants.dart';
import '../../../custom_widgets/CustomWidgets.dart';
import '../../../utils/Prefs.dart';

class CreateOrderScreen extends StatefulWidget {
  const CreateOrderScreen({Key? key}) : super(key: key);

  @override
  State<CreateOrderScreen> createState() => _CreateOrderScreenState();
}

class _CreateOrderScreenState extends State<CreateOrderScreen> {
  var currencyList = [
    'Kenyan Shillings',
    'US Dollars',
  ];

  var errorMsg = "";

  @override
  void initState() {
    super.initState();
  }

  String dropDownValue = 'Kenyan Shillings';
  final TextEditingController itemNameController = TextEditingController();
  final TextEditingController itemQuantityController = TextEditingController();
  final TextEditingController urlController = TextEditingController();
  final TextEditingController moreInfoController = TextEditingController();
  final TextEditingController singleUnitController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.white,
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: SafeArea(
              child: Padding(
            padding: EdgeInsets.all(25),
            child: new ListView(
              shrinkWrap: true,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        smallClickableIcon(image: AppAssets.backImage, onPress: onBackIconPressed, size: 20),
                        addMargin(margin: 20),
                        appBoldHeading(text: AppLabels.createOrderHeading),
                        addMargin(margin: 20),
                        appBoldLabel(text: AppLabels.currencySelectionHeading),
                        addMargin(margin: 10),
                        appDropDownContainer(showError: false, child: appDropDownButton(itemList: currencyList, dropDownValue: dropDownValue, onValueChanged: onDropDownValueChanged)),
                        addMargin(margin: 15),
                        appBoldLabel(text: AppLabels.itemNameLabel),
                        addMargin(margin: 10),
                        appInputField(hintText: AppLabels.hintLabel, type: TextInputType.text, controller: itemNameController, textInputAction: TextInputAction.next),
                        addMargin(margin: 15),
                        appBoldLabel(text: AppLabels.itemQuantityLabel),
                        addMargin(margin: 10),
                        appInputField(hintText: AppLabels.hintLabel, type: TextInputType.number, controller: itemQuantityController, textInputAction: TextInputAction.next),
                        addMargin(margin: 15),
                        appBoldLabel(text: AppLabels.webLinkLabel),
                        addMargin(margin: 10),
                        appInputField(hintText: AppLabels.hintLabel, type: TextInputType.url, controller: urlController, textInputAction: TextInputAction.next),
                        addMargin(margin: 15),
                        appBoldLabel(text: AppLabels.moreInfoLabel),
                        addMargin(margin: 10),
                        appInputField(hintText: AppLabels.hintLabel, type: TextInputType.text, controller: moreInfoController, textInputAction: TextInputAction.next),
                        addMargin(margin: 15),
                        appBoldLabel(text: AppLabels.singleUnitLabel),
                        addMargin(margin: 10),
                        appInputField(hintText: AppLabels.hintLabel, type: TextInputType.number, controller: singleUnitController, textInputAction: TextInputAction.done),
                      ],
                    )
                  ],
                ),
                addMargin(margin: 20),
                appButton(text: "Continue to Delivery Info", onPressed: onClickContinue, bgColor: AppColors.primary),
                addMargin(margin: 25),
              ],
            ),
          )),
        ));
  }

  void onDropDownValueChanged(String value) {
    setState(() {
      dropDownValue = value;
    });
  }

  void onClickContinue() {
    if (validateInput()) {
      makeFinalModelAndProceed();
    } else {
      showAlertDialog(context: context, title: AppConstants.appName, desc: errorMsg, buttonText: AppAlerts.alertBtnText);
    }
  }

  void onClickAddAnother() {}

  bool validateInput() {
    if (itemNameController.text.toString().trim().isEmpty) {
      errorMsg = AppAlerts.alertItemName;
      return false;
    } else if (itemQuantityController.text.toString().trim().isEmpty) {
      errorMsg = AppAlerts.alertItemQuantity;
      return false;
    } else if (itemQuantityController.text.toString().trim().parseInt() == 0) {
      errorMsg = AppAlerts.alertInvalidItemQuantity;
      return false;
    } else if (urlController.text.toString().trim().isEmpty) {
      errorMsg = AppAlerts.alertWebLink;
      return false;
    } else if (!urlController.text.toString().trim().isValidUrl()) {
      errorMsg = AppAlerts.alertInvalidWebLink;
      return false;
    } else if (moreInfoController.text.toString().trim().isEmpty) {
      errorMsg = AppAlerts.alertMoreInfo;
      return false;
    } else if (singleUnitController.text.toString().trim().isEmpty) {
      errorMsg = AppAlerts.alertPrice;
      return false;
    } else if (singleUnitController.text.toString().trim().parseInt() < 4) {
      errorMsg = AppAlerts.alertInvalidPrice;
      return false;
    } else
      return true;
  }

  void makeFinalModelAndProceed() {
    var userObj = UserData.fromJson(jsonDecode(Prefs.getString(PrefConstants.userData)!));
    var fields = Fields();
    if (AppEnums.currencyOptions.containsKey(dropDownValue)) {
      fields.currencyId = AppEnums.currencyOptions[dropDownValue];
    }
    fields.receiveShipment = ApiConstants.shipOptionPickUp;
    fields.lineItems = <LineItems>[];
    fields.lineItems!.add(LineItems(serviceName: itemNameController.text.toString().trim(), serviceItemQty: itemQuantityController.text.toString().trim().parseInt(), serviceItemWebLink: urlController.text.toString().trim(), serviceItemDetails: moreInfoController.text.toString().trim(), serviceProductId: "0", serviceProductUnitPriceUsd: (singleUnitController.text.toString().trim()).parseInt(), currencyId: fields.currencyId));
    fields.orderStatus = ApiConstants.orderStatus;
    fields.id = userObj.id;
    fields.firstName = userObj.firstName;
    fields.lastName = userObj.lastName;
    fields.clientId = userObj.clientId;
    fields.billingContact = userObj.billingContact;
    fields.emailAddressId = userObj.emailAddressId;
    fields.active = ApiConstants.statusActive;
    fields.emailAddress = userObj.emailAddress;
    fields.assignedUserId = ApiConstants.assignedId;
    var requestObj = CreateOrderRequestModel(args: CreationArgs(module: ApiConstants.buyAndShipModule, fields: fields, oauthToken: Prefs.getString(PrefConstants.authToken)!));
    AppExtensions.addScreen(context, DeliveryInfoScreen(requestModel: requestObj));
  }

  void onBackIconPressed() {
    Navigator.pop(context);
  }
}
