import 'dart:core';

import 'package:flutter/material.dart';

class AppConstants {
  static const splashScreenTimer = 3;
  static const appName = "SavoStore App";
  static const appFontFamily = "Montserrat";
  static const appGothamFamily = "Gotham";
  static const LIABILITY_AGREEMENT = 1;
  static const SAVO_AGREEMENT = 2;
}

class AppAlerts {
  static const titleAlert = "Alert";
  static const alertBtnText = "Ok";
  static const alertNoEmail = "Please enter email";
  static const alertInvalidEmail = "Please enter valid email address";
  static const alertNoPassword = "Please enter password";
  static const alertPasswordLength = "Password length must be greater than 6 characters";
  static const logoutAlert = "Are you sure, you want to logout?";
  static const authError = "Invalid Credentials. Please try Again";
  static const serverError = "Server is not responding at the moment. Please try again later.";
  static const noDataError = "Currently this user has no orders.";

  static const alertItemName = "Please enter item name";
  static const alertReceptionName = "Please enter recipient's name";
  static const alertPhoneNumber = "Please enter phone number";
  static const alertInvalidPhoneNumber = "The min number of characters is 10";
  static const alertItemQuantity = "Please enter item quantity";
  static const alertInvalidItemQuantity = "Item quantity cannot be zero";
  static const alertWebLink = "Please enter web link of item";
  static const alertInvalidWebLink = "Please enter valid a web link";
  static const alertMoreInfo = "Please enter item's information";
  static const alertPrice = "Please enter item's price";
  static const alertInvalidPrice = "The Minimum Total value of items must be \$4 or more.";

  static const alertLiabilityPleaseAgree = "Please agree to the liability agreement";
  static const alertSavoStorePleaseAgree = "Please agree to the SavoStore terms and conditions";
}

class AppLabels {
  static const loginHeading = "Welcome back!";
  static const loginMiniHead = "We look forward to serving you";
  static const forgotPassHeading = "Forgot Password";
  static const loginBtnText = "Log In";
  static const submitBtnText = "Submit";
  static const forgotText = "Forgot Password";

  static const dashboardHeading = "Buy & Ship Orders";
  static const createOrderHeading = "Create New Orders";

  static const currencySelectionHeading = "In which currency would you like to be invoiced? *";
  static const itemNameLabel = "Item Name *";
  static const itemQuantityLabel = "Quantity *";
  static const webLinkLabel = "Web Link (URL) *";
  static const moreInfoLabel = "More Info (Size, SKU, Color etc) *";
  static const singleUnitLabel = "Single Unit Cost in US Dollar (\$) *";
  static const hintLabel = "Type here..";

  static const deliveryInfoLabel = "Delivery Information";
  static const pickup = "(Pick Up)";
  static const recipientLabel = "Recipient's Name *";
  static const phoneNumber = "Phone Number *";

  static const riderLiabilityAgreement = "You agree that if you send your own rider to pick up your package from our Nairobi office, Savo Store will not be held liable for any items reported missing or damaged thereafter.";
  static const riderLiabilityLabel = "RIDER LIABILITY AGREEMENT: *";
  static const agreeToLiabilityLabel = "Agree to the Rider Liability \nAgreement";
  static const agreeToSavoStoreLabel = "Agree to the our Terms & Conditions";
  static const viewOrdersBtnLabel = "View Buy & Ship Orders";
  static const receiveOrderLabel = "We have received your quote request";
  static const whatNextLabel = "What Next?";

  static const successScreenDesc = "Please log into your account within 24 - 48 hours to view a full price quotation for delivering this order to you.\n\nAs soon as you make the required payment, we will purchase your order and ship it to you. We will provide you with progress updates in order to keep you updated throughout the order process.\n\nExpect the price quote soon.";
}

class UIConstants {
  static const headingTextSize = 25.0;
  static const smallHeadingTextSize = 19.0;
  static const buttonHeight = 50.0;
  static const buttonTextSize = 18.0;
  static const simpleLabelSize = 16.0;
}

class AppAssets {
  static const appLogoImage = 'assets/images/app_logo.png';
  static const splashImage = 'assets/images/splash.png';
  static const loginImage = 'assets/images/login.png';
  static const lockImage = 'assets/images/padlock.png';
  static const backImage = 'assets/images/back.png';
  static const logoutImage = 'assets/images/ic_logout.png';
  static const successImage = 'assets/images/success.png';
}

class AppColors {
  static const primary = Color.fromARGB(255, 245, 146, 31);
  static const transparent = Color.fromARGB(0, 0, 0, 0);
  static const secondary = Color.fromARGB(255, 14, 106, 173);
  static const white = Color.fromARGB(255, 255, 255, 255);
  static const black = Color.fromARGB(255, 0, 0, 0);
  static const textColor = Color.fromARGB(255, 51, 51, 51);
  static const gray = Color.fromARGB(255, 186, 184, 184);
  static const lightGray = Color.fromARGB(255, 245, 241, 241);
  static const mediumGray = Color.fromARGB(255, 224, 219, 219);

  static List<Color> mainGradient = [
    Colors.blue,
    Colors.blue.shade900,
    Colors.blue.shade400,
    Colors.blue.shade300,
  ];
}

class ApiConstants {
  /// Staging
  static const baseURL = "https://staging3.rolustech.com:44398/custom/service/v4_1_custom/rest.php";

  static const STATUS_CODE_OK = 200;

  ///Errors
  static const authError = "need_login";

  ///Success
  static const logoutSuccess = "true";
  static const addedRecordSuccess = "Success";

  ///Request Params Login
  static const keyMethod = "method";
  static const loginMethod = "customToken";
  static const logoutMethod = "logoutUser";
  static const type = "JSON";
  static const keyInputType = "input_type";
  static const keyResType = "response_type";
  static const keyRestData = "rest_data";
  static const keyEmail = "email";
  static const keyPassword = "password";
  static const keyArgs = "args";
  static const keyModule = "module";
  static const valContactModule = "Contacts";

  ///dashboardAPI
  static const listMethod = "listRecords";
  static const buyAndShipModule = "AOS_Quotes";
  static const likeOperator = "LIKE";

  static const quotesModule = "aos_quotes";
  static const invoiceModule = "aos_invoices";
  static const andOperator = "AND";
  static const fieldBillingContactId = "billing_contact_id";
  static const RECORD_LIMIT = 50;
  static const RECORD_OFFSET = 0;
  static const RECORD_MAX = -99;

  static const shipOptionDoor = "door_delivery";
  static const shipOptionPickUp = "pick_up_point";

  static const valOptionDoor = "Door Delivery";
  static const valOptionPickUp = "Pick Up Point";

  static const orderStatus = 'awaiting_quote';
  static const statusActive = '1';
  static const assignedId = '1';

  static const postRecordMethod = "postRecord";
}

class PrefConstants {
  static const authToken = "Auth_Token";
  static const userData = "User_Data";
  static const isUserLogin = "Is_User_Logged_In";
}

class AppEnums {
  static const Map<String, String> buyShipOrderStatuses = {
    'awaiting_quote': 'Awaiting quote',
    'quote_for_purchase': 'Quote For Purchase',
    'awaiting_payment': 'Awaiting Payment',
    'payment_received': 'Payment Received',
    'payment_approved': 'Shipping Fee Invoiced',
    'order_purchased': 'Order Purchased',
    'order_delivered': 'Order Delivered',
    'order_cancelled': 'Order Cancelled',
  };

  static const Map<String, String> currencyOptions = {
    'Kenyan Shillings': "e6ced6f9-580a-9f6b-329e-5f5f7dd4fad5",
    'US Dollars': "-99",
  };

  static const Map<String, String> countryCodes = {
    '254': 'Kenya +254',
    '1': 'United States +1',
    '256': 'Uganda +256',
    '255': 'Tanzania +255',
    '250': 'Rwanda +250',
  };
}
