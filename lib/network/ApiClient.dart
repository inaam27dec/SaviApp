import 'package:http/http.dart' as http;
import 'package:savostoreapp/utils/Constants.dart';

Future<http.Response> postRequest({required String requestBody, required String method}) async {
  var requestMap = <String, dynamic>{};
  requestMap[ApiConstants.keyMethod] = method;
  requestMap[ApiConstants.keyInputType] = ApiConstants.type;
  requestMap[ApiConstants.keyResType] = ApiConstants.type;
  requestMap[ApiConstants.keyRestData] = requestBody;
  var response = await http.post(Uri.parse(ApiConstants.baseURL), body: requestMap);
  return response;
}
