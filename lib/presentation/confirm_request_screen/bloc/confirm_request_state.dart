// ignore_for_file: must_be_immutable

part of 'confirm_request_bloc.dart';

class ConfirmRequestState extends Equatable {
  ConfirmRequestState({this.confirmRequestModelObj});

  ConfirmRequestModel? confirmRequestModelObj;

  @override
  List<Object?> get props => [
        confirmRequestModelObj,
      ];
  ConfirmRequestState copyWith({ConfirmRequestModel? confirmRequestModelObj}) {
    return ConfirmRequestState(
      confirmRequestModelObj:
          confirmRequestModelObj ?? this.confirmRequestModelObj,
    );
  }
}
