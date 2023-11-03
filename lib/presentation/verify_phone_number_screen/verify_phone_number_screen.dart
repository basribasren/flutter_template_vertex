import 'bloc/verify_phone_number_bloc.dart';import 'models/verify_phone_number_model.dart';import 'package:basri_s_application31/core/app_export.dart';import 'package:basri_s_application31/widgets/custom_button.dart';import 'package:basri_s_application31/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';import 'package:flutter/services.dart';import 'package:pin_code_fields/pin_code_fields.dart';class VerifyPhoneNumberScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<VerifyPhoneNumberBloc>(create: (context) => VerifyPhoneNumberBloc(VerifyPhoneNumberState(verifyPhoneNumberModelObj: VerifyPhoneNumberModel()))..add(VerifyPhoneNumberInitialEvent()), child: VerifyPhoneNumberScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray50, resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: getPadding(left: 23, top: 8, right: 23, bottom: 8), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomIconButton(height: 40, width: 40, margin: getMargin(left: 1), onTap: () {onTapBtnArrowleft(context);}, child: CustomImageView(svgPath: ImageConstant.imgArrowleft)), Padding(padding: getPadding(left: 1, top: 34), child: Text("msg_verify_phone_nu".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeExtraBold24Gray900)), Container(width: getHorizontalSize(299), margin: getMargin(left: 1, top: 7, right: 28), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_we_send_a_code2".tr, style: TextStyle(color: ColorConstant.blueGray500, fontSize: getFontSize(14), fontFamily: 'Manrope', fontWeight: FontWeight.w600)), TextSpan(text: "msg_783_enter".tr, style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(14), fontFamily: 'Manrope', fontWeight: FontWeight.w600))]), textAlign: TextAlign.left)), Padding(padding: getPadding(left: 1, top: 47), child: BlocSelector<VerifyPhoneNumberBloc, VerifyPhoneNumberState, TextEditingController?>(selector: (state) => state.otpController, builder: (context, otpController) {return PinCodeTextField(appContext: context, controller: otpController, length: 5, obscureText: false, obscuringCharacter: '*', keyboardType: TextInputType.number, autoDismissKeyboard: true, enableActiveFill: true, inputFormatters: [FilteringTextInputFormatter.digitsOnly], onChanged: (value) {otpController?.text = value;}, textStyle: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(24), fontFamily: 'Manrope', fontWeight: FontWeight.w800), pinTheme: PinTheme(fieldHeight: getHorizontalSize(56), fieldWidth: getHorizontalSize(56), shape: PinCodeFieldShape.box, borderRadius: BorderRadius.circular(getHorizontalSize(12)), selectedFillColor: ColorConstant.blueGray50, activeFillColor: ColorConstant.blueGray50, inactiveFillColor: ColorConstant.blueGray50, inactiveColor: ColorConstant.fromHex("#1212121D"), selectedColor: ColorConstant.fromHex("#1212121D"), activeColor: ColorConstant.fromHex("#1212121D")));})), Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 33), child: Text("lbl_resend_code".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeSemiBold16Blue500.copyWith(letterSpacing: getHorizontalSize(0.2))))), CustomButton(height: getVerticalSize(56), text: "lbl_confirm".tr, margin: getMargin(left: 1, top: 50, bottom: 5), shape: ButtonShape.RoundedBorder10, padding: ButtonPadding.PaddingAll16, fontStyle: ButtonFontStyle.ManropeBold16WhiteA700_1, onTap: () {onTapConfirm(context);})])))); } 
onTapBtnArrowleft(BuildContext context) { NavigatorService.goBack(); } 
onTapConfirm(BuildContext context) { NavigatorService.pushNamed(AppRoutes.selectVirtualAppScreen, ); } 
 }
