import 'package:flutter/material.dart';
import 'package:savostoreapp/utils/Constants.dart';

class AppExtensions {
  static void replaceScreen(BuildContext context, Widget screen) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => screen));
  }

  static void replaceWithAll(BuildContext context, Widget screen) {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => screen), (route) => false);
  }

  static void addScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}

extension StringExtensions on String {
  bool isValidEmail() {
    return RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(this);
  }

  String showPrice() {
    return "${double.parse(this).toStringAsFixed(2)}";
  }

  bool isValidUrl() {
    return Uri.parse(this).isAbsolute;
  }

  String setOrderStatus() {
    if (AppEnums.buyShipOrderStatuses.containsKey(this)) {
      return AppEnums.buyShipOrderStatuses[this]!;
    } else {
      return "";
    }
  }

  String convertToDateOnly() {
    var date = this.split(" ")[0];
    var year = date.split("-")[0];
    var month = date.split("-")[1].parseInt().convertToMonth();

    var day = date.split("-")[2];
    return "${month} ${day}, ${year}";
  }

  int parseInt() {
    return int.parse(this);
  }

  String getDeliveryOption() {
    switch (this) {
      case ApiConstants.shipOptionDoor:
        return ApiConstants.valOptionDoor;
      case ApiConstants.shipOptionPickUp:
        return ApiConstants.valOptionPickUp;
      default:
        return ApiConstants.valOptionDoor;
    }
  }
}

extension IntExtensions on int {
  String convertToMonth() {
    switch (this) {
      case 1:
        return "Jan";
      case 2:
        return "Feb";
      case 3:
        return "Mar";
      case 4:
        return "Apr";
      case 5:
        return "May";
      case 6:
        return "Jun";
      case 7:
        return "Jul";
      case 8:
        return "Aug";
      case 9:
        return "Sep";
      case 10:
        return "Oct";
      case 11:
        return "Nov";
      case 12:
        return "Dec";
      default:
        return "";
    }
  }
}
