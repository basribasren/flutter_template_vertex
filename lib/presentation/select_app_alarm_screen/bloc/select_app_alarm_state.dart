// ignore_for_file: must_be_immutable

part of 'select_app_alarm_bloc.dart';

class SelectAppAlarmState extends Equatable {
  SelectAppAlarmState({this.selectAppAlarmModelObj});

  SelectAppAlarmModel? selectAppAlarmModelObj;

  @override
  List<Object?> get props => [
        selectAppAlarmModelObj,
      ];
  SelectAppAlarmState copyWith({SelectAppAlarmModel? selectAppAlarmModelObj}) {
    return SelectAppAlarmState(
      selectAppAlarmModelObj:
          selectAppAlarmModelObj ?? this.selectAppAlarmModelObj,
    );
  }
}
