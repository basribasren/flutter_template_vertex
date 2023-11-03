import '../models/time1_item_model.dart';
import 'package:basri_s_application31/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Time1ItemWidget extends StatelessWidget {
  Time1ItemWidget(this.time1ItemModelObj);

  Time1ItemModel time1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: getHorizontalSize(
            83,
          ),
          margin: getMargin(
            right: 10,
          ),
          padding: getPadding(
            left: 13,
            top: 10,
            right: 13,
            bottom: 10,
          ),
          decoration: AppDecoration.txtOutlineGray300.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder8,
          ),
          child: Text(
            time1ItemModelObj.timeTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtManropeSemiBold14Gray900,
          ),
        ),
      ),
    );
  }
}
