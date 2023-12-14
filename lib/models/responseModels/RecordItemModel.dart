class RecordItemModel {
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
  String? currencyId;
  String? partNumber;
  String? itemDescription;
  String? number;
  String? productQty;
  String? productCostPrice;
  String? productCostPriceUsdollar;
  String? productListPrice;
  String? productListPriceUsdollar;
  String? productDiscount;
  String? productDiscountUsdollar;
  String? productDiscountAmount;
  String? productDiscountAmountUsdollar;
  String? discount;
  String? productUnitPrice;
  String? productUnitPriceUsdollar;
  String? vatAmt;
  String? vatAmtUsdollar;
  String? productTotalPrice;
  String? productTotalPriceUsdollar;
  String? vat;
  String? parentName;
  String? parentType;
  String? parentId;
  String? productId;
  String? groupName;
  String? groupId;
  String? aosProducts;
  String? aosContracts;
  String? aosQuotes;
  String? aosInvoices;
  String? purchaseDate;
  String? itemLength;
  String? lastLocationId;
  String? lastLocationName;
  String? itemWidth;
  String? itemTotalCostUsdollar;
  String? itemStatus;
  String? actualArrivalKenyaDate;
  String? itemTotalCost;
  String? courierTrackingNumber;
  String? storeSendersNumber;
  String? allItemsConfirmed;
  String? parcelStatus;
  String? newEdaKenyaDate;
  String? packageStatus;
  String? itemUSLocalShipping;
  String? savLocationsAosProductsQuotes;
  String? customParentType;
  String? itemNumber;
  String? itemWebLink;
  String? esdUsaDate;
  String? edaKenyaDate;
  String? itemShippingCost;
  String? itemDetails;
  String? itemQty;
  String? itemWeight;
  String? itemUnitCost;
  String? moreInfoPackaging;
  String? parentCourierTrackingNumber;
  String? productUnitPriceUsd;
  String? itemNotes;
  String? edaUsaDate;
  String? storeOrderNumber;
  String? itemHeight;
  String? cubicFeet;
  String? actualShipDate;
  String? subItemTotal;
  String? itemServiceFee;

  RecordItemModel(
      {this.id,
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
        this.currencyId,
        this.partNumber,
        this.itemDescription,
        this.number,
        this.productQty,
        this.productCostPrice,
        this.productCostPriceUsdollar,
        this.productListPrice,
        this.productListPriceUsdollar,
        this.productDiscount,
        this.productDiscountUsdollar,
        this.productDiscountAmount,
        this.productDiscountAmountUsdollar,
        this.discount,
        this.productUnitPrice,
        this.productUnitPriceUsdollar,
        this.vatAmt,
        this.vatAmtUsdollar,
        this.productTotalPrice,
        this.productTotalPriceUsdollar,
        this.vat,
        this.parentName,
        this.parentType,
        this.parentId,
        this.productId,
        this.groupName,
        this.groupId,
        this.aosProducts,
        this.aosContracts,
        this.aosQuotes,
        this.aosInvoices,
        this.purchaseDate,
        this.itemLength,
        this.lastLocationId,
        this.lastLocationName,
        this.itemWidth,
        this.itemTotalCostUsdollar,
        this.itemStatus,
        this.actualArrivalKenyaDate,
        this.itemTotalCost,
        this.courierTrackingNumber,
        this.storeSendersNumber,
        this.allItemsConfirmed,
        this.parcelStatus,
        this.newEdaKenyaDate,
        this.packageStatus,
        this.itemUSLocalShipping,
        this.savLocationsAosProductsQuotes,
        this.customParentType,
        this.itemNumber,
        this.itemWebLink,
        this.esdUsaDate,
        this.edaKenyaDate,
        this.itemShippingCost,
        this.itemDetails,
        this.itemQty,
        this.itemWeight,
        this.itemUnitCost,
        this.moreInfoPackaging,
        this.parentCourierTrackingNumber,
        this.productUnitPriceUsd,
        this.itemNotes,
        this.edaUsaDate,
        this.storeOrderNumber,
        this.itemHeight,
        this.cubicFeet,
        this.actualShipDate,
        this.subItemTotal,
        this.itemServiceFee});

  RecordItemModel.fromJson(Map<String, dynamic> json) {
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
    currencyId = json['currency_id'];
    partNumber = json['part_number'];
    itemDescription = json['item_description'];
    number = json['number'];
    productQty = json['product_qty'];
    productCostPrice = json['product_cost_price'];
    productCostPriceUsdollar = json['product_cost_price_usdollar'];
    productListPrice = json['product_list_price'];
    productListPriceUsdollar = json['product_list_price_usdollar'];
    productDiscount = json['product_discount'];
    productDiscountUsdollar = json['product_discount_usdollar'];
    productDiscountAmount = json['product_discount_amount'];
    productDiscountAmountUsdollar = json['product_discount_amount_usdollar'];
    discount = json['discount'];
    productUnitPrice = json['product_unit_price'];
    productUnitPriceUsdollar = json['product_unit_price_usdollar'];
    vatAmt = json['vat_amt'];
    vatAmtUsdollar = json['vat_amt_usdollar'];
    productTotalPrice = json['product_total_price'];
    productTotalPriceUsdollar = json['product_total_price_usdollar'];
    vat = json['vat'];
    parentName = json['parent_name'];
    parentType = json['parent_type'];
    parentId = json['parent_id'];
    productId = json['product_id'];
    groupName = json['group_name'];
    groupId = json['group_id'];
    aosProducts = json['aos_products'];
    aosContracts = json['aos_contracts'];
    aosQuotes = json['aos_quotes'];
    aosInvoices = json['aos_invoices'];
    purchaseDate = json['purchase_date'];
    itemLength = json['item_length'];
    lastLocationId = json['last_location_id'];
    lastLocationName = json['last_location_name'];
    itemWidth = json['item_width'];
    itemTotalCostUsdollar = json['item_total_cost_usdollar'];
    itemStatus = json['item_status'];
    actualArrivalKenyaDate = json['actual_arrival_kenya_date'];
    itemTotalCost = json['item_total_cost'];
    courierTrackingNumber = json['courier_tracking_number'];
    storeSendersNumber = json['store_senders_number'];
    allItemsConfirmed = json['all_items_confirmed'];
    parcelStatus = json['parcel_status'];
    newEdaKenyaDate = json['new_eda_kenya_date'];
    packageStatus = json['package_status'];
    itemUSLocalShipping = json['item_US_local_shipping'];
    savLocationsAosProductsQuotes = json['sav_locations_aos_products_quotes'];
    customParentType = json['custom_parent_type'];
    itemNumber = json['item_number'];
    itemWebLink = json['item_web_link'];
    esdUsaDate = json['esd_usa_date'];
    edaKenyaDate = json['eda_kenya_date'];
    itemShippingCost = json['item_shipping_cost'];
    itemDetails = json['item_details'];
    itemQty = json['item_qty'];
    itemWeight = json['item_weight'];
    itemUnitCost = json['item_unit_cost'];
    moreInfoPackaging = json['more_info_packaging'];
    parentCourierTrackingNumber = json['parent_courier_tracking_number'];
    productUnitPriceUsd = json['product_unit_price_usd'];
    itemNotes = json['item_notes'];
    edaUsaDate = json['eda_usa_date'];
    storeOrderNumber = json['store_order_number'];
    itemHeight = json['item_height'];
    cubicFeet = json['cubic_feet'];
    actualShipDate = json['actual_ship_date'];
    subItemTotal = json['sub_item_total'];
    itemServiceFee = json['item_service_fee'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
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
    data['currency_id'] = this.currencyId;
    data['part_number'] = this.partNumber;
    data['item_description'] = this.itemDescription;
    data['number'] = this.number;
    data['product_qty'] = this.productQty;
    data['product_cost_price'] = this.productCostPrice;
    data['product_cost_price_usdollar'] = this.productCostPriceUsdollar;
    data['product_list_price'] = this.productListPrice;
    data['product_list_price_usdollar'] = this.productListPriceUsdollar;
    data['product_discount'] = this.productDiscount;
    data['product_discount_usdollar'] = this.productDiscountUsdollar;
    data['product_discount_amount'] = this.productDiscountAmount;
    data['product_discount_amount_usdollar'] =
        this.productDiscountAmountUsdollar;
    data['discount'] = this.discount;
    data['product_unit_price'] = this.productUnitPrice;
    data['product_unit_price_usdollar'] = this.productUnitPriceUsdollar;
    data['vat_amt'] = this.vatAmt;
    data['vat_amt_usdollar'] = this.vatAmtUsdollar;
    data['product_total_price'] = this.productTotalPrice;
    data['product_total_price_usdollar'] = this.productTotalPriceUsdollar;
    data['vat'] = this.vat;
    data['parent_name'] = this.parentName;
    data['parent_type'] = this.parentType;
    data['parent_id'] = this.parentId;
    data['product_id'] = this.productId;
    data['group_name'] = this.groupName;
    data['group_id'] = this.groupId;
    data['aos_products'] = this.aosProducts;
    data['aos_contracts'] = this.aosContracts;
    data['aos_quotes'] = this.aosQuotes;
    data['aos_invoices'] = this.aosInvoices;
    data['purchase_date'] = this.purchaseDate;
    data['item_length'] = this.itemLength;
    data['last_location_id'] = this.lastLocationId;
    data['last_location_name'] = this.lastLocationName;
    data['item_width'] = this.itemWidth;
    data['item_total_cost_usdollar'] = this.itemTotalCostUsdollar;
    data['item_status'] = this.itemStatus;
    data['actual_arrival_kenya_date'] = this.actualArrivalKenyaDate;
    data['item_total_cost'] = this.itemTotalCost;
    data['courier_tracking_number'] = this.courierTrackingNumber;
    data['store_senders_number'] = this.storeSendersNumber;
    data['all_items_confirmed'] = this.allItemsConfirmed;
    data['parcel_status'] = this.parcelStatus;
    data['new_eda_kenya_date'] = this.newEdaKenyaDate;
    data['package_status'] = this.packageStatus;
    data['item_US_local_shipping'] = this.itemUSLocalShipping;
    data['sav_locations_aos_products_quotes'] =
        this.savLocationsAosProductsQuotes;
    data['custom_parent_type'] = this.customParentType;
    data['item_number'] = this.itemNumber;
    data['item_web_link'] = this.itemWebLink;
    data['esd_usa_date'] = this.esdUsaDate;
    data['eda_kenya_date'] = this.edaKenyaDate;
    data['item_shipping_cost'] = this.itemShippingCost;
    data['item_details'] = this.itemDetails;
    data['item_qty'] = this.itemQty;
    data['item_weight'] = this.itemWeight;
    data['item_unit_cost'] = this.itemUnitCost;
    data['more_info_packaging'] = this.moreInfoPackaging;
    data['parent_courier_tracking_number'] = this.parentCourierTrackingNumber;
    data['product_unit_price_usd'] = this.productUnitPriceUsd;
    data['item_notes'] = this.itemNotes;
    data['eda_usa_date'] = this.edaUsaDate;
    data['store_order_number'] = this.storeOrderNumber;
    data['item_height'] = this.itemHeight;
    data['cubic_feet'] = this.cubicFeet;
    data['actual_ship_date'] = this.actualShipDate;
    data['sub_item_total'] = this.subItemTotal;
    data['item_service_fee'] = this.itemServiceFee;
    return data;
  }
}
