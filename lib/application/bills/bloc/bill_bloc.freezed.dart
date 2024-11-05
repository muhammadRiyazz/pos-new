// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BillEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBills,
    required TResult Function() fetchReturnBills,
    required TResult Function() clearingSort,
    required TResult Function() removeCus,
    required TResult Function(String query, List<ViewBillModel> searchList)
        searchBill,
    required TResult Function(String invoiceNo) fetchBillProducts,
    required TResult Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)
        sortBills,
    required TResult Function(ViewBillModel data, bool isSunmi) billprint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBills,
    TResult? Function()? fetchReturnBills,
    TResult? Function()? clearingSort,
    TResult? Function()? removeCus,
    TResult? Function(String query, List<ViewBillModel> searchList)? searchBill,
    TResult? Function(String invoiceNo)? fetchBillProducts,
    TResult? Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)?
        sortBills,
    TResult? Function(ViewBillModel data, bool isSunmi)? billprint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBills,
    TResult Function()? fetchReturnBills,
    TResult Function()? clearingSort,
    TResult Function()? removeCus,
    TResult Function(String query, List<ViewBillModel> searchList)? searchBill,
    TResult Function(String invoiceNo)? fetchBillProducts,
    TResult Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)?
        sortBills,
    TResult Function(ViewBillModel data, bool isSunmi)? billprint,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchBill value) fetchBills,
    required TResult Function(FetchReturnBill value) fetchReturnBills,
    required TResult Function(ClearingSort value) clearingSort,
    required TResult Function(RemoveCus value) removeCus,
    required TResult Function(SearchBill value) searchBill,
    required TResult Function(FetchBillProducts value) fetchBillProducts,
    required TResult Function(SortBills value) sortBills,
    required TResult Function(BillPrintt value) billprint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchBill value)? fetchBills,
    TResult? Function(FetchReturnBill value)? fetchReturnBills,
    TResult? Function(ClearingSort value)? clearingSort,
    TResult? Function(RemoveCus value)? removeCus,
    TResult? Function(SearchBill value)? searchBill,
    TResult? Function(FetchBillProducts value)? fetchBillProducts,
    TResult? Function(SortBills value)? sortBills,
    TResult? Function(BillPrintt value)? billprint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchBill value)? fetchBills,
    TResult Function(FetchReturnBill value)? fetchReturnBills,
    TResult Function(ClearingSort value)? clearingSort,
    TResult Function(RemoveCus value)? removeCus,
    TResult Function(SearchBill value)? searchBill,
    TResult Function(FetchBillProducts value)? fetchBillProducts,
    TResult Function(SortBills value)? sortBills,
    TResult Function(BillPrintt value)? billprint,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillEventCopyWith<$Res> {
  factory $BillEventCopyWith(BillEvent value, $Res Function(BillEvent) then) =
      _$BillEventCopyWithImpl<$Res, BillEvent>;
}

/// @nodoc
class _$BillEventCopyWithImpl<$Res, $Val extends BillEvent>
    implements $BillEventCopyWith<$Res> {
  _$BillEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchBillImplCopyWith<$Res> {
  factory _$$FetchBillImplCopyWith(
          _$FetchBillImpl value, $Res Function(_$FetchBillImpl) then) =
      __$$FetchBillImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchBillImplCopyWithImpl<$Res>
    extends _$BillEventCopyWithImpl<$Res, _$FetchBillImpl>
    implements _$$FetchBillImplCopyWith<$Res> {
  __$$FetchBillImplCopyWithImpl(
      _$FetchBillImpl _value, $Res Function(_$FetchBillImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchBillImpl implements FetchBill {
  const _$FetchBillImpl();

  @override
  String toString() {
    return 'BillEvent.fetchBills()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchBillImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBills,
    required TResult Function() fetchReturnBills,
    required TResult Function() clearingSort,
    required TResult Function() removeCus,
    required TResult Function(String query, List<ViewBillModel> searchList)
        searchBill,
    required TResult Function(String invoiceNo) fetchBillProducts,
    required TResult Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)
        sortBills,
    required TResult Function(ViewBillModel data, bool isSunmi) billprint,
  }) {
    return fetchBills();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBills,
    TResult? Function()? fetchReturnBills,
    TResult? Function()? clearingSort,
    TResult? Function()? removeCus,
    TResult? Function(String query, List<ViewBillModel> searchList)? searchBill,
    TResult? Function(String invoiceNo)? fetchBillProducts,
    TResult? Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)?
        sortBills,
    TResult? Function(ViewBillModel data, bool isSunmi)? billprint,
  }) {
    return fetchBills?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBills,
    TResult Function()? fetchReturnBills,
    TResult Function()? clearingSort,
    TResult Function()? removeCus,
    TResult Function(String query, List<ViewBillModel> searchList)? searchBill,
    TResult Function(String invoiceNo)? fetchBillProducts,
    TResult Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)?
        sortBills,
    TResult Function(ViewBillModel data, bool isSunmi)? billprint,
    required TResult orElse(),
  }) {
    if (fetchBills != null) {
      return fetchBills();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchBill value) fetchBills,
    required TResult Function(FetchReturnBill value) fetchReturnBills,
    required TResult Function(ClearingSort value) clearingSort,
    required TResult Function(RemoveCus value) removeCus,
    required TResult Function(SearchBill value) searchBill,
    required TResult Function(FetchBillProducts value) fetchBillProducts,
    required TResult Function(SortBills value) sortBills,
    required TResult Function(BillPrintt value) billprint,
  }) {
    return fetchBills(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchBill value)? fetchBills,
    TResult? Function(FetchReturnBill value)? fetchReturnBills,
    TResult? Function(ClearingSort value)? clearingSort,
    TResult? Function(RemoveCus value)? removeCus,
    TResult? Function(SearchBill value)? searchBill,
    TResult? Function(FetchBillProducts value)? fetchBillProducts,
    TResult? Function(SortBills value)? sortBills,
    TResult? Function(BillPrintt value)? billprint,
  }) {
    return fetchBills?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchBill value)? fetchBills,
    TResult Function(FetchReturnBill value)? fetchReturnBills,
    TResult Function(ClearingSort value)? clearingSort,
    TResult Function(RemoveCus value)? removeCus,
    TResult Function(SearchBill value)? searchBill,
    TResult Function(FetchBillProducts value)? fetchBillProducts,
    TResult Function(SortBills value)? sortBills,
    TResult Function(BillPrintt value)? billprint,
    required TResult orElse(),
  }) {
    if (fetchBills != null) {
      return fetchBills(this);
    }
    return orElse();
  }
}

abstract class FetchBill implements BillEvent {
  const factory FetchBill() = _$FetchBillImpl;
}

/// @nodoc
abstract class _$$FetchReturnBillImplCopyWith<$Res> {
  factory _$$FetchReturnBillImplCopyWith(_$FetchReturnBillImpl value,
          $Res Function(_$FetchReturnBillImpl) then) =
      __$$FetchReturnBillImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchReturnBillImplCopyWithImpl<$Res>
    extends _$BillEventCopyWithImpl<$Res, _$FetchReturnBillImpl>
    implements _$$FetchReturnBillImplCopyWith<$Res> {
  __$$FetchReturnBillImplCopyWithImpl(
      _$FetchReturnBillImpl _value, $Res Function(_$FetchReturnBillImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchReturnBillImpl implements FetchReturnBill {
  const _$FetchReturnBillImpl();

  @override
  String toString() {
    return 'BillEvent.fetchReturnBills()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchReturnBillImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBills,
    required TResult Function() fetchReturnBills,
    required TResult Function() clearingSort,
    required TResult Function() removeCus,
    required TResult Function(String query, List<ViewBillModel> searchList)
        searchBill,
    required TResult Function(String invoiceNo) fetchBillProducts,
    required TResult Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)
        sortBills,
    required TResult Function(ViewBillModel data, bool isSunmi) billprint,
  }) {
    return fetchReturnBills();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBills,
    TResult? Function()? fetchReturnBills,
    TResult? Function()? clearingSort,
    TResult? Function()? removeCus,
    TResult? Function(String query, List<ViewBillModel> searchList)? searchBill,
    TResult? Function(String invoiceNo)? fetchBillProducts,
    TResult? Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)?
        sortBills,
    TResult? Function(ViewBillModel data, bool isSunmi)? billprint,
  }) {
    return fetchReturnBills?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBills,
    TResult Function()? fetchReturnBills,
    TResult Function()? clearingSort,
    TResult Function()? removeCus,
    TResult Function(String query, List<ViewBillModel> searchList)? searchBill,
    TResult Function(String invoiceNo)? fetchBillProducts,
    TResult Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)?
        sortBills,
    TResult Function(ViewBillModel data, bool isSunmi)? billprint,
    required TResult orElse(),
  }) {
    if (fetchReturnBills != null) {
      return fetchReturnBills();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchBill value) fetchBills,
    required TResult Function(FetchReturnBill value) fetchReturnBills,
    required TResult Function(ClearingSort value) clearingSort,
    required TResult Function(RemoveCus value) removeCus,
    required TResult Function(SearchBill value) searchBill,
    required TResult Function(FetchBillProducts value) fetchBillProducts,
    required TResult Function(SortBills value) sortBills,
    required TResult Function(BillPrintt value) billprint,
  }) {
    return fetchReturnBills(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchBill value)? fetchBills,
    TResult? Function(FetchReturnBill value)? fetchReturnBills,
    TResult? Function(ClearingSort value)? clearingSort,
    TResult? Function(RemoveCus value)? removeCus,
    TResult? Function(SearchBill value)? searchBill,
    TResult? Function(FetchBillProducts value)? fetchBillProducts,
    TResult? Function(SortBills value)? sortBills,
    TResult? Function(BillPrintt value)? billprint,
  }) {
    return fetchReturnBills?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchBill value)? fetchBills,
    TResult Function(FetchReturnBill value)? fetchReturnBills,
    TResult Function(ClearingSort value)? clearingSort,
    TResult Function(RemoveCus value)? removeCus,
    TResult Function(SearchBill value)? searchBill,
    TResult Function(FetchBillProducts value)? fetchBillProducts,
    TResult Function(SortBills value)? sortBills,
    TResult Function(BillPrintt value)? billprint,
    required TResult orElse(),
  }) {
    if (fetchReturnBills != null) {
      return fetchReturnBills(this);
    }
    return orElse();
  }
}

abstract class FetchReturnBill implements BillEvent {
  const factory FetchReturnBill() = _$FetchReturnBillImpl;
}

/// @nodoc
abstract class _$$ClearingSortImplCopyWith<$Res> {
  factory _$$ClearingSortImplCopyWith(
          _$ClearingSortImpl value, $Res Function(_$ClearingSortImpl) then) =
      __$$ClearingSortImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearingSortImplCopyWithImpl<$Res>
    extends _$BillEventCopyWithImpl<$Res, _$ClearingSortImpl>
    implements _$$ClearingSortImplCopyWith<$Res> {
  __$$ClearingSortImplCopyWithImpl(
      _$ClearingSortImpl _value, $Res Function(_$ClearingSortImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearingSortImpl implements ClearingSort {
  const _$ClearingSortImpl();

  @override
  String toString() {
    return 'BillEvent.clearingSort()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearingSortImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBills,
    required TResult Function() fetchReturnBills,
    required TResult Function() clearingSort,
    required TResult Function() removeCus,
    required TResult Function(String query, List<ViewBillModel> searchList)
        searchBill,
    required TResult Function(String invoiceNo) fetchBillProducts,
    required TResult Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)
        sortBills,
    required TResult Function(ViewBillModel data, bool isSunmi) billprint,
  }) {
    return clearingSort();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBills,
    TResult? Function()? fetchReturnBills,
    TResult? Function()? clearingSort,
    TResult? Function()? removeCus,
    TResult? Function(String query, List<ViewBillModel> searchList)? searchBill,
    TResult? Function(String invoiceNo)? fetchBillProducts,
    TResult? Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)?
        sortBills,
    TResult? Function(ViewBillModel data, bool isSunmi)? billprint,
  }) {
    return clearingSort?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBills,
    TResult Function()? fetchReturnBills,
    TResult Function()? clearingSort,
    TResult Function()? removeCus,
    TResult Function(String query, List<ViewBillModel> searchList)? searchBill,
    TResult Function(String invoiceNo)? fetchBillProducts,
    TResult Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)?
        sortBills,
    TResult Function(ViewBillModel data, bool isSunmi)? billprint,
    required TResult orElse(),
  }) {
    if (clearingSort != null) {
      return clearingSort();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchBill value) fetchBills,
    required TResult Function(FetchReturnBill value) fetchReturnBills,
    required TResult Function(ClearingSort value) clearingSort,
    required TResult Function(RemoveCus value) removeCus,
    required TResult Function(SearchBill value) searchBill,
    required TResult Function(FetchBillProducts value) fetchBillProducts,
    required TResult Function(SortBills value) sortBills,
    required TResult Function(BillPrintt value) billprint,
  }) {
    return clearingSort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchBill value)? fetchBills,
    TResult? Function(FetchReturnBill value)? fetchReturnBills,
    TResult? Function(ClearingSort value)? clearingSort,
    TResult? Function(RemoveCus value)? removeCus,
    TResult? Function(SearchBill value)? searchBill,
    TResult? Function(FetchBillProducts value)? fetchBillProducts,
    TResult? Function(SortBills value)? sortBills,
    TResult? Function(BillPrintt value)? billprint,
  }) {
    return clearingSort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchBill value)? fetchBills,
    TResult Function(FetchReturnBill value)? fetchReturnBills,
    TResult Function(ClearingSort value)? clearingSort,
    TResult Function(RemoveCus value)? removeCus,
    TResult Function(SearchBill value)? searchBill,
    TResult Function(FetchBillProducts value)? fetchBillProducts,
    TResult Function(SortBills value)? sortBills,
    TResult Function(BillPrintt value)? billprint,
    required TResult orElse(),
  }) {
    if (clearingSort != null) {
      return clearingSort(this);
    }
    return orElse();
  }
}

abstract class ClearingSort implements BillEvent {
  const factory ClearingSort() = _$ClearingSortImpl;
}

/// @nodoc
abstract class _$$RemoveCusImplCopyWith<$Res> {
  factory _$$RemoveCusImplCopyWith(
          _$RemoveCusImpl value, $Res Function(_$RemoveCusImpl) then) =
      __$$RemoveCusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveCusImplCopyWithImpl<$Res>
    extends _$BillEventCopyWithImpl<$Res, _$RemoveCusImpl>
    implements _$$RemoveCusImplCopyWith<$Res> {
  __$$RemoveCusImplCopyWithImpl(
      _$RemoveCusImpl _value, $Res Function(_$RemoveCusImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RemoveCusImpl implements RemoveCus {
  const _$RemoveCusImpl();

  @override
  String toString() {
    return 'BillEvent.removeCus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveCusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBills,
    required TResult Function() fetchReturnBills,
    required TResult Function() clearingSort,
    required TResult Function() removeCus,
    required TResult Function(String query, List<ViewBillModel> searchList)
        searchBill,
    required TResult Function(String invoiceNo) fetchBillProducts,
    required TResult Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)
        sortBills,
    required TResult Function(ViewBillModel data, bool isSunmi) billprint,
  }) {
    return removeCus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBills,
    TResult? Function()? fetchReturnBills,
    TResult? Function()? clearingSort,
    TResult? Function()? removeCus,
    TResult? Function(String query, List<ViewBillModel> searchList)? searchBill,
    TResult? Function(String invoiceNo)? fetchBillProducts,
    TResult? Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)?
        sortBills,
    TResult? Function(ViewBillModel data, bool isSunmi)? billprint,
  }) {
    return removeCus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBills,
    TResult Function()? fetchReturnBills,
    TResult Function()? clearingSort,
    TResult Function()? removeCus,
    TResult Function(String query, List<ViewBillModel> searchList)? searchBill,
    TResult Function(String invoiceNo)? fetchBillProducts,
    TResult Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)?
        sortBills,
    TResult Function(ViewBillModel data, bool isSunmi)? billprint,
    required TResult orElse(),
  }) {
    if (removeCus != null) {
      return removeCus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchBill value) fetchBills,
    required TResult Function(FetchReturnBill value) fetchReturnBills,
    required TResult Function(ClearingSort value) clearingSort,
    required TResult Function(RemoveCus value) removeCus,
    required TResult Function(SearchBill value) searchBill,
    required TResult Function(FetchBillProducts value) fetchBillProducts,
    required TResult Function(SortBills value) sortBills,
    required TResult Function(BillPrintt value) billprint,
  }) {
    return removeCus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchBill value)? fetchBills,
    TResult? Function(FetchReturnBill value)? fetchReturnBills,
    TResult? Function(ClearingSort value)? clearingSort,
    TResult? Function(RemoveCus value)? removeCus,
    TResult? Function(SearchBill value)? searchBill,
    TResult? Function(FetchBillProducts value)? fetchBillProducts,
    TResult? Function(SortBills value)? sortBills,
    TResult? Function(BillPrintt value)? billprint,
  }) {
    return removeCus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchBill value)? fetchBills,
    TResult Function(FetchReturnBill value)? fetchReturnBills,
    TResult Function(ClearingSort value)? clearingSort,
    TResult Function(RemoveCus value)? removeCus,
    TResult Function(SearchBill value)? searchBill,
    TResult Function(FetchBillProducts value)? fetchBillProducts,
    TResult Function(SortBills value)? sortBills,
    TResult Function(BillPrintt value)? billprint,
    required TResult orElse(),
  }) {
    if (removeCus != null) {
      return removeCus(this);
    }
    return orElse();
  }
}

abstract class RemoveCus implements BillEvent {
  const factory RemoveCus() = _$RemoveCusImpl;
}

/// @nodoc
abstract class _$$SearchBillImplCopyWith<$Res> {
  factory _$$SearchBillImplCopyWith(
          _$SearchBillImpl value, $Res Function(_$SearchBillImpl) then) =
      __$$SearchBillImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, List<ViewBillModel> searchList});
}

/// @nodoc
class __$$SearchBillImplCopyWithImpl<$Res>
    extends _$BillEventCopyWithImpl<$Res, _$SearchBillImpl>
    implements _$$SearchBillImplCopyWith<$Res> {
  __$$SearchBillImplCopyWithImpl(
      _$SearchBillImpl _value, $Res Function(_$SearchBillImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? searchList = null,
  }) {
    return _then(_$SearchBillImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      searchList: null == searchList
          ? _value._searchList
          : searchList // ignore: cast_nullable_to_non_nullable
              as List<ViewBillModel>,
    ));
  }
}

/// @nodoc

class _$SearchBillImpl implements SearchBill {
  const _$SearchBillImpl(
      {required this.query, required final List<ViewBillModel> searchList})
      : _searchList = searchList;

  @override
  final String query;
  final List<ViewBillModel> _searchList;
  @override
  List<ViewBillModel> get searchList {
    if (_searchList is EqualUnmodifiableListView) return _searchList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchList);
  }

  @override
  String toString() {
    return 'BillEvent.searchBill(query: $query, searchList: $searchList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBillImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality()
                .equals(other._searchList, _searchList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(_searchList));

  /// Create a copy of BillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchBillImplCopyWith<_$SearchBillImpl> get copyWith =>
      __$$SearchBillImplCopyWithImpl<_$SearchBillImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBills,
    required TResult Function() fetchReturnBills,
    required TResult Function() clearingSort,
    required TResult Function() removeCus,
    required TResult Function(String query, List<ViewBillModel> searchList)
        searchBill,
    required TResult Function(String invoiceNo) fetchBillProducts,
    required TResult Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)
        sortBills,
    required TResult Function(ViewBillModel data, bool isSunmi) billprint,
  }) {
    return searchBill(query, searchList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBills,
    TResult? Function()? fetchReturnBills,
    TResult? Function()? clearingSort,
    TResult? Function()? removeCus,
    TResult? Function(String query, List<ViewBillModel> searchList)? searchBill,
    TResult? Function(String invoiceNo)? fetchBillProducts,
    TResult? Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)?
        sortBills,
    TResult? Function(ViewBillModel data, bool isSunmi)? billprint,
  }) {
    return searchBill?.call(query, searchList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBills,
    TResult Function()? fetchReturnBills,
    TResult Function()? clearingSort,
    TResult Function()? removeCus,
    TResult Function(String query, List<ViewBillModel> searchList)? searchBill,
    TResult Function(String invoiceNo)? fetchBillProducts,
    TResult Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)?
        sortBills,
    TResult Function(ViewBillModel data, bool isSunmi)? billprint,
    required TResult orElse(),
  }) {
    if (searchBill != null) {
      return searchBill(query, searchList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchBill value) fetchBills,
    required TResult Function(FetchReturnBill value) fetchReturnBills,
    required TResult Function(ClearingSort value) clearingSort,
    required TResult Function(RemoveCus value) removeCus,
    required TResult Function(SearchBill value) searchBill,
    required TResult Function(FetchBillProducts value) fetchBillProducts,
    required TResult Function(SortBills value) sortBills,
    required TResult Function(BillPrintt value) billprint,
  }) {
    return searchBill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchBill value)? fetchBills,
    TResult? Function(FetchReturnBill value)? fetchReturnBills,
    TResult? Function(ClearingSort value)? clearingSort,
    TResult? Function(RemoveCus value)? removeCus,
    TResult? Function(SearchBill value)? searchBill,
    TResult? Function(FetchBillProducts value)? fetchBillProducts,
    TResult? Function(SortBills value)? sortBills,
    TResult? Function(BillPrintt value)? billprint,
  }) {
    return searchBill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchBill value)? fetchBills,
    TResult Function(FetchReturnBill value)? fetchReturnBills,
    TResult Function(ClearingSort value)? clearingSort,
    TResult Function(RemoveCus value)? removeCus,
    TResult Function(SearchBill value)? searchBill,
    TResult Function(FetchBillProducts value)? fetchBillProducts,
    TResult Function(SortBills value)? sortBills,
    TResult Function(BillPrintt value)? billprint,
    required TResult orElse(),
  }) {
    if (searchBill != null) {
      return searchBill(this);
    }
    return orElse();
  }
}

abstract class SearchBill implements BillEvent {
  const factory SearchBill(
      {required final String query,
      required final List<ViewBillModel> searchList}) = _$SearchBillImpl;

  String get query;
  List<ViewBillModel> get searchList;

  /// Create a copy of BillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchBillImplCopyWith<_$SearchBillImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchBillProductsImplCopyWith<$Res> {
  factory _$$FetchBillProductsImplCopyWith(_$FetchBillProductsImpl value,
          $Res Function(_$FetchBillProductsImpl) then) =
      __$$FetchBillProductsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String invoiceNo});
}

/// @nodoc
class __$$FetchBillProductsImplCopyWithImpl<$Res>
    extends _$BillEventCopyWithImpl<$Res, _$FetchBillProductsImpl>
    implements _$$FetchBillProductsImplCopyWith<$Res> {
  __$$FetchBillProductsImplCopyWithImpl(_$FetchBillProductsImpl _value,
      $Res Function(_$FetchBillProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceNo = null,
  }) {
    return _then(_$FetchBillProductsImpl(
      invoiceNo: null == invoiceNo
          ? _value.invoiceNo
          : invoiceNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchBillProductsImpl implements FetchBillProducts {
  const _$FetchBillProductsImpl({required this.invoiceNo});

  @override
  final String invoiceNo;

  @override
  String toString() {
    return 'BillEvent.fetchBillProducts(invoiceNo: $invoiceNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchBillProductsImpl &&
            (identical(other.invoiceNo, invoiceNo) ||
                other.invoiceNo == invoiceNo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invoiceNo);

  /// Create a copy of BillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchBillProductsImplCopyWith<_$FetchBillProductsImpl> get copyWith =>
      __$$FetchBillProductsImplCopyWithImpl<_$FetchBillProductsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBills,
    required TResult Function() fetchReturnBills,
    required TResult Function() clearingSort,
    required TResult Function() removeCus,
    required TResult Function(String query, List<ViewBillModel> searchList)
        searchBill,
    required TResult Function(String invoiceNo) fetchBillProducts,
    required TResult Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)
        sortBills,
    required TResult Function(ViewBillModel data, bool isSunmi) billprint,
  }) {
    return fetchBillProducts(invoiceNo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBills,
    TResult? Function()? fetchReturnBills,
    TResult? Function()? clearingSort,
    TResult? Function()? removeCus,
    TResult? Function(String query, List<ViewBillModel> searchList)? searchBill,
    TResult? Function(String invoiceNo)? fetchBillProducts,
    TResult? Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)?
        sortBills,
    TResult? Function(ViewBillModel data, bool isSunmi)? billprint,
  }) {
    return fetchBillProducts?.call(invoiceNo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBills,
    TResult Function()? fetchReturnBills,
    TResult Function()? clearingSort,
    TResult Function()? removeCus,
    TResult Function(String query, List<ViewBillModel> searchList)? searchBill,
    TResult Function(String invoiceNo)? fetchBillProducts,
    TResult Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)?
        sortBills,
    TResult Function(ViewBillModel data, bool isSunmi)? billprint,
    required TResult orElse(),
  }) {
    if (fetchBillProducts != null) {
      return fetchBillProducts(invoiceNo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchBill value) fetchBills,
    required TResult Function(FetchReturnBill value) fetchReturnBills,
    required TResult Function(ClearingSort value) clearingSort,
    required TResult Function(RemoveCus value) removeCus,
    required TResult Function(SearchBill value) searchBill,
    required TResult Function(FetchBillProducts value) fetchBillProducts,
    required TResult Function(SortBills value) sortBills,
    required TResult Function(BillPrintt value) billprint,
  }) {
    return fetchBillProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchBill value)? fetchBills,
    TResult? Function(FetchReturnBill value)? fetchReturnBills,
    TResult? Function(ClearingSort value)? clearingSort,
    TResult? Function(RemoveCus value)? removeCus,
    TResult? Function(SearchBill value)? searchBill,
    TResult? Function(FetchBillProducts value)? fetchBillProducts,
    TResult? Function(SortBills value)? sortBills,
    TResult? Function(BillPrintt value)? billprint,
  }) {
    return fetchBillProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchBill value)? fetchBills,
    TResult Function(FetchReturnBill value)? fetchReturnBills,
    TResult Function(ClearingSort value)? clearingSort,
    TResult Function(RemoveCus value)? removeCus,
    TResult Function(SearchBill value)? searchBill,
    TResult Function(FetchBillProducts value)? fetchBillProducts,
    TResult Function(SortBills value)? sortBills,
    TResult Function(BillPrintt value)? billprint,
    required TResult orElse(),
  }) {
    if (fetchBillProducts != null) {
      return fetchBillProducts(this);
    }
    return orElse();
  }
}

abstract class FetchBillProducts implements BillEvent {
  const factory FetchBillProducts({required final String invoiceNo}) =
      _$FetchBillProductsImpl;

  String get invoiceNo;

  /// Create a copy of BillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchBillProductsImplCopyWith<_$FetchBillProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortBillsImplCopyWith<$Res> {
  factory _$$SortBillsImplCopyWith(
          _$SortBillsImpl value, $Res Function(_$SortBillsImpl) then) =
      __$$SortBillsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? cusId, String? cusname, DateTime? sDate, DateTime? eDate});
}

/// @nodoc
class __$$SortBillsImplCopyWithImpl<$Res>
    extends _$BillEventCopyWithImpl<$Res, _$SortBillsImpl>
    implements _$$SortBillsImplCopyWith<$Res> {
  __$$SortBillsImplCopyWithImpl(
      _$SortBillsImpl _value, $Res Function(_$SortBillsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cusId = freezed,
    Object? cusname = freezed,
    Object? sDate = freezed,
    Object? eDate = freezed,
  }) {
    return _then(_$SortBillsImpl(
      cusId: freezed == cusId
          ? _value.cusId
          : cusId // ignore: cast_nullable_to_non_nullable
              as String?,
      cusname: freezed == cusname
          ? _value.cusname
          : cusname // ignore: cast_nullable_to_non_nullable
              as String?,
      sDate: freezed == sDate
          ? _value.sDate
          : sDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      eDate: freezed == eDate
          ? _value.eDate
          : eDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$SortBillsImpl implements SortBills {
  const _$SortBillsImpl({this.cusId, this.cusname, this.sDate, this.eDate});

  @override
  final String? cusId;
  @override
  final String? cusname;
  @override
  final DateTime? sDate;
  @override
  final DateTime? eDate;

  @override
  String toString() {
    return 'BillEvent.sortBills(cusId: $cusId, cusname: $cusname, sDate: $sDate, eDate: $eDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortBillsImpl &&
            (identical(other.cusId, cusId) || other.cusId == cusId) &&
            (identical(other.cusname, cusname) || other.cusname == cusname) &&
            (identical(other.sDate, sDate) || other.sDate == sDate) &&
            (identical(other.eDate, eDate) || other.eDate == eDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cusId, cusname, sDate, eDate);

  /// Create a copy of BillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SortBillsImplCopyWith<_$SortBillsImpl> get copyWith =>
      __$$SortBillsImplCopyWithImpl<_$SortBillsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBills,
    required TResult Function() fetchReturnBills,
    required TResult Function() clearingSort,
    required TResult Function() removeCus,
    required TResult Function(String query, List<ViewBillModel> searchList)
        searchBill,
    required TResult Function(String invoiceNo) fetchBillProducts,
    required TResult Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)
        sortBills,
    required TResult Function(ViewBillModel data, bool isSunmi) billprint,
  }) {
    return sortBills(cusId, cusname, sDate, eDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBills,
    TResult? Function()? fetchReturnBills,
    TResult? Function()? clearingSort,
    TResult? Function()? removeCus,
    TResult? Function(String query, List<ViewBillModel> searchList)? searchBill,
    TResult? Function(String invoiceNo)? fetchBillProducts,
    TResult? Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)?
        sortBills,
    TResult? Function(ViewBillModel data, bool isSunmi)? billprint,
  }) {
    return sortBills?.call(cusId, cusname, sDate, eDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBills,
    TResult Function()? fetchReturnBills,
    TResult Function()? clearingSort,
    TResult Function()? removeCus,
    TResult Function(String query, List<ViewBillModel> searchList)? searchBill,
    TResult Function(String invoiceNo)? fetchBillProducts,
    TResult Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)?
        sortBills,
    TResult Function(ViewBillModel data, bool isSunmi)? billprint,
    required TResult orElse(),
  }) {
    if (sortBills != null) {
      return sortBills(cusId, cusname, sDate, eDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchBill value) fetchBills,
    required TResult Function(FetchReturnBill value) fetchReturnBills,
    required TResult Function(ClearingSort value) clearingSort,
    required TResult Function(RemoveCus value) removeCus,
    required TResult Function(SearchBill value) searchBill,
    required TResult Function(FetchBillProducts value) fetchBillProducts,
    required TResult Function(SortBills value) sortBills,
    required TResult Function(BillPrintt value) billprint,
  }) {
    return sortBills(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchBill value)? fetchBills,
    TResult? Function(FetchReturnBill value)? fetchReturnBills,
    TResult? Function(ClearingSort value)? clearingSort,
    TResult? Function(RemoveCus value)? removeCus,
    TResult? Function(SearchBill value)? searchBill,
    TResult? Function(FetchBillProducts value)? fetchBillProducts,
    TResult? Function(SortBills value)? sortBills,
    TResult? Function(BillPrintt value)? billprint,
  }) {
    return sortBills?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchBill value)? fetchBills,
    TResult Function(FetchReturnBill value)? fetchReturnBills,
    TResult Function(ClearingSort value)? clearingSort,
    TResult Function(RemoveCus value)? removeCus,
    TResult Function(SearchBill value)? searchBill,
    TResult Function(FetchBillProducts value)? fetchBillProducts,
    TResult Function(SortBills value)? sortBills,
    TResult Function(BillPrintt value)? billprint,
    required TResult orElse(),
  }) {
    if (sortBills != null) {
      return sortBills(this);
    }
    return orElse();
  }
}

abstract class SortBills implements BillEvent {
  const factory SortBills(
      {final String? cusId,
      final String? cusname,
      final DateTime? sDate,
      final DateTime? eDate}) = _$SortBillsImpl;

  String? get cusId;
  String? get cusname;
  DateTime? get sDate;
  DateTime? get eDate;

  /// Create a copy of BillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SortBillsImplCopyWith<_$SortBillsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BillPrinttImplCopyWith<$Res> {
  factory _$$BillPrinttImplCopyWith(
          _$BillPrinttImpl value, $Res Function(_$BillPrinttImpl) then) =
      __$$BillPrinttImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ViewBillModel data, bool isSunmi});
}

/// @nodoc
class __$$BillPrinttImplCopyWithImpl<$Res>
    extends _$BillEventCopyWithImpl<$Res, _$BillPrinttImpl>
    implements _$$BillPrinttImplCopyWith<$Res> {
  __$$BillPrinttImplCopyWithImpl(
      _$BillPrinttImpl _value, $Res Function(_$BillPrinttImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? isSunmi = null,
  }) {
    return _then(_$BillPrinttImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ViewBillModel,
      isSunmi: null == isSunmi
          ? _value.isSunmi
          : isSunmi // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BillPrinttImpl implements BillPrintt {
  const _$BillPrinttImpl({required this.data, required this.isSunmi});

  @override
  final ViewBillModel data;
  @override
  final bool isSunmi;

  @override
  String toString() {
    return 'BillEvent.billprint(data: $data, isSunmi: $isSunmi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillPrinttImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.isSunmi, isSunmi) || other.isSunmi == isSunmi));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, isSunmi);

  /// Create a copy of BillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillPrinttImplCopyWith<_$BillPrinttImpl> get copyWith =>
      __$$BillPrinttImplCopyWithImpl<_$BillPrinttImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBills,
    required TResult Function() fetchReturnBills,
    required TResult Function() clearingSort,
    required TResult Function() removeCus,
    required TResult Function(String query, List<ViewBillModel> searchList)
        searchBill,
    required TResult Function(String invoiceNo) fetchBillProducts,
    required TResult Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)
        sortBills,
    required TResult Function(ViewBillModel data, bool isSunmi) billprint,
  }) {
    return billprint(data, isSunmi);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBills,
    TResult? Function()? fetchReturnBills,
    TResult? Function()? clearingSort,
    TResult? Function()? removeCus,
    TResult? Function(String query, List<ViewBillModel> searchList)? searchBill,
    TResult? Function(String invoiceNo)? fetchBillProducts,
    TResult? Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)?
        sortBills,
    TResult? Function(ViewBillModel data, bool isSunmi)? billprint,
  }) {
    return billprint?.call(data, isSunmi);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBills,
    TResult Function()? fetchReturnBills,
    TResult Function()? clearingSort,
    TResult Function()? removeCus,
    TResult Function(String query, List<ViewBillModel> searchList)? searchBill,
    TResult Function(String invoiceNo)? fetchBillProducts,
    TResult Function(
            String? cusId, String? cusname, DateTime? sDate, DateTime? eDate)?
        sortBills,
    TResult Function(ViewBillModel data, bool isSunmi)? billprint,
    required TResult orElse(),
  }) {
    if (billprint != null) {
      return billprint(data, isSunmi);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchBill value) fetchBills,
    required TResult Function(FetchReturnBill value) fetchReturnBills,
    required TResult Function(ClearingSort value) clearingSort,
    required TResult Function(RemoveCus value) removeCus,
    required TResult Function(SearchBill value) searchBill,
    required TResult Function(FetchBillProducts value) fetchBillProducts,
    required TResult Function(SortBills value) sortBills,
    required TResult Function(BillPrintt value) billprint,
  }) {
    return billprint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchBill value)? fetchBills,
    TResult? Function(FetchReturnBill value)? fetchReturnBills,
    TResult? Function(ClearingSort value)? clearingSort,
    TResult? Function(RemoveCus value)? removeCus,
    TResult? Function(SearchBill value)? searchBill,
    TResult? Function(FetchBillProducts value)? fetchBillProducts,
    TResult? Function(SortBills value)? sortBills,
    TResult? Function(BillPrintt value)? billprint,
  }) {
    return billprint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchBill value)? fetchBills,
    TResult Function(FetchReturnBill value)? fetchReturnBills,
    TResult Function(ClearingSort value)? clearingSort,
    TResult Function(RemoveCus value)? removeCus,
    TResult Function(SearchBill value)? searchBill,
    TResult Function(FetchBillProducts value)? fetchBillProducts,
    TResult Function(SortBills value)? sortBills,
    TResult Function(BillPrintt value)? billprint,
    required TResult orElse(),
  }) {
    if (billprint != null) {
      return billprint(this);
    }
    return orElse();
  }
}

abstract class BillPrintt implements BillEvent {
  const factory BillPrintt(
      {required final ViewBillModel data,
      required final bool isSunmi}) = _$BillPrinttImpl;

  ViewBillModel get data;
  bool get isSunmi;

  /// Create a copy of BillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillPrinttImplCopyWith<_$BillPrinttImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BillState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  double get paidamount => throw _privateConstructorUsedError;
  List<ViewBillModel> get bills => throw _privateConstructorUsedError;
  List<ViewBillModel> get billsReturn => throw _privateConstructorUsedError;
  List<InvoiceDetail> get billItems => throw _privateConstructorUsedError;
  DateTime? get selectedSdate => throw _privateConstructorUsedError;
  DateTime? get selectedEdate => throw _privateConstructorUsedError;
  String? get selectedCus => throw _privateConstructorUsedError;
  String? get selectedCusId => throw _privateConstructorUsedError;

  /// Create a copy of BillState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillStateCopyWith<BillState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillStateCopyWith<$Res> {
  factory $BillStateCopyWith(BillState value, $Res Function(BillState) then) =
      _$BillStateCopyWithImpl<$Res, BillState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      double paidamount,
      List<ViewBillModel> bills,
      List<ViewBillModel> billsReturn,
      List<InvoiceDetail> billItems,
      DateTime? selectedSdate,
      DateTime? selectedEdate,
      String? selectedCus,
      String? selectedCusId});
}

/// @nodoc
class _$BillStateCopyWithImpl<$Res, $Val extends BillState>
    implements $BillStateCopyWith<$Res> {
  _$BillStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? paidamount = null,
    Object? bills = null,
    Object? billsReturn = null,
    Object? billItems = null,
    Object? selectedSdate = freezed,
    Object? selectedEdate = freezed,
    Object? selectedCus = freezed,
    Object? selectedCusId = freezed,
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
      paidamount: null == paidamount
          ? _value.paidamount
          : paidamount // ignore: cast_nullable_to_non_nullable
              as double,
      bills: null == bills
          ? _value.bills
          : bills // ignore: cast_nullable_to_non_nullable
              as List<ViewBillModel>,
      billsReturn: null == billsReturn
          ? _value.billsReturn
          : billsReturn // ignore: cast_nullable_to_non_nullable
              as List<ViewBillModel>,
      billItems: null == billItems
          ? _value.billItems
          : billItems // ignore: cast_nullable_to_non_nullable
              as List<InvoiceDetail>,
      selectedSdate: freezed == selectedSdate
          ? _value.selectedSdate
          : selectedSdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedEdate: freezed == selectedEdate
          ? _value.selectedEdate
          : selectedEdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedCus: freezed == selectedCus
          ? _value.selectedCus
          : selectedCus // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCusId: freezed == selectedCusId
          ? _value.selectedCusId
          : selectedCusId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerpartStateImplCopyWith<$Res>
    implements $BillStateCopyWith<$Res> {
  factory _$$CustomerpartStateImplCopyWith(_$CustomerpartStateImpl value,
          $Res Function(_$CustomerpartStateImpl) then) =
      __$$CustomerpartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      double paidamount,
      List<ViewBillModel> bills,
      List<ViewBillModel> billsReturn,
      List<InvoiceDetail> billItems,
      DateTime? selectedSdate,
      DateTime? selectedEdate,
      String? selectedCus,
      String? selectedCusId});
}

/// @nodoc
class __$$CustomerpartStateImplCopyWithImpl<$Res>
    extends _$BillStateCopyWithImpl<$Res, _$CustomerpartStateImpl>
    implements _$$CustomerpartStateImplCopyWith<$Res> {
  __$$CustomerpartStateImplCopyWithImpl(_$CustomerpartStateImpl _value,
      $Res Function(_$CustomerpartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? paidamount = null,
    Object? bills = null,
    Object? billsReturn = null,
    Object? billItems = null,
    Object? selectedSdate = freezed,
    Object? selectedEdate = freezed,
    Object? selectedCus = freezed,
    Object? selectedCusId = freezed,
  }) {
    return _then(_$CustomerpartStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      paidamount: null == paidamount
          ? _value.paidamount
          : paidamount // ignore: cast_nullable_to_non_nullable
              as double,
      bills: null == bills
          ? _value._bills
          : bills // ignore: cast_nullable_to_non_nullable
              as List<ViewBillModel>,
      billsReturn: null == billsReturn
          ? _value._billsReturn
          : billsReturn // ignore: cast_nullable_to_non_nullable
              as List<ViewBillModel>,
      billItems: null == billItems
          ? _value._billItems
          : billItems // ignore: cast_nullable_to_non_nullable
              as List<InvoiceDetail>,
      selectedSdate: freezed == selectedSdate
          ? _value.selectedSdate
          : selectedSdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedEdate: freezed == selectedEdate
          ? _value.selectedEdate
          : selectedEdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedCus: freezed == selectedCus
          ? _value.selectedCus
          : selectedCus // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCusId: freezed == selectedCusId
          ? _value.selectedCusId
          : selectedCusId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CustomerpartStateImpl implements _CustomerpartState {
  _$CustomerpartStateImpl(
      {required this.isLoading,
      required this.isError,
      required this.paidamount,
      required final List<ViewBillModel> bills,
      required final List<ViewBillModel> billsReturn,
      required final List<InvoiceDetail> billItems,
      this.selectedSdate,
      this.selectedEdate,
      this.selectedCus,
      this.selectedCusId})
      : _bills = bills,
        _billsReturn = billsReturn,
        _billItems = billItems;

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final double paidamount;
  final List<ViewBillModel> _bills;
  @override
  List<ViewBillModel> get bills {
    if (_bills is EqualUnmodifiableListView) return _bills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bills);
  }

  final List<ViewBillModel> _billsReturn;
  @override
  List<ViewBillModel> get billsReturn {
    if (_billsReturn is EqualUnmodifiableListView) return _billsReturn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_billsReturn);
  }

  final List<InvoiceDetail> _billItems;
  @override
  List<InvoiceDetail> get billItems {
    if (_billItems is EqualUnmodifiableListView) return _billItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_billItems);
  }

  @override
  final DateTime? selectedSdate;
  @override
  final DateTime? selectedEdate;
  @override
  final String? selectedCus;
  @override
  final String? selectedCusId;

  @override
  String toString() {
    return 'BillState(isLoading: $isLoading, isError: $isError, paidamount: $paidamount, bills: $bills, billsReturn: $billsReturn, billItems: $billItems, selectedSdate: $selectedSdate, selectedEdate: $selectedEdate, selectedCus: $selectedCus, selectedCusId: $selectedCusId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerpartStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.paidamount, paidamount) ||
                other.paidamount == paidamount) &&
            const DeepCollectionEquality().equals(other._bills, _bills) &&
            const DeepCollectionEquality()
                .equals(other._billsReturn, _billsReturn) &&
            const DeepCollectionEquality()
                .equals(other._billItems, _billItems) &&
            (identical(other.selectedSdate, selectedSdate) ||
                other.selectedSdate == selectedSdate) &&
            (identical(other.selectedEdate, selectedEdate) ||
                other.selectedEdate == selectedEdate) &&
            (identical(other.selectedCus, selectedCus) ||
                other.selectedCus == selectedCus) &&
            (identical(other.selectedCusId, selectedCusId) ||
                other.selectedCusId == selectedCusId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      paidamount,
      const DeepCollectionEquality().hash(_bills),
      const DeepCollectionEquality().hash(_billsReturn),
      const DeepCollectionEquality().hash(_billItems),
      selectedSdate,
      selectedEdate,
      selectedCus,
      selectedCusId);

  /// Create a copy of BillState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerpartStateImplCopyWith<_$CustomerpartStateImpl> get copyWith =>
      __$$CustomerpartStateImplCopyWithImpl<_$CustomerpartStateImpl>(
          this, _$identity);
}

abstract class _CustomerpartState implements BillState {
  factory _CustomerpartState(
      {required final bool isLoading,
      required final bool isError,
      required final double paidamount,
      required final List<ViewBillModel> bills,
      required final List<ViewBillModel> billsReturn,
      required final List<InvoiceDetail> billItems,
      final DateTime? selectedSdate,
      final DateTime? selectedEdate,
      final String? selectedCus,
      final String? selectedCusId}) = _$CustomerpartStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  double get paidamount;
  @override
  List<ViewBillModel> get bills;
  @override
  List<ViewBillModel> get billsReturn;
  @override
  List<InvoiceDetail> get billItems;
  @override
  DateTime? get selectedSdate;
  @override
  DateTime? get selectedEdate;
  @override
  String? get selectedCus;
  @override
  String? get selectedCusId;

  /// Create a copy of BillState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerpartStateImplCopyWith<_$CustomerpartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
