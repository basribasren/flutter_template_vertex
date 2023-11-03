import 'bloc/app_navigation_bloc.dart';import 'models/app_navigation_model.dart';import 'package:basri_s_application31/core/app_export.dart';import 'package:flutter/material.dart';import 'package:basri_s_application31/presentation/confirm_request_bottom_sheet_bottomsheet/confirm_request_bottom_sheet_bottomsheet.dart';class AppNavigationScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<AppNavigationBloc>(create: (context) => AppNavigationBloc(AppNavigationState(appNavigationModelObj: AppNavigationModel()))..add(AppNavigationInitialEvent()), child: AppNavigationScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<AppNavigationBloc, AppNavigationState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_app_navigation".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20), child: Text("msg_check_your_app_s".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular16))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.black900))])), Expanded(child: SingleChildScrollView(child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [GestureDetector(onTap: () {onTapOnboarding(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_onboarding".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapSplash(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_splash".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapSignin(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_sign_in2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapSignup(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_sign_up2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapHomeContainer(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_home_container".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapHomeAlarm(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_home_alarm".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapNotification(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_notification".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapNotificationEmptyStates(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_notification_empty".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapMessageChat(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_message_chat".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapMyHomeEmpty(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_my_home_empty".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapAddNewPropertyAddress(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_add_new_property_address".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapAddNewPropertyMeetwithaAgent(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_add_new_property_meet".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapAddNewPropertyTimetosell(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_add_new_property_time".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapAddNewPropertyReasonsellinghome(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_add_new_property_reason".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapAddNewPropertyDecsription(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_add_new_property_decsription".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapAddNewPropertyHomefacts(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_add_new_property_home".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapAddNewPropertyContact(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_add_new_property_contact".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapAddNewPropertySelectAmenities(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_add_new_property_select".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapAddNewPropertyDetails(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_add_new_property_details".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapHomeListing(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_home_listing".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapHomeListingSatelite(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_home_listing_satelite".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapHomeListingDraw(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_home_listing_draw".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapFilter(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_filter".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapProductDetails(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_product_details".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapPickDate(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_pick_date".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapVerifyPhoneNumber(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_verify_phone_number".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapSelectvirtualapp(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_select_virtual".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapSelectAppAlarm(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_select_app_alarm".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapConfirmrequest(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_confirm_request".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapConfirmrequestBottomsheet(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_confirm_request".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapSettings(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_settings2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapFAQsGethelp(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_faqs_get_help".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapPastTours(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_past_tours".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapEditProfile(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_edit_profile".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapRecentlyViews(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_recently_views".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))]))), GestureDetector(onTap: () {onTapFavorite(context);}, child: Container(decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_favorite".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoRegular20))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray40001))])))]))))]))));}); } 
onTapOnboarding(BuildContext context) { NavigatorService.pushNamed(AppRoutes.onboardingScreen, ); } 
onTapSplash(BuildContext context) { NavigatorService.pushNamed(AppRoutes.splashScreen, ); } 
onTapSignin(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signInScreen, ); } 
onTapSignup(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signUpScreen, ); } 
onTapHomeContainer(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeContainerScreen, ); } 
onTapHomeAlarm(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeAlarmScreen, ); } 
onTapNotification(BuildContext context) { NavigatorService.pushNamed(AppRoutes.notificationScreen, ); } 
onTapNotificationEmptyStates(BuildContext context) { NavigatorService.pushNamed(AppRoutes.notificationEmptyStatesScreen, ); } 
onTapMessageChat(BuildContext context) { NavigatorService.pushNamed(AppRoutes.messageChatScreen, ); } 
onTapMyHomeEmpty(BuildContext context) { NavigatorService.pushNamed(AppRoutes.myHomeEmptyScreen, ); } 
onTapAddNewPropertyAddress(BuildContext context) { NavigatorService.pushNamed(AppRoutes.addNewPropertyAddressScreen, ); } 
onTapAddNewPropertyMeetwithaAgent(BuildContext context) { NavigatorService.pushNamed(AppRoutes.addNewPropertyMeetWithAAgentScreen, ); } 
onTapAddNewPropertyTimetosell(BuildContext context) { NavigatorService.pushNamed(AppRoutes.addNewPropertyTimeToSellScreen, ); } 
onTapAddNewPropertyReasonsellinghome(BuildContext context) { NavigatorService.pushNamed(AppRoutes.addNewPropertyReasonSellingHomeScreen, ); } 
onTapAddNewPropertyDecsription(BuildContext context) { NavigatorService.pushNamed(AppRoutes.addNewPropertyDecsriptionScreen, ); } 
onTapAddNewPropertyHomefacts(BuildContext context) { NavigatorService.pushNamed(AppRoutes.addNewPropertyHomeFactsScreen, ); } 
onTapAddNewPropertyContact(BuildContext context) { NavigatorService.pushNamed(AppRoutes.addNewPropertyContactScreen, ); } 
onTapAddNewPropertySelectAmenities(BuildContext context) { NavigatorService.pushNamed(AppRoutes.addNewPropertySelectAmenitiesScreen, ); } 
onTapAddNewPropertyDetails(BuildContext context) { NavigatorService.pushNamed(AppRoutes.addNewPropertyDetailsScreen, ); } 
onTapHomeListing(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeListingScreen, ); } 
onTapHomeListingSatelite(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeListingSateliteScreen, ); } 
onTapHomeListingDraw(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeListingDrawScreen, ); } 
onTapFilter(BuildContext context) { NavigatorService.pushNamed(AppRoutes.filterScreen, ); } 
onTapProductDetails(BuildContext context) { NavigatorService.pushNamed(AppRoutes.productDetailsScreen, ); } 
onTapPickDate(BuildContext context) { NavigatorService.pushNamed(AppRoutes.pickDateScreen, ); } 
onTapVerifyPhoneNumber(BuildContext context) { NavigatorService.pushNamed(AppRoutes.verifyPhoneNumberScreen, ); } 
onTapSelectvirtualapp(BuildContext context) { NavigatorService.pushNamed(AppRoutes.selectVirtualAppScreen, ); } 
onTapSelectAppAlarm(BuildContext context) { NavigatorService.pushNamed(AppRoutes.selectAppAlarmScreen, ); } 
onTapConfirmrequest(BuildContext context) { NavigatorService.pushNamed(AppRoutes.confirmRequestScreen, ); } 
onTapConfirmrequestBottomsheet(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>ConfirmRequestBottomSheetBottomsheet.builder(context),isScrollControlled: true); } 
onTapSettings(BuildContext context) { NavigatorService.pushNamed(AppRoutes.settingsScreen, ); } 
onTapFAQsGethelp(BuildContext context) { NavigatorService.pushNamed(AppRoutes.faqsGetHelpScreen, ); } 
onTapPastTours(BuildContext context) { NavigatorService.pushNamed(AppRoutes.pastToursScreen, ); } 
onTapEditProfile(BuildContext context) { NavigatorService.pushNamed(AppRoutes.editProfileScreen, ); } 
onTapRecentlyViews(BuildContext context) { NavigatorService.pushNamed(AppRoutes.recentlyViewsScreen, ); } 
onTapFavorite(BuildContext context) { NavigatorService.pushNamed(AppRoutes.favoriteScreen, ); } 
 }
