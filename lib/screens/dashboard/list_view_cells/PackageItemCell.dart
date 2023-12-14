import 'package:flutter/material.dart';
import 'package:savostoreapp/custom_widgets/CustomWidgets.dart';
import 'package:savostoreapp/utils/Extensions.dart';
import '../../../models/responseModels/BuyAndShipResponseModel.dart';
import '../../../utils/Constants.dart';
import '../list_view_cells/OrderItemCell.dart';

Widget renderPackageItemCell({required Records recordItem}) {
  return Container(
    margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(3), border: Border.all(width: 0.7, color: AppColors.gray), color: AppColors.lightGray),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            appBoldLabel(text: "Order #"),
            appRegularLabel(text: recordItem.name!),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            appBoldLabel(text: "Order Total"),
            appRegularLabel(text: "${recordItem.currencySymbol} ${recordItem.totalAmount!.showPrice()}"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            appBoldLabel(text: "Quote Requested"),
            appRegularLabel(text: recordItem.dateEntered!.convertToDateOnly()),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            appBoldLabel(text: "Order Status"),
            appRegularLabel(text: recordItem.orderStatus!.setOrderStatus()),
          ],
        ),
        addMargin(margin: 10),
        appBoldLabel(text: "Delivery Information"),
        appRegularLabel(text: setDeliveryInfo(recordItem: recordItem)),
        addMargin(margin: 15),
        appBoldLabel(text: "Order Information"),
        addMargin(margin: 10),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(3), border: Border.all(width: 0.7, color: AppColors.gray), color: AppColors.mediumGray),
          child: ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: recordItem.orderItems!.length,
              itemBuilder: (BuildContext context, int index) {
                return renderOrderItemCell(item: recordItem.orderItems![index], size: recordItem.orderItems!.length);
              }),
        )
      ],
    ),
  );
}

String setDeliveryInfo({required Records recordItem}) {
  switch (recordItem.receiveShipment) {
    case ApiConstants.shipOptionDoor:
      return "${recordItem.receiveShipment!.getDeliveryOption()}\n${recordItem.shippingAddressName}, ${recordItem.shippingAddressCity}, ${recordItem.shippingAddressState}, ${recordItem.shippingAddressCountry}";
    case ApiConstants.shipOptionPickUp:
      return "${recordItem.receiveShipment!.getDeliveryOption()}\n${recordItem.shippingPhoneMobile}, ${recordItem.billingContact}";
    default:
      return "${recordItem.receiveShipment!.getDeliveryOption()}\n${recordItem.shippingAddressName}, ${recordItem.shippingAddressCity}, ${recordItem.shippingAddressState}, ${recordItem.shippingAddressCountry}";
  }
}
