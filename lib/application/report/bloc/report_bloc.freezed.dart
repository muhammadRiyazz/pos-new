// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReportEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sDate, String eDate) fetch,
    required TResult Function(String sDate, String eDate) fetchReturns,
    required TResult Function() todayreport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sDate, String eDate)? fetch,
    TResult? Function(String sDate, String eDate)? fetchReturns,
    TResult? Function()? todayreport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sDate, String eDate)? fetch,
    TResult Function(String sDate, String eDate)? fetchReturns,
    TResult Function()? todayreport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTotalSaleReports value) fetch,
    required TResult Function(FetchTotalSaleReturnReports value) fetchReturns,
    required TResult Function(Todayreport value) todayreport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTotalSaleReports value)? fetch,
    TResult? Function(FetchTotalSaleReturnReports value)? fetchReturns,
    TResult? Function(Todayreport value)? todayreport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTotalSaleReports value)? fetch,
    TResult Function(FetchTotalSaleReturnReports value)? fetchReturns,
    TResult Function(Todayreport value)? todayreport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportEventCopyWith<$Res> {
  factory $ReportEventCopyWith(
          ReportEvent value, $Res Function(ReportEvent) then) =
      _$ReportEventCopyWithImpl<$Res, ReportEvent>;
}

/// @nodoc
class _$ReportEventCopyWithImpl<$Res, $Val extends ReportEvent>
    implements $ReportEventCopyWith<$Res> {
  _$ReportEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchTotalSaleReportsImplCopyWith<$Res> {
  factory _$$FetchTotalSaleReportsImplCopyWith(
          _$FetchTotalSaleReportsImpl value,
          $Res Function(_$FetchTotalSaleReportsImpl) then) =
      __$$FetchTotalSaleReportsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String sDate, String eDate});
}

/// @nodoc
class __$$FetchTotalSaleReportsImplCopyWithImpl<$Res>
    extends _$ReportEventCopyWithImpl<$Res, _$FetchTotalSaleReportsImpl>
    implements _$$FetchTotalSaleReportsImplCopyWith<$Res> {
  __$$FetchTotalSaleReportsImplCopyWithImpl(_$FetchTotalSaleReportsImpl _value,
      $Res Function(_$FetchTotalSaleReportsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sDate = null,
    Object? eDate = null,
  }) {
    return _then(_$FetchTotalSaleReportsImpl(
      sDate: null == sDate
          ? _value.sDate
          : sDate // ignore: cast_nullable_to_non_nullable
              as String,
      eDate: null == eDate
          ? _value.eDate
          : eDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchTotalSaleReportsImpl implements FetchTotalSaleReports {
  const _$FetchTotalSaleReportsImpl({required this.sDate, required this.eDate});

  @override
  final String sDate;
  @override
  final String eDate;

  @override
  String toString() {
    return 'ReportEvent.fetch(sDate: $sDate, eDate: $eDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTotalSaleReportsImpl &&
            (identical(other.sDate, sDate) || other.sDate == sDate) &&
            (identical(other.eDate, eDate) || other.eDate == eDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sDate, eDate);

  /// Create a copy of ReportEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTotalSaleReportsImplCopyWith<_$FetchTotalSaleReportsImpl>
      get copyWith => __$$FetchTotalSaleReportsImplCopyWithImpl<
          _$FetchTotalSaleReportsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sDate, String eDate) fetch,
    required TResult Function(String sDate, String eDate) fetchReturns,
    required TResult Function() todayreport,
  }) {
    return fetch(sDate, eDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sDate, String eDate)? fetch,
    TResult? Function(String sDate, String eDate)? fetchReturns,
    TResult? Function()? todayreport,
  }) {
    return fetch?.call(sDate, eDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sDate, String eDate)? fetch,
    TResult Function(String sDate, String eDate)? fetchReturns,
    TResult Function()? todayreport,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(sDate, eDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTotalSaleReports value) fetch,
    required TResult Function(FetchTotalSaleReturnReports value) fetchReturns,
    required TResult Function(Todayreport value) todayreport,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTotalSaleReports value)? fetch,
    TResult? Function(FetchTotalSaleReturnReports value)? fetchReturns,
    TResult? Function(Todayreport value)? todayreport,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTotalSaleReports value)? fetch,
    TResult Function(FetchTotalSaleReturnReports value)? fetchReturns,
    TResult Function(Todayreport value)? todayreport,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchTotalSaleReports implements ReportEvent {
  const factory FetchTotalSaleReports(
      {required final String sDate,
      required final String eDate}) = _$FetchTotalSaleReportsImpl;

  String get sDate;
  String get eDate;

  /// Create a copy of ReportEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchTotalSaleReportsImplCopyWith<_$FetchTotalSaleReportsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchTotalSaleReturnReportsImplCopyWith<$Res> {
  factory _$$FetchTotalSaleReturnReportsImplCopyWith(
          _$FetchTotalSaleReturnReportsImpl value,
          $Res Function(_$FetchTotalSaleReturnReportsImpl) then) =
      __$$FetchTotalSaleReturnReportsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String sDate, String eDate});
}

/// @nodoc
class __$$FetchTotalSaleReturnReportsImplCopyWithImpl<$Res>
    extends _$ReportEventCopyWithImpl<$Res, _$FetchTotalSaleReturnReportsImpl>
    implements _$$FetchTotalSaleReturnReportsImplCopyWith<$Res> {
  __$$FetchTotalSaleReturnReportsImplCopyWithImpl(
      _$FetchTotalSaleReturnReportsImpl _value,
      $Res Function(_$FetchTotalSaleReturnReportsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sDate = null,
    Object? eDate = null,
  }) {
    return _then(_$FetchTotalSaleReturnReportsImpl(
      sDate: null == sDate
          ? _value.sDate
          : sDate // ignore: cast_nullable_to_non_nullable
              as String,
      eDate: null == eDate
          ? _value.eDate
          : eDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchTotalSaleReturnReportsImpl implements FetchTotalSaleReturnReports {
  const _$FetchTotalSaleReturnReportsImpl(
      {required this.sDate, required this.eDate});

  @override
  final String sDate;
  @override
  final String eDate;

  @override
  String toString() {
    return 'ReportEvent.fetchReturns(sDate: $sDate, eDate: $eDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTotalSaleReturnReportsImpl &&
            (identical(other.sDate, sDate) || other.sDate == sDate) &&
            (identical(other.eDate, eDate) || other.eDate == eDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sDate, eDate);

  /// Create a copy of ReportEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTotalSaleReturnReportsImplCopyWith<_$FetchTotalSaleReturnReportsImpl>
      get copyWith => __$$FetchTotalSaleReturnReportsImplCopyWithImpl<
          _$FetchTotalSaleReturnReportsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sDate, String eDate) fetch,
    required TResult Function(String sDate, String eDate) fetchReturns,
    required TResult Function() todayreport,
  }) {
    return fetchReturns(sDate, eDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sDate, String eDate)? fetch,
    TResult? Function(String sDate, String eDate)? fetchReturns,
    TResult? Function()? todayreport,
  }) {
    return fetchReturns?.call(sDate, eDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sDate, String eDate)? fetch,
    TResult Function(String sDate, String eDate)? fetchReturns,
    TResult Function()? todayreport,
    required TResult orElse(),
  }) {
    if (fetchReturns != null) {
      return fetchReturns(sDate, eDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTotalSaleReports value) fetch,
    required TResult Function(FetchTotalSaleReturnReports value) fetchReturns,
    required TResult Function(Todayreport value) todayreport,
  }) {
    return fetchReturns(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTotalSaleReports value)? fetch,
    TResult? Function(FetchTotalSaleReturnReports value)? fetchReturns,
    TResult? Function(Todayreport value)? todayreport,
  }) {
    return fetchReturns?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTotalSaleReports value)? fetch,
    TResult Function(FetchTotalSaleReturnReports value)? fetchReturns,
    TResult Function(Todayreport value)? todayreport,
    required TResult orElse(),
  }) {
    if (fetchReturns != null) {
      return fetchReturns(this);
    }
    return orElse();
  }
}

abstract class FetchTotalSaleReturnReports implements ReportEvent {
  const factory FetchTotalSaleReturnReports(
      {required final String sDate,
      required final String eDate}) = _$FetchTotalSaleReturnReportsImpl;

  String get sDate;
  String get eDate;

  /// Create a copy of ReportEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchTotalSaleReturnReportsImplCopyWith<_$FetchTotalSaleReturnReportsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodayreportImplCopyWith<$Res> {
  factory _$$TodayreportImplCopyWith(
          _$TodayreportImpl value, $Res Function(_$TodayreportImpl) then) =
      __$$TodayreportImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodayreportImplCopyWithImpl<$Res>
    extends _$ReportEventCopyWithImpl<$Res, _$TodayreportImpl>
    implements _$$TodayreportImplCopyWith<$Res> {
  __$$TodayreportImplCopyWithImpl(
      _$TodayreportImpl _value, $Res Function(_$TodayreportImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TodayreportImpl implements Todayreport {
  const _$TodayreportImpl();

  @override
  String toString() {
    return 'ReportEvent.todayreport()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodayreportImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sDate, String eDate) fetch,
    required TResult Function(String sDate, String eDate) fetchReturns,
    required TResult Function() todayreport,
  }) {
    return todayreport();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sDate, String eDate)? fetch,
    TResult? Function(String sDate, String eDate)? fetchReturns,
    TResult? Function()? todayreport,
  }) {
    return todayreport?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sDate, String eDate)? fetch,
    TResult Function(String sDate, String eDate)? fetchReturns,
    TResult Function()? todayreport,
    required TResult orElse(),
  }) {
    if (todayreport != null) {
      return todayreport();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchTotalSaleReports value) fetch,
    required TResult Function(FetchTotalSaleReturnReports value) fetchReturns,
    required TResult Function(Todayreport value) todayreport,
  }) {
    return todayreport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchTotalSaleReports value)? fetch,
    TResult? Function(FetchTotalSaleReturnReports value)? fetchReturns,
    TResult? Function(Todayreport value)? todayreport,
  }) {
    return todayreport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchTotalSaleReports value)? fetch,
    TResult Function(FetchTotalSaleReturnReports value)? fetchReturns,
    TResult Function(Todayreport value)? todayreport,
    required TResult orElse(),
  }) {
    if (todayreport != null) {
      return todayreport(this);
    }
    return orElse();
  }
}

abstract class Todayreport implements ReportEvent {
  const factory Todayreport() = _$TodayreportImpl;
}

/// @nodoc
mixin _$ReportState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isTotalLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  double get totalSale => throw _privateConstructorUsedError;
  double get totalSaleReturn => throw _privateConstructorUsedError;
  String get root => throw _privateConstructorUsedError;
  List<Reportmodel> get rBillList => throw _privateConstructorUsedError;
  List<Reportmodel> get rBillReturnList => throw _privateConstructorUsedError;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportStateCopyWith<ReportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportStateCopyWith<$Res> {
  factory $ReportStateCopyWith(
          ReportState value, $Res Function(ReportState) then) =
      _$ReportStateCopyWithImpl<$Res, ReportState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isTotalLoading,
      bool isError,
      double totalSale,
      double totalSaleReturn,
      String root,
      List<Reportmodel> rBillList,
      List<Reportmodel> rBillReturnList});
}

/// @nodoc
class _$ReportStateCopyWithImpl<$Res, $Val extends ReportState>
    implements $ReportStateCopyWith<$Res> {
  _$ReportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isTotalLoading = null,
    Object? isError = null,
    Object? totalSale = null,
    Object? totalSaleReturn = null,
    Object? root = null,
    Object? rBillList = null,
    Object? rBillReturnList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isTotalLoading: null == isTotalLoading
          ? _value.isTotalLoading
          : isTotalLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      totalSale: null == totalSale
          ? _value.totalSale
          : totalSale // ignore: cast_nullable_to_non_nullable
              as double,
      totalSaleReturn: null == totalSaleReturn
          ? _value.totalSaleReturn
          : totalSaleReturn // ignore: cast_nullable_to_non_nullable
              as double,
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as String,
      rBillList: null == rBillList
          ? _value.rBillList
          : rBillList // ignore: cast_nullable_to_non_nullable
              as List<Reportmodel>,
      rBillReturnList: null == rBillReturnList
          ? _value.rBillReturnList
          : rBillReturnList // ignore: cast_nullable_to_non_nullable
              as List<Reportmodel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportStateImplCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory _$$ReportStateImplCopyWith(
          _$ReportStateImpl value, $Res Function(_$ReportStateImpl) then) =
      __$$ReportStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isTotalLoading,
      bool isError,
      double totalSale,
      double totalSaleReturn,
      String root,
      List<Reportmodel> rBillList,
      List<Reportmodel> rBillReturnList});
}

/// @nodoc
class __$$ReportStateImplCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res, _$ReportStateImpl>
    implements _$$ReportStateImplCopyWith<$Res> {
  __$$ReportStateImplCopyWithImpl(
      _$ReportStateImpl _value, $Res Function(_$ReportStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isTotalLoading = null,
    Object? isError = null,
    Object? totalSale = null,
    Object? totalSaleReturn = null,
    Object? root = null,
    Object? rBillList = null,
    Object? rBillReturnList = null,
  }) {
    return _then(_$ReportStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isTotalLoading: null == isTotalLoading
          ? _value.isTotalLoading
          : isTotalLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      totalSale: null == totalSale
          ? _value.totalSale
          : totalSale // ignore: cast_nullable_to_non_nullable
              as double,
      totalSaleReturn: null == totalSaleReturn
          ? _value.totalSaleReturn
          : totalSaleReturn // ignore: cast_nullable_to_non_nullable
              as double,
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as String,
      rBillList: null == rBillList
          ? _value._rBillList
          : rBillList // ignore: cast_nullable_to_non_nullable
              as List<Reportmodel>,
      rBillReturnList: null == rBillReturnList
          ? _value._rBillReturnList
          : rBillReturnList // ignore: cast_nullable_to_non_nullable
              as List<Reportmodel>,
    ));
  }
}

/// @nodoc

class _$ReportStateImpl implements _ReportState {
  _$ReportStateImpl(
      {required this.isLoading,
      required this.isTotalLoading,
      required this.isError,
      required this.totalSale,
      required this.totalSaleReturn,
      required this.root,
      required final List<Reportmodel> rBillList,
      required final List<Reportmodel> rBillReturnList})
      : _rBillList = rBillList,
        _rBillReturnList = rBillReturnList;

  @override
  final bool isLoading;
  @override
  final bool isTotalLoading;
  @override
  final bool isError;
  @override
  final double totalSale;
  @override
  final double totalSaleReturn;
  @override
  final String root;
  final List<Reportmodel> _rBillList;
  @override
  List<Reportmodel> get rBillList {
    if (_rBillList is EqualUnmodifiableListView) return _rBillList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rBillList);
  }

  final List<Reportmodel> _rBillReturnList;
  @override
  List<Reportmodel> get rBillReturnList {
    if (_rBillReturnList is EqualUnmodifiableListView) return _rBillReturnList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rBillReturnList);
  }

  @override
  String toString() {
    return 'ReportState(isLoading: $isLoading, isTotalLoading: $isTotalLoading, isError: $isError, totalSale: $totalSale, totalSaleReturn: $totalSaleReturn, root: $root, rBillList: $rBillList, rBillReturnList: $rBillReturnList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isTotalLoading, isTotalLoading) ||
                other.isTotalLoading == isTotalLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.totalSale, totalSale) ||
                other.totalSale == totalSale) &&
            (identical(other.totalSaleReturn, totalSaleReturn) ||
                other.totalSaleReturn == totalSaleReturn) &&
            (identical(other.root, root) || other.root == root) &&
            const DeepCollectionEquality()
                .equals(other._rBillList, _rBillList) &&
            const DeepCollectionEquality()
                .equals(other._rBillReturnList, _rBillReturnList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isTotalLoading,
      isError,
      totalSale,
      totalSaleReturn,
      root,
      const DeepCollectionEquality().hash(_rBillList),
      const DeepCollectionEquality().hash(_rBillReturnList));

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportStateImplCopyWith<_$ReportStateImpl> get copyWith =>
      __$$ReportStateImplCopyWithImpl<_$ReportStateImpl>(this, _$identity);
}

abstract class _ReportState implements ReportState {
  factory _ReportState(
      {required final bool isLoading,
      required final bool isTotalLoading,
      required final bool isError,
      required final double totalSale,
      required final double totalSaleReturn,
      required final String root,
      required final List<Reportmodel> rBillList,
      required final List<Reportmodel> rBillReturnList}) = _$ReportStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isTotalLoading;
  @override
  bool get isError;
  @override
  double get totalSale;
  @override
  double get totalSaleReturn;
  @override
  String get root;
  @override
  List<Reportmodel> get rBillList;
  @override
  List<Reportmodel> get rBillReturnList;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportStateImplCopyWith<_$ReportStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
