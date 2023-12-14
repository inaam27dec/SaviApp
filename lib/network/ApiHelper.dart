import 'dart:convert';

import 'package:savostoreapp/models/requestModels/LogoutRequestModel.dart';
import 'package:savostoreapp/models/responseModels/BuyAndShipResponseModel.dart';
import 'package:savostoreapp/models/responseModels/CreateOrderResponseModel.dart';
import 'package:savostoreapp/models/responseModels/LoginResponseModel.dart';
import 'package:savostoreapp/network/ApiClient.dart';
import 'package:savostoreapp/utils/Constants.dart';

import '../models/requestModels/GetBuyShipRequestModel.dart';
import '../models/responseModels/RecordItemModel.dart';
import '../utils/Prefs.dart';

void loginUser({required String requestArgs, required onSuccess, required onFailure}) async {
  var response = await postRequest(requestBody: requestArgs, method: ApiConstants.loginMethod);
  if (response.statusCode == ApiConstants.STATUS_CODE_OK) {
    if (response.body.toString() == ApiConstants.authError) {
      onFailure(AppAlerts.authError);
    } else {
      onSuccess(LoginResponseModel.fromJson(jsonDecode(response.body)));
    }
  } else {
    onFailure(AppAlerts.serverError);
  }
}

void logoutUser({required onSuccess, required onFailure}) async {
  var obj = UserData.fromJson(jsonDecode(Prefs.getString(PrefConstants.userData)!));
  var token = Prefs.getString(PrefConstants.authToken)!;
  var args = LogoutArgs(token: token, emailAddress: obj.emailAddress, contactId: obj.id, oauthToken: token);
  var logoutModel = LogoutRequestModel(args: args).toJson();
  var finalRequest = json.encode(logoutModel);
  var response = await postRequest(requestBody: finalRequest, method: ApiConstants.logoutMethod);

  if (response.statusCode == ApiConstants.STATUS_CODE_OK) {
    if (response.body.toString() == ApiConstants.logoutSuccess) {
      onSuccess();
    } else {
      onFailure(AppAlerts.serverError);
    }
  } else {
    onFailure(AppAlerts.serverError);
  }
}

void fetchRecords({required onSuccess, required onFailure}) async {
  var obj = UserData.fromJson(jsonDecode(Prefs.getString(PrefConstants.userData)!));
  var token = Prefs.getString(PrefConstants.authToken)!;

  var whereClauseList = <Where>[];
  var firstClause = Where();
  firstClause.field = ApiConstants.fieldBillingContactId;
  firstClause.operator = ApiConstants.likeOperator;
  firstClause.condition = ApiConstants.andOperator;
  firstClause.value = obj.id;

  var modulesList = <String>[];
  modulesList.add(ApiConstants.quotesModule);
  modulesList.add(ApiConstants.invoiceModule);
  firstClause.modules = modulesList;

  whereClauseList.add(firstClause);

  var requestArgs = FetchArgs(module: ApiConstants.buyAndShipModule, where: whereClauseList, offset: ApiConstants.RECORD_OFFSET, limit: ApiConstants.RECORD_LIMIT, max: ApiConstants.RECORD_MAX, oauthToken: token);
  var recordModel = GetBuyShipRequestModel(args: requestArgs).toJson();
  var finalRequest = json.encode(recordModel);

  var response = await postRequest(requestBody: finalRequest, method: ApiConstants.listMethod);

  if (response.statusCode == ApiConstants.STATUS_CODE_OK) {
    var responseObj = BuyAndShipResponseModel.fromJson(jsonDecode(response.body));
    if (responseObj.data != null && responseObj.data!.list != null && responseObj.data!.list!.length > 0) {
      for (int i = 0; i < responseObj.data!.list!.length; i++) {
        var recordsList = <RecordItemModel>[];
        if (responseObj.data!.list![i].lineItems != null && responseObj.data!.list![i].lineItems!.isNotEmpty) {
          var items = responseObj.data!.list![i].lineItems!;
          Iterable l = json.decode(items);
          recordsList = List<RecordItemModel>.from(l.map((model) => RecordItemModel.fromJson(model)));
          responseObj.data!.list![i].orderItems = recordsList;
        }
      }
      onSuccess(responseObj);
    } else {
      onFailure(AppAlerts.noDataError);
    }
  } else {
    onFailure(AppAlerts.serverError);
  }
}

void createNewOrder({required String finalRequest, required onSuccess, required onFailure}) async {
  var response = await postRequest(requestBody: finalRequest, method: ApiConstants.postRecordMethod);
  if (response.statusCode == ApiConstants.STATUS_CODE_OK) {
    var obj = CreateOrderResponseModel.fromJson(jsonDecode(response.body));
    if (obj.status == ApiConstants.addedRecordSuccess) {
      onSuccess();
    } else {
      onFailure(AppAlerts.serverError);
    }
  } else {
    onFailure(AppAlerts.serverError);
  }
}
