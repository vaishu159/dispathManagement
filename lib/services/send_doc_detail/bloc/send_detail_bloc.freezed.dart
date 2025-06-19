// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendDetailState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SendDetailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SendDetailState()';
  }
}

/// @nodoc
class $SendDetailStateCopyWith<$Res> {
  $SendDetailStateCopyWith(
      SendDetailState _, $Res Function(SendDetailState) __);
}

/// @nodoc

class _Initial implements SendDetailState {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SendDetailState.initial()';
  }
}

/// @nodoc

class _Loading implements SendDetailState {
  const _Loading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SendDetailState.loading()';
  }
}

/// @nodoc

class _Error implements SendDetailState {
  const _Error({this.error});

  final String? error;

  /// Create a copy of SendDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'SendDetailState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res>
    implements $SendDetailStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) =
      __$ErrorCopyWithImpl;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

  /// Create a copy of SendDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Error(
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _Success implements SendDetailState {
  const _Success({this.error});

  final String? error;

  /// Create a copy of SendDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Success &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'SendDetailState.success(error: $error)';
  }
}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res>
    implements $SendDetailStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) =
      __$SuccessCopyWithImpl;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

  /// Create a copy of SendDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Success(
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$SendDetailEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SendDetailEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SendDetailEvent()';
  }
}

/// @nodoc
class $SendDetailEventCopyWith<$Res> {
  $SendDetailEventCopyWith(
      SendDetailEvent _, $Res Function(SendDetailEvent) __);
}

/// @nodoc

class SendDetailsEvent implements SendDetailEvent {
  const SendDetailsEvent({this.emailUri, this.whatsappUri});

  final Uri? emailUri;
  final Uri? whatsappUri;

  /// Create a copy of SendDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SendDetailsEventCopyWith<SendDetailsEvent> get copyWith =>
      _$SendDetailsEventCopyWithImpl<SendDetailsEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendDetailsEvent &&
            (identical(other.emailUri, emailUri) ||
                other.emailUri == emailUri) &&
            (identical(other.whatsappUri, whatsappUri) ||
                other.whatsappUri == whatsappUri));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailUri, whatsappUri);

  @override
  String toString() {
    return 'SendDetailEvent.sendDetailsEvent(emailUri: $emailUri, whatsappUri: $whatsappUri)';
  }
}

/// @nodoc
abstract mixin class $SendDetailsEventCopyWith<$Res>
    implements $SendDetailEventCopyWith<$Res> {
  factory $SendDetailsEventCopyWith(
          SendDetailsEvent value, $Res Function(SendDetailsEvent) _then) =
      _$SendDetailsEventCopyWithImpl;
  @useResult
  $Res call({Uri? emailUri, Uri? whatsappUri});
}

/// @nodoc
class _$SendDetailsEventCopyWithImpl<$Res>
    implements $SendDetailsEventCopyWith<$Res> {
  _$SendDetailsEventCopyWithImpl(this._self, this._then);

  final SendDetailsEvent _self;
  final $Res Function(SendDetailsEvent) _then;

  /// Create a copy of SendDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? emailUri = freezed,
    Object? whatsappUri = freezed,
  }) {
    return _then(SendDetailsEvent(
      emailUri: freezed == emailUri
          ? _self.emailUri
          : emailUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      whatsappUri: freezed == whatsappUri
          ? _self.whatsappUri
          : whatsappUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
    ));
  }
}

/// @nodoc

class OnSuccessEvent implements SendDetailEvent {
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
    return 'SendDetailEvent.onSuccessEvent()';
  }
}

// dart format on
