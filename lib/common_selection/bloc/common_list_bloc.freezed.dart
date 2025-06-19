// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommonListState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CommonListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommonListState()';
  }
}

/// @nodoc
class $CommonListStateCopyWith<$Res> {
  $CommonListStateCopyWith(
      CommonListState _, $Res Function(CommonListState) __);
}

/// @nodoc

class CommonListStateInitial implements CommonListState {
  const CommonListStateInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CommonListStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommonListState.initial()';
  }
}

/// @nodoc

class CommonListStateLoading implements CommonListState {
  const CommonListStateLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CommonListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommonListState.loading()';
  }
}

/// @nodoc

class CommonListStateSuccess implements CommonListState {
  const CommonListStateSuccess(final List<CustomerModel> customers)
      : _customers = customers;

  final List<CustomerModel> _customers;
  List<CustomerModel> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  /// Create a copy of CommonListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CommonListStateSuccessCopyWith<CommonListStateSuccess> get copyWith =>
      _$CommonListStateSuccessCopyWithImpl<CommonListStateSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CommonListStateSuccess &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_customers));

  @override
  String toString() {
    return 'CommonListState.success(customers: $customers)';
  }
}

/// @nodoc
abstract mixin class $CommonListStateSuccessCopyWith<$Res>
    implements $CommonListStateCopyWith<$Res> {
  factory $CommonListStateSuccessCopyWith(CommonListStateSuccess value,
          $Res Function(CommonListStateSuccess) _then) =
      _$CommonListStateSuccessCopyWithImpl;
  @useResult
  $Res call({List<CustomerModel> customers});
}

/// @nodoc
class _$CommonListStateSuccessCopyWithImpl<$Res>
    implements $CommonListStateSuccessCopyWith<$Res> {
  _$CommonListStateSuccessCopyWithImpl(this._self, this._then);

  final CommonListStateSuccess _self;
  final $Res Function(CommonListStateSuccess) _then;

  /// Create a copy of CommonListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customers = null,
  }) {
    return _then(CommonListStateSuccess(
      null == customers
          ? _self._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomerModel>,
    ));
  }
}

/// @nodoc

class CommonListStateFailure implements CommonListState {
  const CommonListStateFailure(this.message);

  final String message;

  /// Create a copy of CommonListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CommonListStateFailureCopyWith<CommonListStateFailure> get copyWith =>
      _$CommonListStateFailureCopyWithImpl<CommonListStateFailure>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CommonListStateFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'CommonListState.failure(message: $message)';
  }
}

/// @nodoc
abstract mixin class $CommonListStateFailureCopyWith<$Res>
    implements $CommonListStateCopyWith<$Res> {
  factory $CommonListStateFailureCopyWith(CommonListStateFailure value,
          $Res Function(CommonListStateFailure) _then) =
      _$CommonListStateFailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$CommonListStateFailureCopyWithImpl<$Res>
    implements $CommonListStateFailureCopyWith<$Res> {
  _$CommonListStateFailureCopyWithImpl(this._self, this._then);

  final CommonListStateFailure _self;
  final $Res Function(CommonListStateFailure) _then;

  /// Create a copy of CommonListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(CommonListStateFailure(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$CommonListEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CommonListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommonListEvent()';
  }
}

/// @nodoc
class $CommonListEventCopyWith<$Res> {
  $CommonListEventCopyWith(
      CommonListEvent _, $Res Function(CommonListEvent) __);
}

/// @nodoc

class FetchCustomers implements CommonListEvent {
  const FetchCustomers();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchCustomers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CommonListEvent.fetchCustomers()';
  }
}

// dart format on
