// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accounts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountsEvent {
  String? get eDate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cusId, String? sDate, String? eDate)
        fetchAccounts,
    required TResult Function(String cusid, String? sDate, String? eDate)
        outStandingCreditOpngClsg,
    required TResult Function(String cusid, String? sDate, String? eDate)
        openingBal,
    required TResult Function(String? eDate, String cusid) closingBal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cusId, String? sDate, String? eDate)?
        fetchAccounts,
    TResult? Function(String cusid, String? sDate, String? eDate)?
        outStandingCreditOpngClsg,
    TResult? Function(String cusid, String? sDate, String? eDate)? openingBal,
    TResult? Function(String? eDate, String cusid)? closingBal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cusId, String? sDate, String? eDate)? fetchAccounts,
    TResult Function(String cusid, String? sDate, String? eDate)?
        outStandingCreditOpngClsg,
    TResult Function(String cusid, String? sDate, String? eDate)? openingBal,
    TResult Function(String? eDate, String cusid)? closingBal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAccounts value) fetchAccounts,
    required TResult Function(OutStandingCreditOpngClsg value)
        outStandingCreditOpngClsg,
    required TResult Function(OpeningBal value) openingBal,
    required TResult Function(ClosingBal value) closingBal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAccounts value)? fetchAccounts,
    TResult? Function(OutStandingCreditOpngClsg value)?
        outStandingCreditOpngClsg,
    TResult? Function(OpeningBal value)? openingBal,
    TResult? Function(ClosingBal value)? closingBal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAccounts value)? fetchAccounts,
    TResult Function(OutStandingCreditOpngClsg value)?
        outStandingCreditOpngClsg,
    TResult Function(OpeningBal value)? openingBal,
    TResult Function(ClosingBal value)? closingBal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountsEventCopyWith<AccountsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountsEventCopyWith<$Res> {
  factory $AccountsEventCopyWith(
          AccountsEvent value, $Res Function(AccountsEvent) then) =
      _$AccountsEventCopyWithImpl<$Res, AccountsEvent>;
  @useResult
  $Res call({String? eDate});
}

/// @nodoc
class _$AccountsEventCopyWithImpl<$Res, $Val extends AccountsEvent>
    implements $AccountsEventCopyWith<$Res> {
  _$AccountsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eDate = freezed,
  }) {
    return _then(_value.copyWith(
      eDate: freezed == eDate
          ? _value.eDate
          : eDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchAccountsImplCopyWith<$Res>
    implements $AccountsEventCopyWith<$Res> {
  factory _$$FetchAccountsImplCopyWith(
          _$FetchAccountsImpl value, $Res Function(_$FetchAccountsImpl) then) =
      __$$FetchAccountsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cusId, String? sDate, String? eDate});
}

/// @nodoc
class __$$FetchAccountsImplCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res, _$FetchAccountsImpl>
    implements _$$FetchAccountsImplCopyWith<$Res> {
  __$$FetchAccountsImplCopyWithImpl(
      _$FetchAccountsImpl _value, $Res Function(_$FetchAccountsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cusId = null,
    Object? sDate = freezed,
    Object? eDate = freezed,
  }) {
    return _then(_$FetchAccountsImpl(
      cusId: null == cusId
          ? _value.cusId
          : cusId // ignore: cast_nullable_to_non_nullable
              as String,
      sDate: freezed == sDate
          ? _value.sDate
          : sDate // ignore: cast_nullable_to_non_nullable
              as String?,
      eDate: freezed == eDate
          ? _value.eDate
          : eDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchAccountsImpl implements FetchAccounts {
  const _$FetchAccountsImpl({required this.cusId, this.sDate, this.eDate});

  @override
  final String cusId;
  @override
  final String? sDate;
  @override
  final String? eDate;

  @override
  String toString() {
    return 'AccountsEvent.fetchAccounts(cusId: $cusId, sDate: $sDate, eDate: $eDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAccountsImpl &&
            (identical(other.cusId, cusId) || other.cusId == cusId) &&
            (identical(other.sDate, sDate) || other.sDate == sDate) &&
            (identical(other.eDate, eDate) || other.eDate == eDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cusId, sDate, eDate);

  /// Create a copy of AccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAccountsImplCopyWith<_$FetchAccountsImpl> get copyWith =>
      __$$FetchAccountsImplCopyWithImpl<_$FetchAccountsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cusId, String? sDate, String? eDate)
        fetchAccounts,
    required TResult Function(String cusid, String? sDate, String? eDate)
        outStandingCreditOpngClsg,
    required TResult Function(String cusid, String? sDate, String? eDate)
        openingBal,
    required TResult Function(String? eDate, String cusid) closingBal,
  }) {
    return fetchAccounts(cusId, sDate, eDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cusId, String? sDate, String? eDate)?
        fetchAccounts,
    TResult? Function(String cusid, String? sDate, String? eDate)?
        outStandingCreditOpngClsg,
    TResult? Function(String cusid, String? sDate, String? eDate)? openingBal,
    TResult? Function(String? eDate, String cusid)? closingBal,
  }) {
    return fetchAccounts?.call(cusId, sDate, eDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cusId, String? sDate, String? eDate)? fetchAccounts,
    TResult Function(String cusid, String? sDate, String? eDate)?
        outStandingCreditOpngClsg,
    TResult Function(String cusid, String? sDate, String? eDate)? openingBal,
    TResult Function(String? eDate, String cusid)? closingBal,
    required TResult orElse(),
  }) {
    if (fetchAccounts != null) {
      return fetchAccounts(cusId, sDate, eDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAccounts value) fetchAccounts,
    required TResult Function(OutStandingCreditOpngClsg value)
        outStandingCreditOpngClsg,
    required TResult Function(OpeningBal value) openingBal,
    required TResult Function(ClosingBal value) closingBal,
  }) {
    return fetchAccounts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAccounts value)? fetchAccounts,
    TResult? Function(OutStandingCreditOpngClsg value)?
        outStandingCreditOpngClsg,
    TResult? Function(OpeningBal value)? openingBal,
    TResult? Function(ClosingBal value)? closingBal,
  }) {
    return fetchAccounts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAccounts value)? fetchAccounts,
    TResult Function(OutStandingCreditOpngClsg value)?
        outStandingCreditOpngClsg,
    TResult Function(OpeningBal value)? openingBal,
    TResult Function(ClosingBal value)? closingBal,
    required TResult orElse(),
  }) {
    if (fetchAccounts != null) {
      return fetchAccounts(this);
    }
    return orElse();
  }
}

abstract class FetchAccounts implements AccountsEvent {
  const factory FetchAccounts(
      {required final String cusId,
      final String? sDate,
      final String? eDate}) = _$FetchAccountsImpl;

  String get cusId;
  String? get sDate;
  @override
  String? get eDate;

  /// Create a copy of AccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchAccountsImplCopyWith<_$FetchAccountsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OutStandingCreditOpngClsgImplCopyWith<$Res>
    implements $AccountsEventCopyWith<$Res> {
  factory _$$OutStandingCreditOpngClsgImplCopyWith(
          _$OutStandingCreditOpngClsgImpl value,
          $Res Function(_$OutStandingCreditOpngClsgImpl) then) =
      __$$OutStandingCreditOpngClsgImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cusid, String? sDate, String? eDate});
}

/// @nodoc
class __$$OutStandingCreditOpngClsgImplCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res, _$OutStandingCreditOpngClsgImpl>
    implements _$$OutStandingCreditOpngClsgImplCopyWith<$Res> {
  __$$OutStandingCreditOpngClsgImplCopyWithImpl(
      _$OutStandingCreditOpngClsgImpl _value,
      $Res Function(_$OutStandingCreditOpngClsgImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cusid = null,
    Object? sDate = freezed,
    Object? eDate = freezed,
  }) {
    return _then(_$OutStandingCreditOpngClsgImpl(
      cusid: null == cusid
          ? _value.cusid
          : cusid // ignore: cast_nullable_to_non_nullable
              as String,
      sDate: freezed == sDate
          ? _value.sDate
          : sDate // ignore: cast_nullable_to_non_nullable
              as String?,
      eDate: freezed == eDate
          ? _value.eDate
          : eDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OutStandingCreditOpngClsgImpl implements OutStandingCreditOpngClsg {
  const _$OutStandingCreditOpngClsgImpl(
      {required this.cusid, this.sDate, this.eDate});

  @override
  final String cusid;
  @override
  final String? sDate;
  @override
  final String? eDate;

  @override
  String toString() {
    return 'AccountsEvent.outStandingCreditOpngClsg(cusid: $cusid, sDate: $sDate, eDate: $eDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutStandingCreditOpngClsgImpl &&
            (identical(other.cusid, cusid) || other.cusid == cusid) &&
            (identical(other.sDate, sDate) || other.sDate == sDate) &&
            (identical(other.eDate, eDate) || other.eDate == eDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cusid, sDate, eDate);

  /// Create a copy of AccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OutStandingCreditOpngClsgImplCopyWith<_$OutStandingCreditOpngClsgImpl>
      get copyWith => __$$OutStandingCreditOpngClsgImplCopyWithImpl<
          _$OutStandingCreditOpngClsgImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cusId, String? sDate, String? eDate)
        fetchAccounts,
    required TResult Function(String cusid, String? sDate, String? eDate)
        outStandingCreditOpngClsg,
    required TResult Function(String cusid, String? sDate, String? eDate)
        openingBal,
    required TResult Function(String? eDate, String cusid) closingBal,
  }) {
    return outStandingCreditOpngClsg(cusid, sDate, eDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cusId, String? sDate, String? eDate)?
        fetchAccounts,
    TResult? Function(String cusid, String? sDate, String? eDate)?
        outStandingCreditOpngClsg,
    TResult? Function(String cusid, String? sDate, String? eDate)? openingBal,
    TResult? Function(String? eDate, String cusid)? closingBal,
  }) {
    return outStandingCreditOpngClsg?.call(cusid, sDate, eDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cusId, String? sDate, String? eDate)? fetchAccounts,
    TResult Function(String cusid, String? sDate, String? eDate)?
        outStandingCreditOpngClsg,
    TResult Function(String cusid, String? sDate, String? eDate)? openingBal,
    TResult Function(String? eDate, String cusid)? closingBal,
    required TResult orElse(),
  }) {
    if (outStandingCreditOpngClsg != null) {
      return outStandingCreditOpngClsg(cusid, sDate, eDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAccounts value) fetchAccounts,
    required TResult Function(OutStandingCreditOpngClsg value)
        outStandingCreditOpngClsg,
    required TResult Function(OpeningBal value) openingBal,
    required TResult Function(ClosingBal value) closingBal,
  }) {
    return outStandingCreditOpngClsg(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAccounts value)? fetchAccounts,
    TResult? Function(OutStandingCreditOpngClsg value)?
        outStandingCreditOpngClsg,
    TResult? Function(OpeningBal value)? openingBal,
    TResult? Function(ClosingBal value)? closingBal,
  }) {
    return outStandingCreditOpngClsg?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAccounts value)? fetchAccounts,
    TResult Function(OutStandingCreditOpngClsg value)?
        outStandingCreditOpngClsg,
    TResult Function(OpeningBal value)? openingBal,
    TResult Function(ClosingBal value)? closingBal,
    required TResult orElse(),
  }) {
    if (outStandingCreditOpngClsg != null) {
      return outStandingCreditOpngClsg(this);
    }
    return orElse();
  }
}

abstract class OutStandingCreditOpngClsg implements AccountsEvent {
  const factory OutStandingCreditOpngClsg(
      {required final String cusid,
      final String? sDate,
      final String? eDate}) = _$OutStandingCreditOpngClsgImpl;

  String get cusid;
  String? get sDate;
  @override
  String? get eDate;

  /// Create a copy of AccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OutStandingCreditOpngClsgImplCopyWith<_$OutStandingCreditOpngClsgImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OpeningBalImplCopyWith<$Res>
    implements $AccountsEventCopyWith<$Res> {
  factory _$$OpeningBalImplCopyWith(
          _$OpeningBalImpl value, $Res Function(_$OpeningBalImpl) then) =
      __$$OpeningBalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cusid, String? sDate, String? eDate});
}

/// @nodoc
class __$$OpeningBalImplCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res, _$OpeningBalImpl>
    implements _$$OpeningBalImplCopyWith<$Res> {
  __$$OpeningBalImplCopyWithImpl(
      _$OpeningBalImpl _value, $Res Function(_$OpeningBalImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cusid = null,
    Object? sDate = freezed,
    Object? eDate = freezed,
  }) {
    return _then(_$OpeningBalImpl(
      cusid: null == cusid
          ? _value.cusid
          : cusid // ignore: cast_nullable_to_non_nullable
              as String,
      sDate: freezed == sDate
          ? _value.sDate
          : sDate // ignore: cast_nullable_to_non_nullable
              as String?,
      eDate: freezed == eDate
          ? _value.eDate
          : eDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OpeningBalImpl implements OpeningBal {
  const _$OpeningBalImpl({required this.cusid, this.sDate, this.eDate});

  @override
  final String cusid;
  @override
  final String? sDate;
  @override
  final String? eDate;

  @override
  String toString() {
    return 'AccountsEvent.openingBal(cusid: $cusid, sDate: $sDate, eDate: $eDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpeningBalImpl &&
            (identical(other.cusid, cusid) || other.cusid == cusid) &&
            (identical(other.sDate, sDate) || other.sDate == sDate) &&
            (identical(other.eDate, eDate) || other.eDate == eDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cusid, sDate, eDate);

  /// Create a copy of AccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpeningBalImplCopyWith<_$OpeningBalImpl> get copyWith =>
      __$$OpeningBalImplCopyWithImpl<_$OpeningBalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cusId, String? sDate, String? eDate)
        fetchAccounts,
    required TResult Function(String cusid, String? sDate, String? eDate)
        outStandingCreditOpngClsg,
    required TResult Function(String cusid, String? sDate, String? eDate)
        openingBal,
    required TResult Function(String? eDate, String cusid) closingBal,
  }) {
    return openingBal(cusid, sDate, eDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cusId, String? sDate, String? eDate)?
        fetchAccounts,
    TResult? Function(String cusid, String? sDate, String? eDate)?
        outStandingCreditOpngClsg,
    TResult? Function(String cusid, String? sDate, String? eDate)? openingBal,
    TResult? Function(String? eDate, String cusid)? closingBal,
  }) {
    return openingBal?.call(cusid, sDate, eDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cusId, String? sDate, String? eDate)? fetchAccounts,
    TResult Function(String cusid, String? sDate, String? eDate)?
        outStandingCreditOpngClsg,
    TResult Function(String cusid, String? sDate, String? eDate)? openingBal,
    TResult Function(String? eDate, String cusid)? closingBal,
    required TResult orElse(),
  }) {
    if (openingBal != null) {
      return openingBal(cusid, sDate, eDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAccounts value) fetchAccounts,
    required TResult Function(OutStandingCreditOpngClsg value)
        outStandingCreditOpngClsg,
    required TResult Function(OpeningBal value) openingBal,
    required TResult Function(ClosingBal value) closingBal,
  }) {
    return openingBal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAccounts value)? fetchAccounts,
    TResult? Function(OutStandingCreditOpngClsg value)?
        outStandingCreditOpngClsg,
    TResult? Function(OpeningBal value)? openingBal,
    TResult? Function(ClosingBal value)? closingBal,
  }) {
    return openingBal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAccounts value)? fetchAccounts,
    TResult Function(OutStandingCreditOpngClsg value)?
        outStandingCreditOpngClsg,
    TResult Function(OpeningBal value)? openingBal,
    TResult Function(ClosingBal value)? closingBal,
    required TResult orElse(),
  }) {
    if (openingBal != null) {
      return openingBal(this);
    }
    return orElse();
  }
}

abstract class OpeningBal implements AccountsEvent {
  const factory OpeningBal(
      {required final String cusid,
      final String? sDate,
      final String? eDate}) = _$OpeningBalImpl;

  String get cusid;
  String? get sDate;
  @override
  String? get eDate;

  /// Create a copy of AccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpeningBalImplCopyWith<_$OpeningBalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClosingBalImplCopyWith<$Res>
    implements $AccountsEventCopyWith<$Res> {
  factory _$$ClosingBalImplCopyWith(
          _$ClosingBalImpl value, $Res Function(_$ClosingBalImpl) then) =
      __$$ClosingBalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? eDate, String cusid});
}

/// @nodoc
class __$$ClosingBalImplCopyWithImpl<$Res>
    extends _$AccountsEventCopyWithImpl<$Res, _$ClosingBalImpl>
    implements _$$ClosingBalImplCopyWith<$Res> {
  __$$ClosingBalImplCopyWithImpl(
      _$ClosingBalImpl _value, $Res Function(_$ClosingBalImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eDate = freezed,
    Object? cusid = null,
  }) {
    return _then(_$ClosingBalImpl(
      eDate: freezed == eDate
          ? _value.eDate
          : eDate // ignore: cast_nullable_to_non_nullable
              as String?,
      cusid: null == cusid
          ? _value.cusid
          : cusid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClosingBalImpl implements ClosingBal {
  const _$ClosingBalImpl({this.eDate, required this.cusid});

  @override
  final String? eDate;
  @override
  final String cusid;

  @override
  String toString() {
    return 'AccountsEvent.closingBal(eDate: $eDate, cusid: $cusid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClosingBalImpl &&
            (identical(other.eDate, eDate) || other.eDate == eDate) &&
            (identical(other.cusid, cusid) || other.cusid == cusid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eDate, cusid);

  /// Create a copy of AccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClosingBalImplCopyWith<_$ClosingBalImpl> get copyWith =>
      __$$ClosingBalImplCopyWithImpl<_$ClosingBalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cusId, String? sDate, String? eDate)
        fetchAccounts,
    required TResult Function(String cusid, String? sDate, String? eDate)
        outStandingCreditOpngClsg,
    required TResult Function(String cusid, String? sDate, String? eDate)
        openingBal,
    required TResult Function(String? eDate, String cusid) closingBal,
  }) {
    return closingBal(eDate, cusid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cusId, String? sDate, String? eDate)?
        fetchAccounts,
    TResult? Function(String cusid, String? sDate, String? eDate)?
        outStandingCreditOpngClsg,
    TResult? Function(String cusid, String? sDate, String? eDate)? openingBal,
    TResult? Function(String? eDate, String cusid)? closingBal,
  }) {
    return closingBal?.call(eDate, cusid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cusId, String? sDate, String? eDate)? fetchAccounts,
    TResult Function(String cusid, String? sDate, String? eDate)?
        outStandingCreditOpngClsg,
    TResult Function(String cusid, String? sDate, String? eDate)? openingBal,
    TResult Function(String? eDate, String cusid)? closingBal,
    required TResult orElse(),
  }) {
    if (closingBal != null) {
      return closingBal(eDate, cusid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAccounts value) fetchAccounts,
    required TResult Function(OutStandingCreditOpngClsg value)
        outStandingCreditOpngClsg,
    required TResult Function(OpeningBal value) openingBal,
    required TResult Function(ClosingBal value) closingBal,
  }) {
    return closingBal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAccounts value)? fetchAccounts,
    TResult? Function(OutStandingCreditOpngClsg value)?
        outStandingCreditOpngClsg,
    TResult? Function(OpeningBal value)? openingBal,
    TResult? Function(ClosingBal value)? closingBal,
  }) {
    return closingBal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAccounts value)? fetchAccounts,
    TResult Function(OutStandingCreditOpngClsg value)?
        outStandingCreditOpngClsg,
    TResult Function(OpeningBal value)? openingBal,
    TResult Function(ClosingBal value)? closingBal,
    required TResult orElse(),
  }) {
    if (closingBal != null) {
      return closingBal(this);
    }
    return orElse();
  }
}

abstract class ClosingBal implements AccountsEvent {
  const factory ClosingBal({final String? eDate, required final String cusid}) =
      _$ClosingBalImpl;

  @override
  String? get eDate;
  String get cusid;

  /// Create a copy of AccountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClosingBalImplCopyWith<_$ClosingBalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isAmtsLoading => throw _privateConstructorUsedError;
  bool get isOpningLoading => throw _privateConstructorUsedError;
  bool get isclosingLoading => throw _privateConstructorUsedError;
  double get outstandingCreditAmt => throw _privateConstructorUsedError;
  double get openingAmt => throw _privateConstructorUsedError;
  double get closingAmt => throw _privateConstructorUsedError;
  List<AllAccountModel> get accountsList => throw _privateConstructorUsedError;

  /// Create a copy of AccountsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountsStateCopyWith<AccountsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountsStateCopyWith<$Res> {
  factory $AccountsStateCopyWith(
          AccountsState value, $Res Function(AccountsState) then) =
      _$AccountsStateCopyWithImpl<$Res, AccountsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      bool isAmtsLoading,
      bool isOpningLoading,
      bool isclosingLoading,
      double outstandingCreditAmt,
      double openingAmt,
      double closingAmt,
      List<AllAccountModel> accountsList});
}

/// @nodoc
class _$AccountsStateCopyWithImpl<$Res, $Val extends AccountsState>
    implements $AccountsStateCopyWith<$Res> {
  _$AccountsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? isAmtsLoading = null,
    Object? isOpningLoading = null,
    Object? isclosingLoading = null,
    Object? outstandingCreditAmt = null,
    Object? openingAmt = null,
    Object? closingAmt = null,
    Object? accountsList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isAmtsLoading: null == isAmtsLoading
          ? _value.isAmtsLoading
          : isAmtsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isOpningLoading: null == isOpningLoading
          ? _value.isOpningLoading
          : isOpningLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isclosingLoading: null == isclosingLoading
          ? _value.isclosingLoading
          : isclosingLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      outstandingCreditAmt: null == outstandingCreditAmt
          ? _value.outstandingCreditAmt
          : outstandingCreditAmt // ignore: cast_nullable_to_non_nullable
              as double,
      openingAmt: null == openingAmt
          ? _value.openingAmt
          : openingAmt // ignore: cast_nullable_to_non_nullable
              as double,
      closingAmt: null == closingAmt
          ? _value.closingAmt
          : closingAmt // ignore: cast_nullable_to_non_nullable
              as double,
      accountsList: null == accountsList
          ? _value.accountsList
          : accountsList // ignore: cast_nullable_to_non_nullable
              as List<AllAccountModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountsStateImplCopyWith<$Res>
    implements $AccountsStateCopyWith<$Res> {
  factory _$$AccountsStateImplCopyWith(
          _$AccountsStateImpl value, $Res Function(_$AccountsStateImpl) then) =
      __$$AccountsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      bool isAmtsLoading,
      bool isOpningLoading,
      bool isclosingLoading,
      double outstandingCreditAmt,
      double openingAmt,
      double closingAmt,
      List<AllAccountModel> accountsList});
}

/// @nodoc
class __$$AccountsStateImplCopyWithImpl<$Res>
    extends _$AccountsStateCopyWithImpl<$Res, _$AccountsStateImpl>
    implements _$$AccountsStateImplCopyWith<$Res> {
  __$$AccountsStateImplCopyWithImpl(
      _$AccountsStateImpl _value, $Res Function(_$AccountsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? isAmtsLoading = null,
    Object? isOpningLoading = null,
    Object? isclosingLoading = null,
    Object? outstandingCreditAmt = null,
    Object? openingAmt = null,
    Object? closingAmt = null,
    Object? accountsList = null,
  }) {
    return _then(_$AccountsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isAmtsLoading: null == isAmtsLoading
          ? _value.isAmtsLoading
          : isAmtsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isOpningLoading: null == isOpningLoading
          ? _value.isOpningLoading
          : isOpningLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isclosingLoading: null == isclosingLoading
          ? _value.isclosingLoading
          : isclosingLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      outstandingCreditAmt: null == outstandingCreditAmt
          ? _value.outstandingCreditAmt
          : outstandingCreditAmt // ignore: cast_nullable_to_non_nullable
              as double,
      openingAmt: null == openingAmt
          ? _value.openingAmt
          : openingAmt // ignore: cast_nullable_to_non_nullable
              as double,
      closingAmt: null == closingAmt
          ? _value.closingAmt
          : closingAmt // ignore: cast_nullable_to_non_nullable
              as double,
      accountsList: null == accountsList
          ? _value._accountsList
          : accountsList // ignore: cast_nullable_to_non_nullable
              as List<AllAccountModel>,
    ));
  }
}

/// @nodoc

class _$AccountsStateImpl implements _AccountsState {
  _$AccountsStateImpl(
      {required this.isLoading,
      required this.isError,
      required this.isAmtsLoading,
      required this.isOpningLoading,
      required this.isclosingLoading,
      required this.outstandingCreditAmt,
      required this.openingAmt,
      required this.closingAmt,
      required final List<AllAccountModel> accountsList})
      : _accountsList = accountsList;

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final bool isAmtsLoading;
  @override
  final bool isOpningLoading;
  @override
  final bool isclosingLoading;
  @override
  final double outstandingCreditAmt;
  @override
  final double openingAmt;
  @override
  final double closingAmt;
  final List<AllAccountModel> _accountsList;
  @override
  List<AllAccountModel> get accountsList {
    if (_accountsList is EqualUnmodifiableListView) return _accountsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accountsList);
  }

  @override
  String toString() {
    return 'AccountsState(isLoading: $isLoading, isError: $isError, isAmtsLoading: $isAmtsLoading, isOpningLoading: $isOpningLoading, isclosingLoading: $isclosingLoading, outstandingCreditAmt: $outstandingCreditAmt, openingAmt: $openingAmt, closingAmt: $closingAmt, accountsList: $accountsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isAmtsLoading, isAmtsLoading) ||
                other.isAmtsLoading == isAmtsLoading) &&
            (identical(other.isOpningLoading, isOpningLoading) ||
                other.isOpningLoading == isOpningLoading) &&
            (identical(other.isclosingLoading, isclosingLoading) ||
                other.isclosingLoading == isclosingLoading) &&
            (identical(other.outstandingCreditAmt, outstandingCreditAmt) ||
                other.outstandingCreditAmt == outstandingCreditAmt) &&
            (identical(other.openingAmt, openingAmt) ||
                other.openingAmt == openingAmt) &&
            (identical(other.closingAmt, closingAmt) ||
                other.closingAmt == closingAmt) &&
            const DeepCollectionEquality()
                .equals(other._accountsList, _accountsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      isAmtsLoading,
      isOpningLoading,
      isclosingLoading,
      outstandingCreditAmt,
      openingAmt,
      closingAmt,
      const DeepCollectionEquality().hash(_accountsList));

  /// Create a copy of AccountsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountsStateImplCopyWith<_$AccountsStateImpl> get copyWith =>
      __$$AccountsStateImplCopyWithImpl<_$AccountsStateImpl>(this, _$identity);
}

abstract class _AccountsState implements AccountsState {
  factory _AccountsState(
      {required final bool isLoading,
      required final bool isError,
      required final bool isAmtsLoading,
      required final bool isOpningLoading,
      required final bool isclosingLoading,
      required final double outstandingCreditAmt,
      required final double openingAmt,
      required final double closingAmt,
      required final List<AllAccountModel> accountsList}) = _$AccountsStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  bool get isAmtsLoading;
  @override
  bool get isOpningLoading;
  @override
  bool get isclosingLoading;
  @override
  double get outstandingCreditAmt;
  @override
  double get openingAmt;
  @override
  double get closingAmt;
  @override
  List<AllAccountModel> get accountsList;

  /// Create a copy of AccountsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountsStateImplCopyWith<_$AccountsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
