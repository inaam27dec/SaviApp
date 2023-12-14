class LoginResponseModel {
  String? status;
  Data? data;

  LoginResponseModel({this.status, this.data});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? token;
  String? module;
  UserData? userData;
  String? id;

  Data({this.token, this.module, this.userData, this.id});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    module = json['module'];
    userData = json['userData'] != null ? new UserData.fromJson(json['userData']) : null;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = token;
    data['module'] = module;
    if (userData != null) {
      data['userData'] = userData!.toJson();
    }
    data['id'] = id;
    return data;
  }
}

class UserData {
  String? id;
  String? firstName;
  String? lastName;
  String? clientId;
  String? emailAddressId;
  String? active;
  String? emailAddress;
  String? billingContact;
  String? countryCode;
  String? phoneMobile;
  String? primaryAddressState;
  String? primaryAddressCity;
  String? primaryAddressCountry;
  String? primaryAddressPostalcode;
  String? primaryAddressStreet;
  String? altAddressState;
  String? altAddressCity;
  String? altAddressCountry;
  String? altAddressPostalcode;
  String? altAddressStreet;

  UserData({this.id, this.firstName, this.lastName, this.clientId, this.emailAddressId, this.active, this.emailAddress, this.billingContact, this.countryCode, this.phoneMobile, this.primaryAddressState, this.primaryAddressCity, this.primaryAddressCountry, this.primaryAddressPostalcode, this.primaryAddressStreet, this.altAddressState, this.altAddressCity, this.altAddressCountry, this.altAddressPostalcode, this.altAddressStreet});

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    clientId = json['client_id'];
    emailAddressId = json['email_address_id'];
    active = json['active'];
    emailAddress = json['email_address'];
    billingContact = json['billing_contact'];
    countryCode = json['country_code'];
    phoneMobile = json['phone_mobile'];
    primaryAddressState = json['primary_address_state'];
    primaryAddressCity = json['primary_address_city'];
    primaryAddressCountry = json['primary_address_country'];
    primaryAddressPostalcode = json['primary_address_postalcode'];
    primaryAddressStreet = json['primary_address_street'];
    altAddressState = json['alt_address_state'];
    altAddressCity = json['alt_address_city'];
    altAddressCountry = json['alt_address_country'];
    altAddressPostalcode = json['alt_address_postalcode'];
    altAddressStreet = json['alt_address_street'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['client_id'] = clientId;
    data['email_address_id'] = emailAddressId;
    data['active'] = active;
    data['email_address'] = emailAddress;
    data['billing_contact'] = billingContact;
    data['country_code'] = countryCode;
    data['phone_mobile'] = phoneMobile;
    data['primary_address_state'] = primaryAddressState;
    data['primary_address_city'] = primaryAddressCity;
    data['primary_address_country'] = primaryAddressCountry;
    data['primary_address_postalcode'] = primaryAddressPostalcode;
    data['primary_address_street'] = primaryAddressStreet;
    data['alt_address_state'] = altAddressState;
    data['alt_address_city'] = altAddressCity;
    data['alt_address_country'] = altAddressCountry;
    data['alt_address_postalcode'] = altAddressPostalcode;
    data['alt_address_street'] = altAddressStreet;
    return data;
  }
}
