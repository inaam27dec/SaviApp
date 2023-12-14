import 'RecordItemModel.dart';

class BuyAndShipResponseModel {
  String? status;
  Data? data;

  BuyAndShipResponseModel({this.status, this.data});

  BuyAndShipResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<Records>? list;
  int? rowCount;
  int? nextOffset;
  int? previousOffset;
  int? currentOffset;

  Data({this.list, this.rowCount, this.nextOffset, this.previousOffset, this.currentOffset});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['list'] != null) {
      list = <Records>[];
      json['list'].forEach((v) {
        list!.add(new Records.fromJson(v));
      });
    }
    rowCount = json['row_count'];
    nextOffset = json['next_offset'];
    previousOffset = json['previous_offset'];
    currentOffset = json['current_offset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.list != null) {
      data['list'] = this.list!.map((v) => v.toJson()).toList();
    }
    data['row_count'] = this.rowCount;
    data['next_offset'] = this.nextOffset;
    data['previous_offset'] = this.previousOffset;
    data['current_offset'] = this.currentOffset;
    return data;
  }
}

class Records {
  String? moduleName;
  String? id;
  String? name;
  String? dateEntered;
  String? dateModified;
  String? modifiedUserId;
  String? modifiedByName;
  String? createdBy;
  String? createdByName;
  String? description;
  String? deleted;
  String? createdByLink;
  String? modifiedUserLink;
  String? assignedUserId;
  String? assignedUserName;
  String? assignedUserLink;
  String? securityGroups;
  String? approvalIssue;
  String? billingAccountId;
  String? billingAccount;
  String? billingContactId;
  String? billingContact;
  String? billingAddressStreet;
  String? billingAddressCity;
  String? billingAddressState;
  String? billingAddressPostalcode;
  String? billingAddressCountry;
  String? shippingAddressStreet;
  String? shippingAddressCity;
  String? shippingAddressState;
  String? shippingAddressPostalcode;
  String? shippingAddressCountry;
  String? expiration;
  String? number;
  String? opportunityId;
  String? opportunity;
  String? templateDdownC;
  String? lineItems;
  String? totalAmt;
  String? totalAmtUsdollar;
  String? subtotalAmount;
  String? subtotalAmountUsdollar;
  String? discountAmount;
  String? discountAmountUsdollar;
  String? taxAmount;
  String? taxAmountUsdollar;
  String? shippingAmount;
  String? shippingAmountUsdollar;
  String? shippingTax;
  String? shippingTaxAmt;
  String? shippingTaxAmtUsdollar;
  String? totalAmount;
  String? totalAmountUsdollar;
  String? currencyId;
  String? stage;
  String? term;
  String? termsC;
  String? approvalStatus;
  String? invoiceStatus;
  String? subtotalTaxAmount;
  String? subtotalTaxAmountUsdollar;
  String? accounts;
  String? contacts;
  String? opportunities;
  String? aosQuotesProject;
  String? aosQuotesAosInvoices;
  String? aosQuotesAosContracts;
  String? aosProductsQuotes;
  String? aosLineItemGroups;
  String? currencySymbol;
  String? shipmentDate;
  String? primaryEmailAddress;
  String? orderDate;
  String? shippingEmail;
  String? aosQuotesActivities1Tasks;
  String? discountType;
  String? discountCurrencyId;
  String? quantity;
  String? shippingPhoneNumberWithCountryCode;
  String? receiveShipment;
  String? discountValuePercentage;
  String? noItemShipped;
  String? aosQuotesActivities1Calls;
  String? currencyName;
  String? totalAmtPaid;
  String? totalAmtPaidUsdollar;
  String? billingAddressId;
  String? billingAddressName;
  String? productQuotesId;
  String? shippingAddressId;
  String? shippingAddressName;
  String? shippingPhoneMobile;
  String? savRefundAosQuotes;
  String? phoneMobile;
  String? discountBasis;
  String? orderNumber;
  String? itemDetails;
  String? refundDate;
  String? trackingStatus;
  String? recipientName;
  String? aosQuotesActivities1Emails;
  String? sendENotification;
  String? expectedDeliveryDate;
  String? totalItems;
  String? savPaymentsAosQuotes;
  String? totalDoorDeliveryCost;
  String? discountValueFixedAmount;
  String? totalChargeableWeight;
  String? aosQuotesActivities1Meetings;
  String? totalBalance;
  String? totalBalanceUsdollar;
  String? aosQuotesActivities1Notes;
  String? purchaseStatus;
  String? savDiscountsAosQuotes1;
  String? savDiscountsAosQuotes1Name;
  String? savDiscountsAosQuotes1savDiscountsIda;
  String? discount;
  String? discountUsdollar;
  String? aosQuotesNotes1;
  String? phoneNumberWithCountryCode;
  String? webLink;
  String? countryCode;
  String? shippingCountryCode;
  String? arrivalDate;
  String? doorDeliveryCost;
  String? doorDeliveryCostUsdollar;
  String? orderStatus;
  List<RecordItemModel>? orderItems;

  Records(
      {this.moduleName,
      this.id,
      this.name,
      this.dateEntered,
      this.dateModified,
      this.modifiedUserId,
      this.modifiedByName,
      this.createdBy,
      this.createdByName,
      this.description,
      this.deleted,
      this.createdByLink,
      this.modifiedUserLink,
      this.assignedUserId,
      this.assignedUserName,
      this.assignedUserLink,
      this.securityGroups,
      this.approvalIssue,
      this.billingAccountId,
      this.billingAccount,
      this.billingContactId,
      this.billingContact,
      this.billingAddressStreet,
      this.billingAddressCity,
      this.billingAddressState,
      this.billingAddressPostalcode,
      this.billingAddressCountry,
      this.shippingAddressStreet,
      this.shippingAddressCity,
      this.shippingAddressState,
      this.shippingAddressPostalcode,
      this.shippingAddressCountry,
      this.expiration,
      this.number,
      this.opportunityId,
      this.opportunity,
      this.templateDdownC,
      this.lineItems,
      this.totalAmt,
      this.totalAmtUsdollar,
      this.subtotalAmount,
      this.subtotalAmountUsdollar,
      this.discountAmount,
      this.discountAmountUsdollar,
      this.taxAmount,
      this.taxAmountUsdollar,
      this.shippingAmount,
      this.shippingAmountUsdollar,
      this.shippingTax,
      this.shippingTaxAmt,
      this.shippingTaxAmtUsdollar,
      this.totalAmount,
      this.totalAmountUsdollar,
      this.currencyId,
      this.stage,
      this.term,
      this.termsC,
      this.approvalStatus,
      this.invoiceStatus,
      this.subtotalTaxAmount,
      this.subtotalTaxAmountUsdollar,
      this.accounts,
      this.contacts,
      this.opportunities,
      this.aosQuotesProject,
      this.aosQuotesAosInvoices,
      this.aosQuotesAosContracts,
      this.aosProductsQuotes,
      this.aosLineItemGroups,
      this.currencySymbol,
      this.shipmentDate,
      this.primaryEmailAddress,
      this.orderDate,
      this.shippingEmail,
      this.aosQuotesActivities1Tasks,
      this.discountType,
      this.discountCurrencyId,
      this.quantity,
      this.shippingPhoneNumberWithCountryCode,
      this.receiveShipment,
      this.discountValuePercentage,
      this.noItemShipped,
      this.aosQuotesActivities1Calls,
      this.currencyName,
      this.totalAmtPaid,
      this.totalAmtPaidUsdollar,
      this.billingAddressId,
      this.billingAddressName,
      this.productQuotesId,
      this.shippingAddressId,
      this.shippingAddressName,
      this.shippingPhoneMobile,
      this.savRefundAosQuotes,
      this.phoneMobile,
      this.discountBasis,
      this.orderNumber,
      this.itemDetails,
      this.refundDate,
      this.trackingStatus,
      this.recipientName,
      this.aosQuotesActivities1Emails,
      this.sendENotification,
      this.expectedDeliveryDate,
      this.totalItems,
      this.savPaymentsAosQuotes,
      this.totalDoorDeliveryCost,
      this.discountValueFixedAmount,
      this.totalChargeableWeight,
      this.aosQuotesActivities1Meetings,
      this.totalBalance,
      this.totalBalanceUsdollar,
      this.aosQuotesActivities1Notes,
      this.purchaseStatus,
      this.savDiscountsAosQuotes1,
      this.savDiscountsAosQuotes1Name,
      this.savDiscountsAosQuotes1savDiscountsIda,
      this.discount,
      this.discountUsdollar,
      this.aosQuotesNotes1,
      this.phoneNumberWithCountryCode,
      this.webLink,
      this.countryCode,
      this.shippingCountryCode,
      this.arrivalDate,
      this.doorDeliveryCost,
      this.doorDeliveryCostUsdollar,
      this.orderStatus});

  Records.fromJson(Map<String, dynamic> json) {
    moduleName = json['module_name'];
    id = json['id'];
    name = json['name'];
    dateEntered = json['date_entered'];
    dateModified = json['date_modified'];
    modifiedUserId = json['modified_user_id'];
    modifiedByName = json['modified_by_name'];
    createdBy = json['created_by'];
    createdByName = json['created_by_name'];
    description = json['description'];
    deleted = json['deleted'];
    createdByLink = json['created_by_link'];
    modifiedUserLink = json['modified_user_link'];
    assignedUserId = json['assigned_user_id'];
    assignedUserName = json['assigned_user_name'];
    assignedUserLink = json['assigned_user_link'];
    securityGroups = json['SecurityGroups'];
    approvalIssue = json['approval_issue'];
    billingAccountId = json['billing_account_id'];
    billingAccount = json['billing_account'];
    billingContactId = json['billing_contact_id'];
    billingContact = json['billing_contact'];
    billingAddressStreet = json['billing_address_street'];
    billingAddressCity = json['billing_address_city'];
    billingAddressState = json['billing_address_state'];
    billingAddressPostalcode = json['billing_address_postalcode'];
    billingAddressCountry = json['billing_address_country'];
    shippingAddressStreet = json['shipping_address_street'];
    shippingAddressCity = json['shipping_address_city'];
    shippingAddressState = json['shipping_address_state'];
    shippingAddressPostalcode = json['shipping_address_postalcode'];
    shippingAddressCountry = json['shipping_address_country'];
    expiration = json['expiration'];
    number = json['number'];
    opportunityId = json['opportunity_id'];
    opportunity = json['opportunity'];
    templateDdownC = json['template_ddown_c'];
    lineItems = json['line_items'];
    totalAmt = json['total_amt'];
    totalAmtUsdollar = json['total_amt_usdollar'];
    subtotalAmount = json['subtotal_amount'];
    subtotalAmountUsdollar = json['subtotal_amount_usdollar'];
    discountAmount = json['discount_amount'];
    discountAmountUsdollar = json['discount_amount_usdollar'];
    taxAmount = json['tax_amount'];
    taxAmountUsdollar = json['tax_amount_usdollar'];
    shippingAmount = json['shipping_amount'];
    shippingAmountUsdollar = json['shipping_amount_usdollar'];
    shippingTax = json['shipping_tax'];
    shippingTaxAmt = json['shipping_tax_amt'];
    shippingTaxAmtUsdollar = json['shipping_tax_amt_usdollar'];
    totalAmount = json['total_amount'];
    totalAmountUsdollar = json['total_amount_usdollar'];
    currencyId = json['currency_id'];
    stage = json['stage'];
    term = json['term'];
    termsC = json['terms_c'];
    approvalStatus = json['approval_status'];
    invoiceStatus = json['invoice_status'];
    subtotalTaxAmount = json['subtotal_tax_amount'];
    subtotalTaxAmountUsdollar = json['subtotal_tax_amount_usdollar'];
    accounts = json['accounts'];
    contacts = json['contacts'];
    opportunities = json['opportunities'];
    aosQuotesProject = json['aos_quotes_project'];
    aosQuotesAosInvoices = json['aos_quotes_aos_invoices'];
    aosQuotesAosContracts = json['aos_quotes_aos_contracts'];
    aosProductsQuotes = json['aos_products_quotes'];
    aosLineItemGroups = json['aos_line_item_groups'];
    currencySymbol = json['currency_symbol'];
    shipmentDate = json['shipment_date'];
    primaryEmailAddress = json['primary_email_address'];
    orderDate = json['order_date'];
    shippingEmail = json['shipping_email'];
    aosQuotesActivities1Tasks = json['aos_quotes_activities_1_tasks'];
    discountType = json['discount_type'];
    discountCurrencyId = json['discount_currency_id'];
    quantity = json['quantity'];
    shippingPhoneNumberWithCountryCode = json['shipping_phone_number_with_country_code'];
    receiveShipment = json['receive_shipment'];
    discountValuePercentage = json['discount_value_percentage'];
    noItemShipped = json['no_item_shipped'];
    aosQuotesActivities1Calls = json['aos_quotes_activities_1_calls'];
    currencyName = json['currency_name'];
    totalAmtPaid = json['total_amt_paid'];
    totalAmtPaidUsdollar = json['total_amt_paid_usdollar'];
    billingAddressId = json['billing_address_id'];
    billingAddressName = json['billing_address_name'];
    productQuotesId = json['product_quotes_id'];
    shippingAddressId = json['shipping_address_id'];
    shippingAddressName = json['shipping_address_name'];
    shippingPhoneMobile = json['shipping_phone_mobile'];
    savRefundAosQuotes = json['sav_refund_aos_quotes'];
    phoneMobile = json['phone_mobile'];
    discountBasis = json['discount_basis'];
    orderNumber = json['order_number'];
    itemDetails = json['item_details'];
    refundDate = json['refund_date'];
    trackingStatus = json['tracking_status'];
    recipientName = json['recipient_name'];
    aosQuotesActivities1Emails = json['aos_quotes_activities_1_emails'];
    sendENotification = json['send_e_notification'];
    expectedDeliveryDate = json['expected_delivery_date'];
    totalItems = json['total_items'];
    savPaymentsAosQuotes = json['sav_payments_aos_quotes'];
    totalDoorDeliveryCost = json['total_door_delivery_cost'];
    discountValueFixedAmount = json['discount_value_fixed_amount'];
    totalChargeableWeight = json['total_chargeable_weight'];
    aosQuotesActivities1Meetings = json['aos_quotes_activities_1_meetings'];
    totalBalance = json['total_balance'];
    totalBalanceUsdollar = json['total_balance_usdollar'];
    aosQuotesActivities1Notes = json['aos_quotes_activities_1_notes'];
    purchaseStatus = json['purchase_status'];
    savDiscountsAosQuotes1 = json['sav_discounts_aos_quotes_1'];
    savDiscountsAosQuotes1Name = json['sav_discounts_aos_quotes_1_name'];
    savDiscountsAosQuotes1savDiscountsIda = json['sav_discounts_aos_quotes_1sav_discounts_ida'];
    discount = json['discount'];
    discountUsdollar = json['discount_usdollar'];
    aosQuotesNotes1 = json['aos_quotes_notes_1'];
    phoneNumberWithCountryCode = json['phone_number_with_country_code'];
    webLink = json['web_link'];
    countryCode = json['country_code'];
    shippingCountryCode = json['shipping_country_code'];
    arrivalDate = json['arrival_date'];
    doorDeliveryCost = json['door_delivery_cost'];
    doorDeliveryCostUsdollar = json['door_delivery_cost_usdollar'];
    orderStatus = json['order_status'];
    lineItems = json['lineItems'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['module_name'] = this.moduleName;
    data['id'] = this.id;
    data['name'] = this.name;
    data['date_entered'] = this.dateEntered;
    data['date_modified'] = this.dateModified;
    data['modified_user_id'] = this.modifiedUserId;
    data['modified_by_name'] = this.modifiedByName;
    data['created_by'] = this.createdBy;
    data['created_by_name'] = this.createdByName;
    data['description'] = this.description;
    data['deleted'] = this.deleted;
    data['created_by_link'] = this.createdByLink;
    data['modified_user_link'] = this.modifiedUserLink;
    data['assigned_user_id'] = this.assignedUserId;
    data['assigned_user_name'] = this.assignedUserName;
    data['assigned_user_link'] = this.assignedUserLink;
    data['SecurityGroups'] = this.securityGroups;
    data['approval_issue'] = this.approvalIssue;
    data['billing_account_id'] = this.billingAccountId;
    data['billing_account'] = this.billingAccount;
    data['billing_contact_id'] = this.billingContactId;
    data['billing_contact'] = this.billingContact;
    data['billing_address_street'] = this.billingAddressStreet;
    data['billing_address_city'] = this.billingAddressCity;
    data['billing_address_state'] = this.billingAddressState;
    data['billing_address_postalcode'] = this.billingAddressPostalcode;
    data['billing_address_country'] = this.billingAddressCountry;
    data['shipping_address_street'] = this.shippingAddressStreet;
    data['shipping_address_city'] = this.shippingAddressCity;
    data['shipping_address_state'] = this.shippingAddressState;
    data['shipping_address_postalcode'] = this.shippingAddressPostalcode;
    data['shipping_address_country'] = this.shippingAddressCountry;
    data['expiration'] = this.expiration;
    data['number'] = this.number;
    data['opportunity_id'] = this.opportunityId;
    data['opportunity'] = this.opportunity;
    data['template_ddown_c'] = this.templateDdownC;
    data['line_items'] = this.lineItems;
    data['total_amt'] = this.totalAmt;
    data['total_amt_usdollar'] = this.totalAmtUsdollar;
    data['subtotal_amount'] = this.subtotalAmount;
    data['subtotal_amount_usdollar'] = this.subtotalAmountUsdollar;
    data['discount_amount'] = this.discountAmount;
    data['discount_amount_usdollar'] = this.discountAmountUsdollar;
    data['tax_amount'] = this.taxAmount;
    data['tax_amount_usdollar'] = this.taxAmountUsdollar;
    data['shipping_amount'] = this.shippingAmount;
    data['shipping_amount_usdollar'] = this.shippingAmountUsdollar;
    data['shipping_tax'] = this.shippingTax;
    data['shipping_tax_amt'] = this.shippingTaxAmt;
    data['shipping_tax_amt_usdollar'] = this.shippingTaxAmtUsdollar;
    data['total_amount'] = this.totalAmount;
    data['total_amount_usdollar'] = this.totalAmountUsdollar;
    data['currency_id'] = this.currencyId;
    data['stage'] = this.stage;
    data['term'] = this.term;
    data['terms_c'] = this.termsC;
    data['approval_status'] = this.approvalStatus;
    data['invoice_status'] = this.invoiceStatus;
    data['subtotal_tax_amount'] = this.subtotalTaxAmount;
    data['subtotal_tax_amount_usdollar'] = this.subtotalTaxAmountUsdollar;
    data['accounts'] = this.accounts;
    data['contacts'] = this.contacts;
    data['opportunities'] = this.opportunities;
    data['aos_quotes_project'] = this.aosQuotesProject;
    data['aos_quotes_aos_invoices'] = this.aosQuotesAosInvoices;
    data['aos_quotes_aos_contracts'] = this.aosQuotesAosContracts;
    data['aos_products_quotes'] = this.aosProductsQuotes;
    data['aos_line_item_groups'] = this.aosLineItemGroups;
    data['currency_symbol'] = this.currencySymbol;
    data['shipment_date'] = this.shipmentDate;
    data['primary_email_address'] = this.primaryEmailAddress;
    data['order_date'] = this.orderDate;
    data['shipping_email'] = this.shippingEmail;
    data['aos_quotes_activities_1_tasks'] = this.aosQuotesActivities1Tasks;
    data['discount_type'] = this.discountType;
    data['discount_currency_id'] = this.discountCurrencyId;
    data['quantity'] = this.quantity;
    data['shipping_phone_number_with_country_code'] = this.shippingPhoneNumberWithCountryCode;
    data['receive_shipment'] = this.receiveShipment;
    data['discount_value_percentage'] = this.discountValuePercentage;
    data['no_item_shipped'] = this.noItemShipped;
    data['aos_quotes_activities_1_calls'] = this.aosQuotesActivities1Calls;
    data['currency_name'] = this.currencyName;
    data['total_amt_paid'] = this.totalAmtPaid;
    data['total_amt_paid_usdollar'] = this.totalAmtPaidUsdollar;
    data['billing_address_id'] = this.billingAddressId;
    data['billing_address_name'] = this.billingAddressName;
    data['product_quotes_id'] = this.productQuotesId;
    data['shipping_address_id'] = this.shippingAddressId;
    data['shipping_address_name'] = this.shippingAddressName;
    data['shipping_phone_mobile'] = this.shippingPhoneMobile;
    data['sav_refund_aos_quotes'] = this.savRefundAosQuotes;
    data['phone_mobile'] = this.phoneMobile;
    data['discount_basis'] = this.discountBasis;
    data['order_number'] = this.orderNumber;
    data['item_details'] = this.itemDetails;
    data['refund_date'] = this.refundDate;
    data['tracking_status'] = this.trackingStatus;
    data['recipient_name'] = this.recipientName;
    data['aos_quotes_activities_1_emails'] = this.aosQuotesActivities1Emails;
    data['send_e_notification'] = this.sendENotification;
    data['expected_delivery_date'] = this.expectedDeliveryDate;
    data['total_items'] = this.totalItems;
    data['sav_payments_aos_quotes'] = this.savPaymentsAosQuotes;
    data['total_door_delivery_cost'] = this.totalDoorDeliveryCost;
    data['discount_value_fixed_amount'] = this.discountValueFixedAmount;
    data['total_chargeable_weight'] = this.totalChargeableWeight;
    data['aos_quotes_activities_1_meetings'] = this.aosQuotesActivities1Meetings;
    data['total_balance'] = this.totalBalance;
    data['total_balance_usdollar'] = this.totalBalanceUsdollar;
    data['aos_quotes_activities_1_notes'] = this.aosQuotesActivities1Notes;
    data['purchase_status'] = this.purchaseStatus;
    data['sav_discounts_aos_quotes_1'] = this.savDiscountsAosQuotes1;
    data['sav_discounts_aos_quotes_1_name'] = this.savDiscountsAosQuotes1Name;
    data['sav_discounts_aos_quotes_1sav_discounts_ida'] = this.savDiscountsAosQuotes1savDiscountsIda;
    data['discount'] = this.discount;
    data['discount_usdollar'] = this.discountUsdollar;
    data['aos_quotes_notes_1'] = this.aosQuotesNotes1;
    data['phone_number_with_country_code'] = this.phoneNumberWithCountryCode;
    data['web_link'] = this.webLink;
    data['country_code'] = this.countryCode;
    data['shipping_country_code'] = this.shippingCountryCode;
    data['arrival_date'] = this.arrivalDate;
    data['door_delivery_cost'] = this.doorDeliveryCost;
    data['door_delivery_cost_usdollar'] = this.doorDeliveryCostUsdollar;
    data['order_status'] = this.orderStatus;
    data['lineItems'] = this.lineItems;
    return data;
  }
}
