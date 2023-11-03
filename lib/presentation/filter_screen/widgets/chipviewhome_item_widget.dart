import '../models/chipviewhome_item_model.dart';
import 'package:basri_s_application31/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChipviewhomeItemWidget extends StatelessWidget {
  ChipviewhomeItemWidget(this.chipviewhomeItemModelObj,
      {this.onSelectedChipView});

  ChipviewhomeItemModel chipviewhomeItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        left: 20,
        right: 20,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipviewhomeItemModelObj.homeTxt,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: chipviewhomeItemModelObj.isSelected,
      backgroundColor: ColorConstant.gray50,
      selectedColor: ColorConstant.gray50,
      shape: chipviewhomeItemModelObj.isSelected
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: ColorConstant.gray5099,
                width: getHorizontalSize(
                  1,
                ),
              ),
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  18,
                ),
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: ColorConstant.blueGray400,
                width: getHorizontalSize(
                  1,
                ),
              ),
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  18,
                ),
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
