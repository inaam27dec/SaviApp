import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:savostoreapp/custom_widgets/CustomDialogs.dart';
import 'package:savostoreapp/models/requestModels/CreateOrderRequestModel.dart';
import 'package:savostoreapp/network/ApiHelper.dart';
import 'package:savostoreapp/utils/Extensions.dart';

import '../../../custom_widgets/CustomWidgets.dart';
import '../../../models/responseModels/LoginResponseModel.dart';
import '../../../utils/Constants.dart';
import '../../../utils/Prefs.dart';
import 'CreateOrderSuccessScreen.dart';

class DeliveryInfoScreen extends StatefulWidget {
  const DeliveryInfoScreen({Key? key, required this.requestModel}) : super(key: key);

  final CreateOrderRequestModel requestModel;

  @override
  State<DeliveryInfoScreen> createState() => _DeliveryInfoScreenState();
}

class _DeliveryInfoScreenState extends State<DeliveryInfoScreen> {
  var isUserAgreedToLiabilities = false;
  var isUserAgreedToSavoStore = false;
  var errorMsg = "";
  final TextEditingController recipientNameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  var countryCodeList = [
    'Kenya +254',
    'United States +1',
    'Uganda +256',
    'Tanzania +255',
    'Rwanda +250',
  ];

  var countryCodeValue = "Kenya +254";

  @override
  void initState() {
    super.initState();
    populateData();
  }

  void populateData() {
    var obj = UserData.fromJson(jsonDecode(Prefs.getString(PrefConstants.userData)!));
    recipientNameController.text = obj.billingContact!;
    numberController.text = obj.phoneMobile!;

    if (AppEnums.countryCodes.containsKey(obj.countryCode)) {
      countryCodeValue = AppEnums.countryCodes[obj.countryCode!]!;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(25),
            child: ListView(
              shrinkWrap: true,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    smallClickableIcon(image: AppAssets.backImage, onPress: onBackIconPressed, size: 20),
                    addMargin(margin: 25),
                    appBoldHeading(text: AppLabels.deliveryInfoLabel),
                    appBoldLabel(text: AppLabels.pickup),
                    addMargin(margin: 35),
                    appBoldLabel(text: AppLabels.recipientLabel),
                    addMargin(margin: 10),
                    appInputField(hintText: AppLabels.hintLabel, type: TextInputType.text, controller: recipientNameController, textInputAction: TextInputAction.next),
                    addMargin(margin: 15),
                    appBoldLabel(text: AppLabels.phoneNumber),
                    addMargin(margin: 10),
                    appDropDownContainer(showError: false, child: appDropDownButton(itemList: countryCodeList, dropDownValue: countryCodeValue, onValueChanged: onDropDownValueChanged)),
                    appInputField(hintText: AppLabels.hintLabel, type: TextInputType.number, controller: numberController, textInputAction: TextInputAction.done),
                    addMargin(margin: 25),
                    appBoldSmallHeading(text: AppLabels.riderLiabilityLabel),
                    addMargin(margin: 5),
                    appRegularLabel(text: AppLabels.riderLiabilityAgreement),
                    addMargin(margin: 10),
                    appCheckBox(text: AppLabels.agreeToLiabilityLabel, checkboxValue: isUserAgreedToLiabilities, onCheckboxChanged: onCheckBoxChanged, type: AppConstants.LIABILITY_AGREEMENT),
                    addMargin(margin: 10),
                    appCheckBox(text: AppLabels.agreeToSavoStoreLabel, checkboxValue: isUserAgreedToSavoStore, onCheckboxChanged: onCheckBoxChanged, type: AppConstants.SAVO_AGREEMENT),
                    addMargin(margin: 20),
                    appButton(text: AppLabels.submitBtnText, onPressed: onPressSubmit, bgColor: AppColors.primary)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onBackIconPressed() {
    Navigator.pop(context);
  }

  void onPressSubmit() {
    if (validateInput()) {
      updateRequestObjAndSave();
    } else {
      showAlertDialog(context: context, title: AppConstants.appName, desc: errorMsg, buttonText: AppAlerts.alertBtnText);
    }
  }

  void onCheckBoxChanged(bool value, int type) {
    switch (type) {
      case AppConstants.LIABILITY_AGREEMENT:
        {
          setState(() {
            isUserAgreedToLiabilities = value;
          });
          break;
        }
      case AppConstants.SAVO_AGREEMENT:
        {
          setState(() {
            isUserAgreedToSavoStore = value;
          });
          break;
        }
    }
  }

  void onDropDownValueChanged(String value) {
    setState(() {
      countryCodeValue = value;
    });
  }

  bool validateInput() {
    if (recipientNameController.text.toString().trim().isEmpty) {
      errorMsg = AppAlerts.alertReceptionName;
      return false;
    } else if (numberController.text.toString().trim().isEmpty) {
      errorMsg = AppAlerts.alertPhoneNumber;
      return false;
    } else if (numberController.text.toString().trim().length < 10) {
      errorMsg = AppAlerts.alertInvalidPhoneNumber;
      return false;
    } else if (!isUserAgreedToLiabilities) {
      errorMsg = AppAlerts.alertLiabilityPleaseAgree;
      return false;
    } else if (!isUserAgreedToSavoStore) {
      errorMsg = AppAlerts.alertSavoStorePleaseAgree;
      return false;
    } else {
      return true;
    }
  }

  void updateRequestObjAndSave() {
    widget.requestModel.args!.fields!.fullName = recipientNameController.text.toString().trim();
    if (AppEnums.countryCodes.containsValue(countryCodeValue)) {
      widget.requestModel.args!.fields!.countryCode = AppEnums.countryCodes.values.firstWhere((element) => element == countryCodeValue);
    }
    widget.requestModel.args!.fields!.phoneMobile = numberController.text.toString().trim();

    var finalRequest = json.encode(widget.requestModel);
    print(finalRequest);
    showHideLoader(isShow: true);
    createNewOrder(finalRequest: finalRequest, onSuccess: orderCreatedSuccess, onFailure: orderCreatedFailure);
  }

  void orderCreatedSuccess() {
    showHideLoader(isShow: false);
    AppExtensions.addScreen(context, CreateOrderSuccessScreen());
  }

  void orderCreatedFailure(String error) {
    showHideLoader(isShow: false);
    showAlertDialog(context: context, title: AppConstants.appName, desc: error, buttonText: AppAlerts.alertBtnText);
  }
}
