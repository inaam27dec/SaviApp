import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:savostoreapp/custom_widgets/CustomDialogs.dart';
import 'package:savostoreapp/custom_widgets/CustomWidgets.dart';
import 'package:savostoreapp/models/requestModels/LoginRequestModel.dart';
import 'package:savostoreapp/models/responseModels/LoginResponseModel.dart';
import 'package:savostoreapp/network/ApiHelper.dart';
import 'package:savostoreapp/screens/authentication/ForgotPassScreen.dart';
import 'package:savostoreapp/screens/dashboard/DashboardScreen.dart';

import '../../utils/Constants.dart';
import '../../utils/Extensions.dart';
import '../../utils/Prefs.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String errorText = "";
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppAssets.appLogoImage, height: 70, width: 130),
            appBoldHeading(text: AppLabels.loginHeading),
            addMargin(margin: 8.0),
            appRegularLabel(text: AppLabels.loginMiniHead),
            addMargin(margin: 25.0),
            appEmailField(controller: emailController, textInputAction: TextInputAction.next),
            addMargin(margin: 15.0),
            appPasswordField(controller: passController),
            addMargin(margin: 15.0),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [clickableLabel(text: AppLabels.forgotText, onPressed: onPressForgotPass, textColor: AppColors.primary, isBold: true)],
            ),
            addMargin(margin: 10),*/
            appButton(text: AppLabels.loginBtnText, onPressed: onPressLogin, bgColor: AppColors.primary),
          ],
        ),
      )),
    );
  }

  bool validateInput() {
    if (emailController.text.toString().trim().isEmpty) {
      errorText = AppAlerts.alertNoEmail;
      return false;
    } else if (!emailController.text.toString().isValidEmail()) {
      errorText = AppAlerts.alertInvalidEmail;
      return false;
    } else if (passController.text.toString().trim().isEmpty) {
      errorText = AppAlerts.alertNoPassword;
      return false;
    } else if (passController.text.toString().length < 6) {
      errorText = AppAlerts.alertPasswordLength;
      return false;
    }
    return true;
  }

  void onPressLogin() {
    if (validateInput()) {
      proceedToLogin();
    } else {
      showAlertDialog(context: context, title: AppConstants.appName, desc: errorText, buttonText: AppAlerts.alertBtnText);
    }
  }

  void onPressForgotPass() {
    AppExtensions.addScreen(context, const ForgotPassScreen());
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  void proceedToLogin() {
    var args = Args(email: emailController.text.toString(), password: passController.text.toString(), module: ApiConstants.valContactModule);
    var loginModel = LoginRequestModel(args: args).toJson();
    var finalRequest = json.encode(loginModel);
    showHideLoader(isShow: true);
    loginUser(requestArgs: finalRequest, onSuccess: onLoginSuccess, onFailure: onLoginFailure);
  }

  void onLoginSuccess(LoginResponseModel response) {
    setUserPrefData(response);
  }

  void onLoginFailure(String error) {
    showHideLoader(isShow: false);
    errorText = error;
    showAlertDialog(context: context, title: AppConstants.appName, desc: errorText, buttonText: AppAlerts.alertBtnText);
  }

  void setUserPrefData(LoginResponseModel response) async {
    await Prefs.setString(PrefConstants.authToken, response.data!.token!);
    await Prefs.setString(PrefConstants.userData, jsonEncode(response.data!.userData!.toJson()));
    await Prefs.setBool(PrefConstants.isUserLogin, true);
    showHideLoader(isShow: false);
    AppExtensions.replaceScreen(context, const DashboardScreen());
  }
}
