// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appentyno_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppentynoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAppEnty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAppEnty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAppEnty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAppEnty value) fetchAppEnty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAppEnty value)? fetchAppEnty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAppEnty value)? fetchAppEnty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppentynoEventCopyWith<$Res> {
  factory $AppentynoEventCopyWith(
          AppentynoEvent value, $Res Function(AppentynoEvent) then) =
      _$AppentynoEventCopyWithImpl<$Res, AppentynoEvent>;
}

/// @nodoc
class _$AppentynoEventCopyWithImpl<$Res, $Val extends AppentynoEvent>
    implements $AppentynoEventCopyWith<$Res> {
  _$AppentynoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppentynoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchAppEntyImplCopyWith<$Res> {
  factory _$$FetchAppEntyImplCopyWith(
          _$FetchAppEntyImpl value, $Res Function(_$FetchAppEntyImpl) then) =
      __$$FetchAppEntyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAppEntyImplCopyWithImpl<$Res>
    extends _$AppentynoEventCopyWithImpl<$Res, _$FetchAppEntyImpl>
    implements _$$FetchAppEntyImplCopyWith<$Res> {
  __$$FetchAppEntyImplCopyWithImpl(
      _$FetchAppEntyImpl _value, $Res Function(_$FetchAppEntyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppentynoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAppEntyImpl implements FetchAppEnty {
  const _$FetchAppEntyImpl();

  @override
  String toString() {
    return 'AppentynoEvent.fetchAppEnty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAppEntyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAppEnty,
  }) {
    return fetchAppEnty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAppEnty,
  }) {
    return fetchAppEnty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAppEnty,
    required TResult orElse(),
  }) {
    if (fetchAppEnty != null) {
      return fetchAppEnty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAppEnty value) fetchAppEnty,
  }) {
    return fetchAppEnty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAppEnty value)? fetchAppEnty,
  }) {
    return fetchAppEnty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAppEnty value)? fetchAppEnty,
    required TResult orElse(),
  }) {
    if (fetchAppEnty != null) {
      return fetchAppEnty(this);
    }
    return orElse();
  }
}

abstract class FetchAppEnty implements AppentynoEvent {
  const factory FetchAppEnty() = _$FetchAppEntyImpl;
}

/// @nodoc
mixin _$AppentynoState {
  String get data => throw _privateConstructorUsedError;

  /// Create a copy of AppentynoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppentynoStateCopyWith<AppentynoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppentynoStateCopyWith<$Res> {
  factory $AppentynoStateCopyWith(
          AppentynoState value, $Res Function(AppentynoState) then) =
      _$AppentynoStateCopyWithImpl<$Res, AppentynoState>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class _$AppentynoStateCopyWithImpl<$Res, $Val extends AppentynoState>
    implements $AppentynoStateCopyWith<$Res> {
  _$AppentynoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppentynoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppentynoStateImplCopyWith<$Res>
    implements $AppentynoStateCopyWith<$Res> {
  factory _$$AppentynoStateImplCopyWith(_$AppentynoStateImpl value,
          $Res Function(_$AppentynoStateImpl) then) =
      __$$AppentynoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$AppentynoStateImplCopyWithImpl<$Res>
    extends _$AppentynoStateCopyWithImpl<$Res, _$AppentynoStateImpl>
    implements _$$AppentynoStateImplCopyWith<$Res> {
  __$$AppentynoStateImplCopyWithImpl(
      _$AppentynoStateImpl _value, $Res Function(_$AppentynoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppentynoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AppentynoStateImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppentynoStateImpl implements _AppentynoState {
  _$AppentynoStateImpl({required this.data});

  @override
  final String data;

  @override
  String toString() {
    return 'AppentynoState(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppentynoStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of AppentynoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppentynoStateImplCopyWith<_$AppentynoStateImpl> get copyWith =>
      __$$AppentynoStateImplCopyWithImpl<_$AppentynoStateImpl>(
          this, _$identity);
}

abstract class _AppentynoState implements AppentynoState {
  factory _AppentynoState({required final String data}) = _$AppentynoStateImpl;

  @override
  String get data;

  /// Create a copy of AppentynoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppentynoStateImplCopyWith<_$AppentynoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
