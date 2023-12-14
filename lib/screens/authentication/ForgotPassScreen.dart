import 'package:flutter/material.dart';

import '../../custom_widgets/CustomDialogs.dart';
import '../../custom_widgets/CustomWidgets.dart';
import '../../utils/Constants.dart';
import '../../utils/Extensions.dart';

class ForgotPassScreen extends StatefulWidget {
  const ForgotPassScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPassScreen> createState() => _ForgotPassScreenState();
}

class _ForgotPassScreenState extends State<ForgotPassScreen> {
  String errorText = "";
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(margin: const EdgeInsets.fromLTRB(25, 25, 0, 0), child: smallClickableIcon(image: AppAssets.backImage, onPress: onBackIconPressed, size: 20)),
            Center(
                child: Container(
              margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppAssets.lockImage,
                        height: 50,
                        width: 50,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          AppLabels.forgotPassHeading,
                          style: TextStyle(color: AppColors.black, fontSize: UIConstants.headingTextSize, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  addMargin(margin: 25),
                  appEmailField(controller: emailController, textInputAction: TextInputAction.done),
                  addMargin(margin: 15),
                  appButton(text: AppLabels.submitBtnText, onPressed: onPressSubmit, bgColor: AppColors.primary),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  void onPressSubmit() {
    if (validateInput()) {
    } else {
      showAlertDialog(context: context, title: AppConstants.appName, desc: errorText, buttonText: AppAlerts.alertBtnText);
    }
  }

  bool validateInput() {
    if (emailController.text.toString().trim().isEmpty) {
      errorText = AppAlerts.alertNoEmail;
      return false;
    } else if (!emailController.text.toString().isValidEmail()) {
      errorText = AppAlerts.alertInvalidEmail;
      return false;
    }
    return true;
  }

  void onBackIconPressed() {
    Navigator.pop(context);
  }
}
