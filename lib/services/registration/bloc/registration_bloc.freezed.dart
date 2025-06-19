// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegistrationState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegistrationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegistrationState()';
  }
}

/// @nodoc
class $RegistrationStateCopyWith<$Res> {
  $RegistrationStateCopyWith(
      RegistrationState _, $Res Function(RegistrationState) __);
}

/// @nodoc

class Initial implements RegistrationState {
  const Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegistrationState.initial()';
  }
}

/// @nodoc

class Loading implements RegistrationState {
  const Loading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegistrationState.loading()';
  }
}

/// @nodoc

class RegistrationSuccess implements RegistrationState {
  const RegistrationSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegistrationSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegistrationState.registrationSuccess()';
  }
}

/// @nodoc

class Failure implements RegistrationState {
  const Failure(this.message);

  final String message;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FailureCopyWith<Failure> get copyWith =>
      _$FailureCopyWithImpl<Failure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Failure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'RegistrationState.failure(message: $message)';
  }
}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) =
      _$FailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(Failure(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$RegistrationEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegistrationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegistrationEvent()';
  }
}

/// @nodoc
class $RegistrationEventCopyWith<$Res> {
  $RegistrationEventCopyWith(
      RegistrationEvent _, $Res Function(RegistrationEvent) __);
}

/// @nodoc

class Submit implements RegistrationEvent {
  const Submit({this.customerName, this.companyName, this.mobile, this.email});

  final String? customerName;
  final String? companyName;
  final String? mobile;
  final String? email;

  /// Create a copy of RegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubmitCopyWith<Submit> get copyWith =>
      _$SubmitCopyWithImpl<Submit>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Submit &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, customerName, companyName, mobile, email);

  @override
  String toString() {
    return 'RegistrationEvent.submit(customerName: $customerName, companyName: $companyName, mobile: $mobile, email: $email)';
  }
}

/// @nodoc
abstract mixin class $SubmitCopyWith<$Res>
    implements $RegistrationEventCopyWith<$Res> {
  factory $SubmitCopyWith(Submit value, $Res Function(Submit) _then) =
      _$SubmitCopyWithImpl;
  @useResult
  $Res call(
      {String? customerName,
      String? companyName,
      String? mobile,
      String? email});
}

/// @nodoc
class _$SubmitCopyWithImpl<$Res> implements $SubmitCopyWith<$Res> {
  _$SubmitCopyWithImpl(this._self, this._then);

  final Submit _self;
  final $Res Function(Submit) _then;

  /// Create a copy of RegistrationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customerName = freezed,
    Object? companyName = freezed,
    Object? mobile = freezed,
    Object? email = freezed,
  }) {
    return _then(Submit(
      customerName: freezed == customerName
          ? _self.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _self.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class OnSuccessEvent implements RegistrationEvent {
  const OnSuccessEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OnSuccessEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegistrationEvent.onSuccessEvent()';
  }
}

// dart format on
