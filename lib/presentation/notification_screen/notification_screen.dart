import '../notification_screen/widgets/listchartline_item_widget.dart';import '../notification_screen/widgets/listhome_item_widget.dart';import 'bloc/notification_bloc.dart';import 'models/listchartline_item_model.dart';import 'models/listhome_item_model.dart';import 'models/notification_model.dart';import 'package:basri_s_application31/core/app_export.dart';import 'package:basri_s_application31/widgets/app_bar/appbar_iconbutton_1.dart';import 'package:basri_s_application31/widgets/app_bar/appbar_subtitle.dart';import 'package:basri_s_application31/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class NotificationScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<NotificationBloc>(create: (context) => NotificationBloc(NotificationState(notificationModelObj: NotificationModel()))..add(NotificationInitialEvent()), child: NotificationScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray50, appBar: CustomAppBar(height: getVerticalSize(48), leadingWidth: 64, leading: AppbarIconbutton1(svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24), onTap: () {onTapArrowleft(context);}), centerTitle: true, title: AppbarSubtitle(text: "lbl_notification".tr)), body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 35, right: 24, bottom: 35), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_today".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeBold16.copyWith(letterSpacing: getHorizontalSize(0.2))), Padding(padding: getPadding(top: 15), child: BlocSelector<NotificationBloc, NotificationState, NotificationModel?>(selector: (state) => state.notificationModelObj, builder: (context, notificationModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(14));}, itemCount: notificationModelObj?.listhomeItemList.length ?? 0, itemBuilder: (context, index) {ListhomeItemModel model = notificationModelObj?.listhomeItemList[index] ?? ListhomeItemModel(); return ListhomeItemWidget(model);});})), Padding(padding: getPadding(top: 22), child: Text("lbl_this_week".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeBold16.copyWith(letterSpacing: getHorizontalSize(0.2)))), Padding(padding: getPadding(top: 17), child: BlocSelector<NotificationBloc, NotificationState, NotificationModel?>(selector: (state) => state.notificationModelObj, builder: (context, notificationModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(14));}, itemCount: notificationModelObj?.listchartlineItemList.length ?? 0, itemBuilder: (context, index) {ListchartlineItemModel model = notificationModelObj?.listchartlineItemList[index] ?? ListchartlineItemModel(); return ListchartlineItemWidget(model);});}))])))); } 
onTapArrowleft(BuildContext context) { NavigatorService.goBack(); } 
 }
