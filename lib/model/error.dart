import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:share_life/importer.dart';

part 'error.freezed.dart';

@freezed
abstract class AppError with _$AppError {
  const factory AppError.emailAlreadyInUse() = _EmailAlreadyInUse;

  const factory AppError.invalidEmail() = _InvalidEmail;

  const factory AppError.operationNotAllowed() = _OperationNotAllowed;

  const factory AppError.requiresRecentLogin() = _RequiresRecentLogin;

  const factory AppError.userDisabled() = _UserDisabled;

  const factory AppError.userNotFound() = _UserNotFound;

  const factory AppError.weakPassword() = _WeakPassword;

  const factory AppError.wrongPassword() = _WrongPassword;

  const factory AppError.undefined() = _Undefined;

  const factory AppError.noInternetConnection() = _NoInternetConnection;

  const factory AppError.errorOccurred() = _ErrorOccurred;

  const factory AppError.registerProfileError() = _RegisterProfileError;

  const factory AppError.roomCreatorError() = _RoomCreatorError;

  const factory AppError.updateProfileAfterRoomCreateError() =
      _UpdateProfileAfterRoomCreateError;

  const factory AppError.notMatchEmailError() = _NotMatchEmailError;

  const factory AppError.notMatchOwnerEmailError() = _NotMatchOwnerEmailError;

  const factory AppError.roomEntranceError() = _RoomEntranceError;

  const factory AppError.updateProfileAfterRoomEnterError() =
      _UpdateProfileAfterRoomEnterError;

  const factory AppError.notExistRoomError() = _NotExistRoomError;

  const factory AppError.updateSettingError() = _UpdateSettingError;

  const factory AppError.failedSendMailError() = _FailedSendMailError;

  const factory AppError.failedAddTaskError() = _FailedAddTaskError;

  const factory AppError.failedUpdateTaskError() = _FailedUpdateTaskError;

  const factory AppError.failedDeleteTaskError() = _FailedDeleteTaskError;

  const factory AppError.failedAddScheduleError() = _FailedAddScheduleError;

  const factory AppError.failedUpdateScheduleError() =
      _FailedUpdateScheduleError;

  const factory AppError.failedDeleteScheduleError() =
      _FailedDeleteScheduleError;

  const factory AppError.failedAddBoardError() = _FailedAddBoardError;

  const factory AppError.failedUpdateBoardError() = _FailedUpdateBoardError;

  const factory AppError.failedDeleteBoardError() = _FailedDeleteBoardError;

  const factory AppError.noRoomError() = _NoRoomErrorError;

  const factory AppError.existMemberError() = _ExistMemberError;

  const factory AppError.leaveRoomError() = _LeaveRoomError;

  const AppError._();

  String get errorMessage => when(
        emailAlreadyInUse: () => Strings.emailAlreadyInUseMessage,
      );
}
