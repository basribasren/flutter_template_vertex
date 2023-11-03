import '../models/options_item_model.dart';
import 'package:basri_s_application31/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OptionsItemWidget extends StatelessWidget {
  OptionsItemWidget(this.optionsItemModelObj, {this.onSelectedChipView});

  OptionsItemModel optionsItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: getPadding(
          left: 20,
          right: 20,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          optionsItemModelObj.freewifiTxt,
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
        selected: optionsItemModelObj.isSelected,
        backgroundColor: Colors.transparent,
        selectedColor: ColorConstant.gray90033,
        shape: optionsItemModelObj.isSelected
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: ColorConstant.blueGray500,
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
                  color: ColorConstant.blueGray500,
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
      ),
    );
  }
}
