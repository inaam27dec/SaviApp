import 'package:flutter/material.dart';
import 'package:savostoreapp/custom_widgets/CustomDialogs.dart';
import 'package:savostoreapp/models/responseModels/BuyAndShipResponseModel.dart';
import 'package:savostoreapp/network/ApiHelper.dart';
import 'package:savostoreapp/screens/authentication/LoginScreen.dart';
import 'package:savostoreapp/screens/dashboard/createOrders/CreateOrderScreen.dart';
import 'package:savostoreapp/utils/Extensions.dart';

import '../../custom_widgets/CustomWidgets.dart';
import '../../utils/Constants.dart';
import '../../utils/Prefs.dart';
import 'list_view_cells/PackageItemCell.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  var isRecordFetched = false;
  List<Records>? recordsList;

  @override
  void initState() {
    super.initState();
    getBuyAndShipRecords();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          floatingActionButton: FloatingActionButton(
            onPressed: addNewOrder,
            child: Icon(Icons.add),
            elevation: 15,
          ),
          body: SafeArea(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Image.asset(AppAssets.appLogoImage, height: 70, width: 130), smallClickableIcon(image: AppAssets.logoutImage, onPress: onPressLogout, size: 28)],
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(25, 0, 0, 0), child: appBoldHeading(text: AppLabels.dashboardHeading)),
              addMargin(margin: 20),
              Expanded(
                  child: isRecordFetched
                      ? ListView.builder(
                          padding: const EdgeInsets.all(8),
                          itemCount: isRecordFetched ? recordsList?.length : 0,
                          itemBuilder: (BuildContext context, int index) {
                            return renderPackageItemCell(recordItem: recordsList![index]);
                          })
                      : Container())
            ],
          )),
        ));
  }

  void addNewOrder() {
    AppExtensions.addScreen(context, const CreateOrderScreen());
  }

  void getBuyAndShipRecords() {
    showHideLoader(isShow: true);
    fetchRecords(onSuccess: onRecordsFetched, onFailure: onRecordFailure);
  }

  void onRecordsFetched(BuyAndShipResponseModel responseObj) {
    recordsList = responseObj.data!.list;
    showHideLoader(isShow: false);
    isRecordFetched = true;
    setState(() {});
  }

  void onRecordFailure(String error) {
    showHideLoader(isShow: false);
    showAlertDialog(context: context, title: AppConstants.appName, desc: error, buttonText: AppAlerts.alertBtnText);
  }

  void onPressLogout() {
    showConfirmationDialog(context: context, title: AppConstants.appName, desc: AppAlerts.logoutAlert, onPressYes: onPressYes);
  }

  void onLogoutSuccess() {
    Prefs.clear();
    showHideLoader(isShow: false);
    AppExtensions.replaceScreen(context, const LoginScreen());
  }

  void onLogoutFailure(String error) {
    showHideLoader(isShow: false);
    showAlertDialog(context: context, title: AppConstants.appName, desc: error, buttonText: AppAlerts.alertBtnText);
  }

  void onPressYes() {
    showHideLoader(isShow: true);
    logoutUser(onSuccess: onLogoutSuccess, onFailure: onLogoutFailure);
  }
}
