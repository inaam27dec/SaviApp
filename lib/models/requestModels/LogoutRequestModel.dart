class LogoutRequestModel {
  LogoutArgs? args;

  LogoutRequestModel({this.args});

  LogoutRequestModel.fromJson(Map<String, dynamic> json) {
    args = json['args'] != null ? LogoutArgs.fromJson(json['args']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (args != null) {
      data['args'] = args!.toJson();
    }
    return data;
  }
}

class LogoutArgs {
  String? token;
  String? emailAddress;
  String? contactId;
  String? oauthToken;

  LogoutArgs({this.token, this.emailAddress, this.contactId, this.oauthToken});

  LogoutArgs.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    emailAddress = json['email_address'];
    contactId = json['contact_id'];
    oauthToken = json['oauth_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    data['email_address'] = emailAddress;
    data['contact_id'] = contactId;
    data['oauth_token'] = oauthToken;
    return data;
  }
}
