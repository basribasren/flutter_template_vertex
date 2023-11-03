import 'bloc/sign_in_bloc.dart';import 'models/sign_in_model.dart';import 'package:basri_s_application31/core/app_export.dart';import 'package:basri_s_application31/widgets/custom_button.dart';import 'package:basri_s_application31/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:fluttertoast/fluttertoast.dart';import 'package:basri_s_application31/domain/googleauth/google_auth_helper.dart';import 'package:basri_s_application31/domain/facebookauth/facebook_auth_helper.dart';class SignInScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<SignInBloc>(create: (context) => SignInBloc(SignInState(signInModelObj: SignInModel()))..add(SignInInitialEvent()), child: SignInScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray50, resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 39, right: 24), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Text("lbl_welcome_back".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeExtraBold24Gray900)), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(top: 9), child: Text("msg_sign_in_to_your".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManrope16.copyWith(letterSpacing: getHorizontalSize(0.3))))), BlocSelector<SignInBloc, SignInState, TextEditingController?>(selector: (state) => state.phonenumberController, builder: (context, phonenumberController) {return CustomTextFormField(focusNode: FocusNode(), controller: phonenumberController, hintText: "lbl_phone_number".tr, margin: getMargin(top: 20), textInputType: TextInputType.phone);}), BlocBuilder<SignInBloc, SignInState>(builder: (context, state) {return CustomTextFormField(focusNode: FocusNode(), controller: state.passwordController, hintText: "lbl_password".tr, margin: getMargin(top: 16), padding: TextFormFieldPadding.PaddingT14, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: InkWell(onTap: () {context.read<SignInBloc>().add(ChangePasswordVisibilityEvent(value: !state.isShowPassword));}, child: Container(margin: getMargin(left: 30, top: 15, right: 16, bottom: 14), child: CustomImageView(svgPath: state.isShowPassword ? ImageConstant.imgEye : ImageConstant.imgEye))), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(49)), isObscureText: state.isShowPassword);}), CustomButton(height: getVerticalSize(56), text: "lbl_sign_in".tr, margin: getMargin(top: 20), shape: ButtonShape.RoundedBorder10, padding: ButtonPadding.PaddingAll16, fontStyle: ButtonFontStyle.ManropeBold16Gray50_1, onTap: () {onTapSignin(context);}), Padding(padding: getPadding(top: 10), child: Text("msg_forgot_password".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeSemiBold14)), Spacer(), Text("msg_or_continue_wit".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManrope16.copyWith(letterSpacing: getHorizontalSize(0.3))), CustomButton(height: getVerticalSize(56), text: "lbl_google".tr, margin: getMargin(top: 10), variant: ButtonVariant.OutlineBluegray500, shape: ButtonShape.RoundedBorder10, padding: ButtonPadding.PaddingT17, fontStyle: ButtonFontStyle.ManropeSemiBold16Gray900, prefixWidget: Container(margin: getMargin(right: 12), child: CustomImageView(svgPath: ImageConstant.imgGoogle)), onTap: () {onTapGoogle(context);}), CustomButton(height: getVerticalSize(56), text: "lbl_facebook".tr, margin: getMargin(top: 10), variant: ButtonVariant.OutlineBluegray500, shape: ButtonShape.RoundedBorder10, padding: ButtonPadding.PaddingT17, fontStyle: ButtonFontStyle.ManropeSemiBold16Gray900, prefixWidget: Container(margin: getMargin(right: 12), child: CustomImageView(imagePath: ImageConstant.imgFacebook, height: getSize(24), width: getSize(24))), onTap: () {onTapFacebook(context);}), Padding(padding: getPadding(left: 42, top: 30, right: 41), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("msg_don_t_have_an_a2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManrope16.copyWith(letterSpacing: getHorizontalSize(0.3))), GestureDetector(onTap: () {onTapTxtSignup(context);}, child: Padding(padding: getPadding(left: 4, top: 1), child: Text("lbl_sign_up".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeExtraBold16.copyWith(letterSpacing: getHorizontalSize(0.2)))))]))])))); } 
onTapSignin(BuildContext context) { context.read<SignInBloc>().add(CreateLoginEvent(onCreateLoginEventSuccess: () {

_onCreateLoginEventSuccess(context);
},onCreateLoginEventError: () {

_onCreateLoginEventError(context);
},),);
 } 
void _onCreateLoginEventSuccess(BuildContext context) { NavigatorService.popAndPushNamed(AppRoutes.homeContainerScreen, arguments: {NavigationArgs.token: context.read<SignInBloc>().postLoginResp.data!.token!, NavigationArgs.id: context.read<SignInBloc>().postLoginResp.data!.id!}); } 
void _onCreateLoginEventError(BuildContext context) { 
Fluttertoast.showToast(msg: "Invalid username or password!",); } 
onTapGoogle(BuildContext context) async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('user data is empty')));
          }
        }).catchError((onError) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(onError.toString())));
        });
         } 
onTapFacebook(BuildContext context) async  {             await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
              //TODO Actions to be performed after signin
              }).catchError((onError) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(onError.toString())));
            });
             } 
onTapTxtSignup(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signUpScreen, ); } 
 }
