class CreateOrderRequestModel {
  CreationArgs? args;

  CreateOrderRequestModel({this.args});

  CreateOrderRequestModel.fromJson(Map<String, dynamic> json) {
    args = json['args'] != null ? new CreationArgs.fromJson(json['args']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.args != null) {
      data['args'] = this.args!.toJson();
    }
    return data;
  }
}

class CreationArgs {
  String? module;
  Fields? fields;
  String? oauthToken;

  CreationArgs({this.module, this.fields, this.oauthToken});

  CreationArgs.fromJson(Map<String, dynamic> json) {
    module = json['module'];
    fields =
    json['fields'] != null ? new Fields.fromJson(json['fields']) : null;
    oauthToken = json['oauth_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['module'] = this.module;
    if (this.fields != null) {
      data['fields'] = this.fields!.toJson();
    }
    data['oauth_token'] = this.oauthToken;
    return data;
  }
}

class Fields {
  String? currencyId = "";
  String? savedDeliveryAddress = "";
  String? fullName = "";
  String? countryCode = "";
  String? phoneMobile = "";
  String? receiveShipment = "";
  String? primaryAddressStreet = "";
  String? primaryAddressCity = "";
  String? primaryAddressState = "";
  String? primaryAddressCountry = "";
  String? primaryAddressId = "";
  bool? liabilityAgreement = false;
  bool? termsNConditions = false;
  String? primaryAddressPostalcode = "";
  List<LineItems>? lineItems;
  String? orderStatus = "";
  String? id = "";
  String? firstName = "";
  String? lastName = "";
  String? clientId = "";
  String? emailAddressId = "";
  String? active = "";
  String? emailAddress = "";
  String? billingContact = "";
  String? altAddressState = "";
  String? altAddressCity = "";
  String? altAddressCountry = "";
  String? altAddressPostalcode = "";
  String? altAddressStreet = "";
  String? assignedUserId = "";

  Fields(
      {this.currencyId,
        this.savedDeliveryAddress,
        this.fullName,
        this.countryCode,
        this.phoneMobile,
        this.receiveShipment,
        this.primaryAddressStreet,
        this.primaryAddressCity,
        this.primaryAddressState,
        this.primaryAddressCountry,
        this.primaryAddressId,
        this.liabilityAgreement,
        this.termsNConditions,
        this.primaryAddressPostalcode,
        this.lineItems,
        this.orderStatus,
        this.id,
        this.firstName,
        this.lastName,
        this.clientId,
        this.emailAddressId,
        this.active,
        this.emailAddress,
        this.billingContact,
        this.altAddressState,
        this.altAddressCity,
        this.altAddressCountry,
        this.altAddressPostalcode,
        this.altAddressStreet,
        this.assignedUserId});

  Fields.fromJson(Map<String, dynamic> json) {
    currencyId = json['currency_id'];
    savedDeliveryAddress = json['saved_delivery_address'];
    fullName = json['full_name'];
    countryCode = json['country_code'];
    phoneMobile = json['phone_mobile'];
    receiveShipment = json['receive_shipment'];
    primaryAddressStreet = json['primary_address_street'];
    primaryAddressCity = json['primary_address_city'];
    primaryAddressState = json['primary_address_state'];
    primaryAddressCountry = json['primary_address_country'];
    primaryAddressId = json['primary_address_id'];
    liabilityAgreement = json['liability_agreement'];
    termsNConditions = json['terms_n_conditions'];
    primaryAddressPostalcode = json['primary_address_postalcode'];
    if (json['lineItems'] != null) {
      lineItems = <LineItems>[];
      json['lineItems'].forEach((v) {
        lineItems!.add(new LineItems.fromJson(v));
      });
    }
    orderStatus = json['order_status'];
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    clientId = json['client_id'];
    emailAddressId = json['email_address_id'];
    active = json['active'];
    emailAddress = json['email_address'];
    billingContact = json['billing_contact'];
    altAddressState = json['alt_address_state'];
    altAddressCity = json['alt_address_city'];
    altAddressCountry = json['alt_address_country'];
    altAddressPostalcode = json['alt_address_postalcode'];
    altAddressStreet = json['alt_address_street'];
    assignedUserId = json['assigned_user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['currency_id'] = this.currencyId;
    data['saved_delivery_address'] = this.savedDeliveryAddress;
    data['full_name'] = this.fullName;
    data['country_code'] = this.countryCode;
    data['phone_mobile'] = this.phoneMobile;
    data['receive_shipment'] = this.receiveShipment;
    data['primary_address_street'] = this.primaryAddressStreet;
    data['primary_address_city'] = this.primaryAddressCity;
    data['primary_address_state'] = this.primaryAddressState;
    data['primary_address_country'] = this.primaryAddressCountry;
    data['primary_address_id'] = this.primaryAddressId;
    data['liability_agreement'] = this.liabilityAgreement;
    data['terms_n_conditions'] = this.termsNConditions;
    data['primary_address_postalcode'] = this.primaryAddressPostalcode;
    if (this.lineItems != null) {
      data['lineItems'] = this.lineItems!.map((v) => v.toJson()).toList();
    }
    data['order_status'] = this.orderStatus;
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['client_id'] = this.clientId;
    data['email_address_id'] = this.emailAddressId;
    data['active'] = this.active;
    data['email_address'] = this.emailAddress;
    data['billing_contact'] = this.billingContact;
    data['alt_address_state'] = this.altAddressState;
    data['alt_address_city'] = this.altAddressCity;
    data['alt_address_country'] = this.altAddressCountry;
    data['alt_address_postalcode'] = this.altAddressPostalcode;
    data['alt_address_street'] = this.altAddressStreet;
    data['assigned_user_id'] = this.assignedUserId;
    return data;
  }
}

class LineItems {
  String? serviceName;
  int? serviceItemQty;
  String? serviceItemWebLink;
  String? serviceItemDetails;
  String? serviceProductId;
  int? serviceProductUnitPriceUsd;
  String? currencyId;

  LineItems(
      {this.serviceName,
        this.serviceItemQty,
        this.serviceItemWebLink,
        this.serviceItemDetails,
        this.serviceProductId,
        this.serviceProductUnitPriceUsd,
        this.currencyId});

  LineItems.fromJson(Map<String, dynamic> json) {
    serviceName = json['service_name'];
    serviceItemQty = json['service_item_qty'];
    serviceItemWebLink = json['service_item_web_link'];
    serviceItemDetails = json['service_item_details'];
    serviceProductId = json['service_product_id'];
    serviceProductUnitPriceUsd = json['service_product_unit_price_usd'];
    currencyId = json['currency_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['service_name'] = this.serviceName;
    data['service_item_qty'] = this.serviceItemQty;
    data['service_item_web_link'] = this.serviceItemWebLink;
    data['service_item_details'] = this.serviceItemDetails;
    data['service_product_id'] = this.serviceProductId;
    data['service_product_unit_price_usd'] = this.serviceProductUnitPriceUsd;
    data['currency_id'] = this.currencyId;
    return data;
  }
}
