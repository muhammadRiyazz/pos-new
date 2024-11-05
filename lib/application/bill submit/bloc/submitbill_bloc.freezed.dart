// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submitbill_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubmitbillEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Stocklist> list) listing,
    required TResult Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)
        removeItem,
    required TResult Function(String cusid) outstandingCredit,
    required TResult Function(
            double dicountamt, List<Stocklist> selectedstocklist)
        adddiscount,
    required TResult Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)
        submitBill,
    required TResult Function(Customerslist customers, BuildContext ctx)
        submitretunBill,
    required TResult Function(Customerslist customers, BuildContext ctx)
        estimatesubmite,
    required TResult Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)
        printbill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Stocklist> list)? listing,
    TResult? Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)?
        removeItem,
    TResult? Function(String cusid)? outstandingCredit,
    TResult? Function(double dicountamt, List<Stocklist> selectedstocklist)?
        adddiscount,
    TResult? Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)?
        submitBill,
    TResult? Function(Customerslist customers, BuildContext ctx)?
        submitretunBill,
    TResult? Function(Customerslist customers, BuildContext ctx)?
        estimatesubmite,
    TResult? Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)?
        printbill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Stocklist> list)? listing,
    TResult Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)?
        removeItem,
    TResult Function(String cusid)? outstandingCredit,
    TResult Function(double dicountamt, List<Stocklist> selectedstocklist)?
        adddiscount,
    TResult Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)?
        submitBill,
    TResult Function(Customerslist customers, BuildContext ctx)?
        submitretunBill,
    TResult Function(Customerslist customers, BuildContext ctx)?
        estimatesubmite,
    TResult Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)?
        printbill,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Listing value) listing,
    required TResult Function(RemoveItem value) removeItem,
    required TResult Function(OutstandingCredit value) outstandingCredit,
    required TResult Function(AddDiscount value) adddiscount,
    required TResult Function(SubmitBill value) submitBill,
    required TResult Function(SubmitretunBill value) submitretunBill,
    required TResult Function(Estimatesubmite value) estimatesubmite,
    required TResult Function(Printbill value) printbill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Listing value)? listing,
    TResult? Function(RemoveItem value)? removeItem,
    TResult? Function(OutstandingCredit value)? outstandingCredit,
    TResult? Function(AddDiscount value)? adddiscount,
    TResult? Function(SubmitBill value)? submitBill,
    TResult? Function(SubmitretunBill value)? submitretunBill,
    TResult? Function(Estimatesubmite value)? estimatesubmite,
    TResult? Function(Printbill value)? printbill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Listing value)? listing,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(OutstandingCredit value)? outstandingCredit,
    TResult Function(AddDiscount value)? adddiscount,
    TResult Function(SubmitBill value)? submitBill,
    TResult Function(SubmitretunBill value)? submitretunBill,
    TResult Function(Estimatesubmite value)? estimatesubmite,
    TResult Function(Printbill value)? printbill,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitbillEventCopyWith<$Res> {
  factory $SubmitbillEventCopyWith(
          SubmitbillEvent value, $Res Function(SubmitbillEvent) then) =
      _$SubmitbillEventCopyWithImpl<$Res, SubmitbillEvent>;
}

/// @nodoc
class _$SubmitbillEventCopyWithImpl<$Res, $Val extends SubmitbillEvent>
    implements $SubmitbillEventCopyWith<$Res> {
  _$SubmitbillEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ListingImplCopyWith<$Res> {
  factory _$$ListingImplCopyWith(
          _$ListingImpl value, $Res Function(_$ListingImpl) then) =
      __$$ListingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Stocklist> list});
}

/// @nodoc
class __$$ListingImplCopyWithImpl<$Res>
    extends _$SubmitbillEventCopyWithImpl<$Res, _$ListingImpl>
    implements _$$ListingImplCopyWith<$Res> {
  __$$ListingImplCopyWithImpl(
      _$ListingImpl _value, $Res Function(_$ListingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$ListingImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Stocklist>,
    ));
  }
}

/// @nodoc

class _$ListingImpl implements Listing {
  const _$ListingImpl({required final List<Stocklist> list}) : _list = list;

  final List<Stocklist> _list;
  @override
  List<Stocklist> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'SubmitbillEvent.listing(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListingImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListingImplCopyWith<_$ListingImpl> get copyWith =>
      __$$ListingImplCopyWithImpl<_$ListingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Stocklist> list) listing,
    required TResult Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)
        removeItem,
    required TResult Function(String cusid) outstandingCredit,
    required TResult Function(
            double dicountamt, List<Stocklist> selectedstocklist)
        adddiscount,
    required TResult Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)
        submitBill,
    required TResult Function(Customerslist customers, BuildContext ctx)
        submitretunBill,
    required TResult Function(Customerslist customers, BuildContext ctx)
        estimatesubmite,
    required TResult Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)
        printbill,
  }) {
    return listing(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Stocklist> list)? listing,
    TResult? Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)?
        removeItem,
    TResult? Function(String cusid)? outstandingCredit,
    TResult? Function(double dicountamt, List<Stocklist> selectedstocklist)?
        adddiscount,
    TResult? Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)?
        submitBill,
    TResult? Function(Customerslist customers, BuildContext ctx)?
        submitretunBill,
    TResult? Function(Customerslist customers, BuildContext ctx)?
        estimatesubmite,
    TResult? Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)?
        printbill,
  }) {
    return listing?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Stocklist> list)? listing,
    TResult Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)?
        removeItem,
    TResult Function(String cusid)? outstandingCredit,
    TResult Function(double dicountamt, List<Stocklist> selectedstocklist)?
        adddiscount,
    TResult Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)?
        submitBill,
    TResult Function(Customerslist customers, BuildContext ctx)?
        submitretunBill,
    TResult Function(Customerslist customers, BuildContext ctx)?
        estimatesubmite,
    TResult Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)?
        printbill,
    required TResult orElse(),
  }) {
    if (listing != null) {
      return listing(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Listing value) listing,
    required TResult Function(RemoveItem value) removeItem,
    required TResult Function(OutstandingCredit value) outstandingCredit,
    required TResult Function(AddDiscount value) adddiscount,
    required TResult Function(SubmitBill value) submitBill,
    required TResult Function(SubmitretunBill value) submitretunBill,
    required TResult Function(Estimatesubmite value) estimatesubmite,
    required TResult Function(Printbill value) printbill,
  }) {
    return listing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Listing value)? listing,
    TResult? Function(RemoveItem value)? removeItem,
    TResult? Function(OutstandingCredit value)? outstandingCredit,
    TResult? Function(AddDiscount value)? adddiscount,
    TResult? Function(SubmitBill value)? submitBill,
    TResult? Function(SubmitretunBill value)? submitretunBill,
    TResult? Function(Estimatesubmite value)? estimatesubmite,
    TResult? Function(Printbill value)? printbill,
  }) {
    return listing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Listing value)? listing,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(OutstandingCredit value)? outstandingCredit,
    TResult Function(AddDiscount value)? adddiscount,
    TResult Function(SubmitBill value)? submitBill,
    TResult Function(SubmitretunBill value)? submitretunBill,
    TResult Function(Estimatesubmite value)? estimatesubmite,
    TResult Function(Printbill value)? printbill,
    required TResult orElse(),
  }) {
    if (listing != null) {
      return listing(this);
    }
    return orElse();
  }
}

abstract class Listing implements SubmitbillEvent {
  const factory Listing({required final List<Stocklist> list}) = _$ListingImpl;

  List<Stocklist> get list;

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListingImplCopyWith<_$ListingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveItemImplCopyWith<$Res> {
  factory _$$RemoveItemImplCopyWith(
          _$RemoveItemImpl value, $Res Function(_$RemoveItemImpl) then) =
      __$$RemoveItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int itemIndex, List<InvoiceData> invoicelist, BuildContext context});
}

/// @nodoc
class __$$RemoveItemImplCopyWithImpl<$Res>
    extends _$SubmitbillEventCopyWithImpl<$Res, _$RemoveItemImpl>
    implements _$$RemoveItemImplCopyWith<$Res> {
  __$$RemoveItemImplCopyWithImpl(
      _$RemoveItemImpl _value, $Res Function(_$RemoveItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemIndex = null,
    Object? invoicelist = null,
    Object? context = null,
  }) {
    return _then(_$RemoveItemImpl(
      itemIndex: null == itemIndex
          ? _value.itemIndex
          : itemIndex // ignore: cast_nullable_to_non_nullable
              as int,
      invoicelist: null == invoicelist
          ? _value._invoicelist
          : invoicelist // ignore: cast_nullable_to_non_nullable
              as List<InvoiceData>,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$RemoveItemImpl implements RemoveItem {
  const _$RemoveItemImpl(
      {required this.itemIndex,
      required final List<InvoiceData> invoicelist,
      required this.context})
      : _invoicelist = invoicelist;

  @override
  final int itemIndex;
  final List<InvoiceData> _invoicelist;
  @override
  List<InvoiceData> get invoicelist {
    if (_invoicelist is EqualUnmodifiableListView) return _invoicelist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_invoicelist);
  }

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SubmitbillEvent.removeItem(itemIndex: $itemIndex, invoicelist: $invoicelist, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveItemImpl &&
            (identical(other.itemIndex, itemIndex) ||
                other.itemIndex == itemIndex) &&
            const DeepCollectionEquality()
                .equals(other._invoicelist, _invoicelist) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemIndex,
      const DeepCollectionEquality().hash(_invoicelist), context);

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveItemImplCopyWith<_$RemoveItemImpl> get copyWith =>
      __$$RemoveItemImplCopyWithImpl<_$RemoveItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Stocklist> list) listing,
    required TResult Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)
        removeItem,
    required TResult Function(String cusid) outstandingCredit,
    required TResult Function(
            double dicountamt, List<Stocklist> selectedstocklist)
        adddiscount,
    required TResult Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)
        submitBill,
    required TResult Function(Customerslist customers, BuildContext ctx)
        submitretunBill,
    required TResult Function(Customerslist customers, BuildContext ctx)
        estimatesubmite,
    required TResult Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)
        printbill,
  }) {
    return removeItem(itemIndex, invoicelist, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Stocklist> list)? listing,
    TResult? Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)?
        removeItem,
    TResult? Function(String cusid)? outstandingCredit,
    TResult? Function(double dicountamt, List<Stocklist> selectedstocklist)?
        adddiscount,
    TResult? Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)?
        submitBill,
    TResult? Function(Customerslist customers, BuildContext ctx)?
        submitretunBill,
    TResult? Function(Customerslist customers, BuildContext ctx)?
        estimatesubmite,
    TResult? Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)?
        printbill,
  }) {
    return removeItem?.call(itemIndex, invoicelist, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Stocklist> list)? listing,
    TResult Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)?
        removeItem,
    TResult Function(String cusid)? outstandingCredit,
    TResult Function(double dicountamt, List<Stocklist> selectedstocklist)?
        adddiscount,
    TResult Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)?
        submitBill,
    TResult Function(Customerslist customers, BuildContext ctx)?
        submitretunBill,
    TResult Function(Customerslist customers, BuildContext ctx)?
        estimatesubmite,
    TResult Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)?
        printbill,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(itemIndex, invoicelist, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Listing value) listing,
    required TResult Function(RemoveItem value) removeItem,
    required TResult Function(OutstandingCredit value) outstandingCredit,
    required TResult Function(AddDiscount value) adddiscount,
    required TResult Function(SubmitBill value) submitBill,
    required TResult Function(SubmitretunBill value) submitretunBill,
    required TResult Function(Estimatesubmite value) estimatesubmite,
    required TResult Function(Printbill value) printbill,
  }) {
    return removeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Listing value)? listing,
    TResult? Function(RemoveItem value)? removeItem,
    TResult? Function(OutstandingCredit value)? outstandingCredit,
    TResult? Function(AddDiscount value)? adddiscount,
    TResult? Function(SubmitBill value)? submitBill,
    TResult? Function(SubmitretunBill value)? submitretunBill,
    TResult? Function(Estimatesubmite value)? estimatesubmite,
    TResult? Function(Printbill value)? printbill,
  }) {
    return removeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Listing value)? listing,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(OutstandingCredit value)? outstandingCredit,
    TResult Function(AddDiscount value)? adddiscount,
    TResult Function(SubmitBill value)? submitBill,
    TResult Function(SubmitretunBill value)? submitretunBill,
    TResult Function(Estimatesubmite value)? estimatesubmite,
    TResult Function(Printbill value)? printbill,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(this);
    }
    return orElse();
  }
}

abstract class RemoveItem implements SubmitbillEvent {
  const factory RemoveItem(
      {required final int itemIndex,
      required final List<InvoiceData> invoicelist,
      required final BuildContext context}) = _$RemoveItemImpl;

  int get itemIndex;
  List<InvoiceData> get invoicelist;
  BuildContext get context;

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveItemImplCopyWith<_$RemoveItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OutstandingCreditImplCopyWith<$Res> {
  factory _$$OutstandingCreditImplCopyWith(_$OutstandingCreditImpl value,
          $Res Function(_$OutstandingCreditImpl) then) =
      __$$OutstandingCreditImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cusid});
}

/// @nodoc
class __$$OutstandingCreditImplCopyWithImpl<$Res>
    extends _$SubmitbillEventCopyWithImpl<$Res, _$OutstandingCreditImpl>
    implements _$$OutstandingCreditImplCopyWith<$Res> {
  __$$OutstandingCreditImplCopyWithImpl(_$OutstandingCreditImpl _value,
      $Res Function(_$OutstandingCreditImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cusid = null,
  }) {
    return _then(_$OutstandingCreditImpl(
      cusid: null == cusid
          ? _value.cusid
          : cusid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OutstandingCreditImpl implements OutstandingCredit {
  const _$OutstandingCreditImpl({required this.cusid});

  @override
  final String cusid;

  @override
  String toString() {
    return 'SubmitbillEvent.outstandingCredit(cusid: $cusid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutstandingCreditImpl &&
            (identical(other.cusid, cusid) || other.cusid == cusid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cusid);

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OutstandingCreditImplCopyWith<_$OutstandingCreditImpl> get copyWith =>
      __$$OutstandingCreditImplCopyWithImpl<_$OutstandingCreditImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Stocklist> list) listing,
    required TResult Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)
        removeItem,
    required TResult Function(String cusid) outstandingCredit,
    required TResult Function(
            double dicountamt, List<Stocklist> selectedstocklist)
        adddiscount,
    required TResult Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)
        submitBill,
    required TResult Function(Customerslist customers, BuildContext ctx)
        submitretunBill,
    required TResult Function(Customerslist customers, BuildContext ctx)
        estimatesubmite,
    required TResult Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)
        printbill,
  }) {
    return outstandingCredit(cusid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Stocklist> list)? listing,
    TResult? Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)?
        removeItem,
    TResult? Function(String cusid)? outstandingCredit,
    TResult? Function(double dicountamt, List<Stocklist> selectedstocklist)?
        adddiscount,
    TResult? Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)?
        submitBill,
    TResult? Function(Customerslist customers, BuildContext ctx)?
        submitretunBill,
    TResult? Function(Customerslist customers, BuildContext ctx)?
        estimatesubmite,
    TResult? Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)?
        printbill,
  }) {
    return outstandingCredit?.call(cusid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Stocklist> list)? listing,
    TResult Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)?
        removeItem,
    TResult Function(String cusid)? outstandingCredit,
    TResult Function(double dicountamt, List<Stocklist> selectedstocklist)?
        adddiscount,
    TResult Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)?
        submitBill,
    TResult Function(Customerslist customers, BuildContext ctx)?
        submitretunBill,
    TResult Function(Customerslist customers, BuildContext ctx)?
        estimatesubmite,
    TResult Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)?
        printbill,
    required TResult orElse(),
  }) {
    if (outstandingCredit != null) {
      return outstandingCredit(cusid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Listing value) listing,
    required TResult Function(RemoveItem value) removeItem,
    required TResult Function(OutstandingCredit value) outstandingCredit,
    required TResult Function(AddDiscount value) adddiscount,
    required TResult Function(SubmitBill value) submitBill,
    required TResult Function(SubmitretunBill value) submitretunBill,
    required TResult Function(Estimatesubmite value) estimatesubmite,
    required TResult Function(Printbill value) printbill,
  }) {
    return outstandingCredit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Listing value)? listing,
    TResult? Function(RemoveItem value)? removeItem,
    TResult? Function(OutstandingCredit value)? outstandingCredit,
    TResult? Function(AddDiscount value)? adddiscount,
    TResult? Function(SubmitBill value)? submitBill,
    TResult? Function(SubmitretunBill value)? submitretunBill,
    TResult? Function(Estimatesubmite value)? estimatesubmite,
    TResult? Function(Printbill value)? printbill,
  }) {
    return outstandingCredit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Listing value)? listing,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(OutstandingCredit value)? outstandingCredit,
    TResult Function(AddDiscount value)? adddiscount,
    TResult Function(SubmitBill value)? submitBill,
    TResult Function(SubmitretunBill value)? submitretunBill,
    TResult Function(Estimatesubmite value)? estimatesubmite,
    TResult Function(Printbill value)? printbill,
    required TResult orElse(),
  }) {
    if (outstandingCredit != null) {
      return outstandingCredit(this);
    }
    return orElse();
  }
}

abstract class OutstandingCredit implements SubmitbillEvent {
  const factory OutstandingCredit({required final String cusid}) =
      _$OutstandingCreditImpl;

  String get cusid;

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OutstandingCreditImplCopyWith<_$OutstandingCreditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddDiscountImplCopyWith<$Res> {
  factory _$$AddDiscountImplCopyWith(
          _$AddDiscountImpl value, $Res Function(_$AddDiscountImpl) then) =
      __$$AddDiscountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double dicountamt, List<Stocklist> selectedstocklist});
}

/// @nodoc
class __$$AddDiscountImplCopyWithImpl<$Res>
    extends _$SubmitbillEventCopyWithImpl<$Res, _$AddDiscountImpl>
    implements _$$AddDiscountImplCopyWith<$Res> {
  __$$AddDiscountImplCopyWithImpl(
      _$AddDiscountImpl _value, $Res Function(_$AddDiscountImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dicountamt = null,
    Object? selectedstocklist = null,
  }) {
    return _then(_$AddDiscountImpl(
      dicountamt: null == dicountamt
          ? _value.dicountamt
          : dicountamt // ignore: cast_nullable_to_non_nullable
              as double,
      selectedstocklist: null == selectedstocklist
          ? _value._selectedstocklist
          : selectedstocklist // ignore: cast_nullable_to_non_nullable
              as List<Stocklist>,
    ));
  }
}

/// @nodoc

class _$AddDiscountImpl implements AddDiscount {
  const _$AddDiscountImpl(
      {required this.dicountamt,
      required final List<Stocklist> selectedstocklist})
      : _selectedstocklist = selectedstocklist;

  @override
  final double dicountamt;
  final List<Stocklist> _selectedstocklist;
  @override
  List<Stocklist> get selectedstocklist {
    if (_selectedstocklist is EqualUnmodifiableListView)
      return _selectedstocklist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedstocklist);
  }

  @override
  String toString() {
    return 'SubmitbillEvent.adddiscount(dicountamt: $dicountamt, selectedstocklist: $selectedstocklist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDiscountImpl &&
            (identical(other.dicountamt, dicountamt) ||
                other.dicountamt == dicountamt) &&
            const DeepCollectionEquality()
                .equals(other._selectedstocklist, _selectedstocklist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dicountamt,
      const DeepCollectionEquality().hash(_selectedstocklist));

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDiscountImplCopyWith<_$AddDiscountImpl> get copyWith =>
      __$$AddDiscountImplCopyWithImpl<_$AddDiscountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Stocklist> list) listing,
    required TResult Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)
        removeItem,
    required TResult Function(String cusid) outstandingCredit,
    required TResult Function(
            double dicountamt, List<Stocklist> selectedstocklist)
        adddiscount,
    required TResult Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)
        submitBill,
    required TResult Function(Customerslist customers, BuildContext ctx)
        submitretunBill,
    required TResult Function(Customerslist customers, BuildContext ctx)
        estimatesubmite,
    required TResult Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)
        printbill,
  }) {
    return adddiscount(dicountamt, selectedstocklist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Stocklist> list)? listing,
    TResult? Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)?
        removeItem,
    TResult? Function(String cusid)? outstandingCredit,
    TResult? Function(double dicountamt, List<Stocklist> selectedstocklist)?
        adddiscount,
    TResult? Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)?
        submitBill,
    TResult? Function(Customerslist customers, BuildContext ctx)?
        submitretunBill,
    TResult? Function(Customerslist customers, BuildContext ctx)?
        estimatesubmite,
    TResult? Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)?
        printbill,
  }) {
    return adddiscount?.call(dicountamt, selectedstocklist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Stocklist> list)? listing,
    TResult Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)?
        removeItem,
    TResult Function(String cusid)? outstandingCredit,
    TResult Function(double dicountamt, List<Stocklist> selectedstocklist)?
        adddiscount,
    TResult Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)?
        submitBill,
    TResult Function(Customerslist customers, BuildContext ctx)?
        submitretunBill,
    TResult Function(Customerslist customers, BuildContext ctx)?
        estimatesubmite,
    TResult Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)?
        printbill,
    required TResult orElse(),
  }) {
    if (adddiscount != null) {
      return adddiscount(dicountamt, selectedstocklist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Listing value) listing,
    required TResult Function(RemoveItem value) removeItem,
    required TResult Function(OutstandingCredit value) outstandingCredit,
    required TResult Function(AddDiscount value) adddiscount,
    required TResult Function(SubmitBill value) submitBill,
    required TResult Function(SubmitretunBill value) submitretunBill,
    required TResult Function(Estimatesubmite value) estimatesubmite,
    required TResult Function(Printbill value) printbill,
  }) {
    return adddiscount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Listing value)? listing,
    TResult? Function(RemoveItem value)? removeItem,
    TResult? Function(OutstandingCredit value)? outstandingCredit,
    TResult? Function(AddDiscount value)? adddiscount,
    TResult? Function(SubmitBill value)? submitBill,
    TResult? Function(SubmitretunBill value)? submitretunBill,
    TResult? Function(Estimatesubmite value)? estimatesubmite,
    TResult? Function(Printbill value)? printbill,
  }) {
    return adddiscount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Listing value)? listing,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(OutstandingCredit value)? outstandingCredit,
    TResult Function(AddDiscount value)? adddiscount,
    TResult Function(SubmitBill value)? submitBill,
    TResult Function(SubmitretunBill value)? submitretunBill,
    TResult Function(Estimatesubmite value)? estimatesubmite,
    TResult Function(Printbill value)? printbill,
    required TResult orElse(),
  }) {
    if (adddiscount != null) {
      return adddiscount(this);
    }
    return orElse();
  }
}

abstract class AddDiscount implements SubmitbillEvent {
  const factory AddDiscount(
      {required final double dicountamt,
      required final List<Stocklist> selectedstocklist}) = _$AddDiscountImpl;

  double get dicountamt;
  List<Stocklist> get selectedstocklist;

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddDiscountImplCopyWith<_$AddDiscountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitBillImplCopyWith<$Res> {
  factory _$$SubmitBillImplCopyWith(
          _$SubmitBillImpl value, $Res Function(_$SubmitBillImpl) then) =
      __$$SubmitBillImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Customerslist customers,
      double paymentamt,
      String paymentType,
      BuildContext ctx});
}

/// @nodoc
class __$$SubmitBillImplCopyWithImpl<$Res>
    extends _$SubmitbillEventCopyWithImpl<$Res, _$SubmitBillImpl>
    implements _$$SubmitBillImplCopyWith<$Res> {
  __$$SubmitBillImplCopyWithImpl(
      _$SubmitBillImpl _value, $Res Function(_$SubmitBillImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
    Object? paymentamt = null,
    Object? paymentType = null,
    Object? ctx = null,
  }) {
    return _then(_$SubmitBillImpl(
      customers: null == customers
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as Customerslist,
      paymentamt: null == paymentamt
          ? _value.paymentamt
          : paymentamt // ignore: cast_nullable_to_non_nullable
              as double,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      ctx: null == ctx
          ? _value.ctx
          : ctx // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$SubmitBillImpl implements SubmitBill {
  const _$SubmitBillImpl(
      {required this.customers,
      required this.paymentamt,
      required this.paymentType,
      required this.ctx});

  @override
  final Customerslist customers;
  @override
  final double paymentamt;
  @override
  final String paymentType;
  @override
  final BuildContext ctx;

  @override
  String toString() {
    return 'SubmitbillEvent.submitBill(customers: $customers, paymentamt: $paymentamt, paymentType: $paymentType, ctx: $ctx)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitBillImpl &&
            (identical(other.customers, customers) ||
                other.customers == customers) &&
            (identical(other.paymentamt, paymentamt) ||
                other.paymentamt == paymentamt) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.ctx, ctx) || other.ctx == ctx));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, customers, paymentamt, paymentType, ctx);

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitBillImplCopyWith<_$SubmitBillImpl> get copyWith =>
      __$$SubmitBillImplCopyWithImpl<_$SubmitBillImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Stocklist> list) listing,
    required TResult Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)
        removeItem,
    required TResult Function(String cusid) outstandingCredit,
    required TResult Function(
            double dicountamt, List<Stocklist> selectedstocklist)
        adddiscount,
    required TResult Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)
        submitBill,
    required TResult Function(Customerslist customers, BuildContext ctx)
        submitretunBill,
    required TResult Function(Customerslist customers, BuildContext ctx)
        estimatesubmite,
    required TResult Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)
        printbill,
  }) {
    return submitBill(customers, paymentamt, paymentType, ctx);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Stocklist> list)? listing,
    TResult? Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)?
        removeItem,
    TResult? Function(String cusid)? outstandingCredit,
    TResult? Function(double dicountamt, List<Stocklist> selectedstocklist)?
        adddiscount,
    TResult? Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)?
        submitBill,
    TResult? Function(Customerslist customers, BuildContext ctx)?
        submitretunBill,
    TResult? Function(Customerslist customers, BuildContext ctx)?
        estimatesubmite,
    TResult? Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)?
        printbill,
  }) {
    return submitBill?.call(customers, paymentamt, paymentType, ctx);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Stocklist> list)? listing,
    TResult Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)?
        removeItem,
    TResult Function(String cusid)? outstandingCredit,
    TResult Function(double dicountamt, List<Stocklist> selectedstocklist)?
        adddiscount,
    TResult Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)?
        submitBill,
    TResult Function(Customerslist customers, BuildContext ctx)?
        submitretunBill,
    TResult Function(Customerslist customers, BuildContext ctx)?
        estimatesubmite,
    TResult Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)?
        printbill,
    required TResult orElse(),
  }) {
    if (submitBill != null) {
      return submitBill(customers, paymentamt, paymentType, ctx);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Listing value) listing,
    required TResult Function(RemoveItem value) removeItem,
    required TResult Function(OutstandingCredit value) outstandingCredit,
    required TResult Function(AddDiscount value) adddiscount,
    required TResult Function(SubmitBill value) submitBill,
    required TResult Function(SubmitretunBill value) submitretunBill,
    required TResult Function(Estimatesubmite value) estimatesubmite,
    required TResult Function(Printbill value) printbill,
  }) {
    return submitBill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Listing value)? listing,
    TResult? Function(RemoveItem value)? removeItem,
    TResult? Function(OutstandingCredit value)? outstandingCredit,
    TResult? Function(AddDiscount value)? adddiscount,
    TResult? Function(SubmitBill value)? submitBill,
    TResult? Function(SubmitretunBill value)? submitretunBill,
    TResult? Function(Estimatesubmite value)? estimatesubmite,
    TResult? Function(Printbill value)? printbill,
  }) {
    return submitBill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Listing value)? listing,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(OutstandingCredit value)? outstandingCredit,
    TResult Function(AddDiscount value)? adddiscount,
    TResult Function(SubmitBill value)? submitBill,
    TResult Function(SubmitretunBill value)? submitretunBill,
    TResult Function(Estimatesubmite value)? estimatesubmite,
    TResult Function(Printbill value)? printbill,
    required TResult orElse(),
  }) {
    if (submitBill != null) {
      return submitBill(this);
    }
    return orElse();
  }
}

abstract class SubmitBill implements SubmitbillEvent {
  const factory SubmitBill(
      {required final Customerslist customers,
      required final double paymentamt,
      required final String paymentType,
      required final BuildContext ctx}) = _$SubmitBillImpl;

  Customerslist get customers;
  double get paymentamt;
  String get paymentType;
  BuildContext get ctx;

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitBillImplCopyWith<_$SubmitBillImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitretunBillImplCopyWith<$Res> {
  factory _$$SubmitretunBillImplCopyWith(_$SubmitretunBillImpl value,
          $Res Function(_$SubmitretunBillImpl) then) =
      __$$SubmitretunBillImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Customerslist customers, BuildContext ctx});
}

/// @nodoc
class __$$SubmitretunBillImplCopyWithImpl<$Res>
    extends _$SubmitbillEventCopyWithImpl<$Res, _$SubmitretunBillImpl>
    implements _$$SubmitretunBillImplCopyWith<$Res> {
  __$$SubmitretunBillImplCopyWithImpl(
      _$SubmitretunBillImpl _value, $Res Function(_$SubmitretunBillImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
    Object? ctx = null,
  }) {
    return _then(_$SubmitretunBillImpl(
      customers: null == customers
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as Customerslist,
      ctx: null == ctx
          ? _value.ctx
          : ctx // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$SubmitretunBillImpl implements SubmitretunBill {
  const _$SubmitretunBillImpl({required this.customers, required this.ctx});

  @override
  final Customerslist customers;
  @override
  final BuildContext ctx;

  @override
  String toString() {
    return 'SubmitbillEvent.submitretunBill(customers: $customers, ctx: $ctx)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitretunBillImpl &&
            (identical(other.customers, customers) ||
                other.customers == customers) &&
            (identical(other.ctx, ctx) || other.ctx == ctx));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customers, ctx);

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitretunBillImplCopyWith<_$SubmitretunBillImpl> get copyWith =>
      __$$SubmitretunBillImplCopyWithImpl<_$SubmitretunBillImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Stocklist> list) listing,
    required TResult Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)
        removeItem,
    required TResult Function(String cusid) outstandingCredit,
    required TResult Function(
            double dicountamt, List<Stocklist> selectedstocklist)
        adddiscount,
    required TResult Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)
        submitBill,
    required TResult Function(Customerslist customers, BuildContext ctx)
        submitretunBill,
    required TResult Function(Customerslist customers, BuildContext ctx)
        estimatesubmite,
    required TResult Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)
        printbill,
  }) {
    return submitretunBill(customers, ctx);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Stocklist> list)? listing,
    TResult? Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)?
        removeItem,
    TResult? Function(String cusid)? outstandingCredit,
    TResult? Function(double dicountamt, List<Stocklist> selectedstocklist)?
        adddiscount,
    TResult? Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)?
        submitBill,
    TResult? Function(Customerslist customers, BuildContext ctx)?
        submitretunBill,
    TResult? Function(Customerslist customers, BuildContext ctx)?
        estimatesubmite,
    TResult? Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)?
        printbill,
  }) {
    return submitretunBill?.call(customers, ctx);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Stocklist> list)? listing,
    TResult Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)?
        removeItem,
    TResult Function(String cusid)? outstandingCredit,
    TResult Function(double dicountamt, List<Stocklist> selectedstocklist)?
        adddiscount,
    TResult Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)?
        submitBill,
    TResult Function(Customerslist customers, BuildContext ctx)?
        submitretunBill,
    TResult Function(Customerslist customers, BuildContext ctx)?
        estimatesubmite,
    TResult Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)?
        printbill,
    required TResult orElse(),
  }) {
    if (submitretunBill != null) {
      return submitretunBill(customers, ctx);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Listing value) listing,
    required TResult Function(RemoveItem value) removeItem,
    required TResult Function(OutstandingCredit value) outstandingCredit,
    required TResult Function(AddDiscount value) adddiscount,
    required TResult Function(SubmitBill value) submitBill,
    required TResult Function(SubmitretunBill value) submitretunBill,
    required TResult Function(Estimatesubmite value) estimatesubmite,
    required TResult Function(Printbill value) printbill,
  }) {
    return submitretunBill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Listing value)? listing,
    TResult? Function(RemoveItem value)? removeItem,
    TResult? Function(OutstandingCredit value)? outstandingCredit,
    TResult? Function(AddDiscount value)? adddiscount,
    TResult? Function(SubmitBill value)? submitBill,
    TResult? Function(SubmitretunBill value)? submitretunBill,
    TResult? Function(Estimatesubmite value)? estimatesubmite,
    TResult? Function(Printbill value)? printbill,
  }) {
    return submitretunBill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Listing value)? listing,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(OutstandingCredit value)? outstandingCredit,
    TResult Function(AddDiscount value)? adddiscount,
    TResult Function(SubmitBill value)? submitBill,
    TResult Function(SubmitretunBill value)? submitretunBill,
    TResult Function(Estimatesubmite value)? estimatesubmite,
    TResult Function(Printbill value)? printbill,
    required TResult orElse(),
  }) {
    if (submitretunBill != null) {
      return submitretunBill(this);
    }
    return orElse();
  }
}

abstract class SubmitretunBill implements SubmitbillEvent {
  const factory SubmitretunBill(
      {required final Customerslist customers,
      required final BuildContext ctx}) = _$SubmitretunBillImpl;

  Customerslist get customers;
  BuildContext get ctx;

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitretunBillImplCopyWith<_$SubmitretunBillImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EstimatesubmiteImplCopyWith<$Res> {
  factory _$$EstimatesubmiteImplCopyWith(_$EstimatesubmiteImpl value,
          $Res Function(_$EstimatesubmiteImpl) then) =
      __$$EstimatesubmiteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Customerslist customers, BuildContext ctx});
}

/// @nodoc
class __$$EstimatesubmiteImplCopyWithImpl<$Res>
    extends _$SubmitbillEventCopyWithImpl<$Res, _$EstimatesubmiteImpl>
    implements _$$EstimatesubmiteImplCopyWith<$Res> {
  __$$EstimatesubmiteImplCopyWithImpl(
      _$EstimatesubmiteImpl _value, $Res Function(_$EstimatesubmiteImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
    Object? ctx = null,
  }) {
    return _then(_$EstimatesubmiteImpl(
      customers: null == customers
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as Customerslist,
      ctx: null == ctx
          ? _value.ctx
          : ctx // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$EstimatesubmiteImpl implements Estimatesubmite {
  const _$EstimatesubmiteImpl({required this.customers, required this.ctx});

  @override
  final Customerslist customers;
  @override
  final BuildContext ctx;

  @override
  String toString() {
    return 'SubmitbillEvent.estimatesubmite(customers: $customers, ctx: $ctx)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EstimatesubmiteImpl &&
            (identical(other.customers, customers) ||
                other.customers == customers) &&
            (identical(other.ctx, ctx) || other.ctx == ctx));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customers, ctx);

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EstimatesubmiteImplCopyWith<_$EstimatesubmiteImpl> get copyWith =>
      __$$EstimatesubmiteImplCopyWithImpl<_$EstimatesubmiteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Stocklist> list) listing,
    required TResult Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)
        removeItem,
    required TResult Function(String cusid) outstandingCredit,
    required TResult Function(
            double dicountamt, List<Stocklist> selectedstocklist)
        adddiscount,
    required TResult Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)
        submitBill,
    required TResult Function(Customerslist customers, BuildContext ctx)
        submitretunBill,
    required TResult Function(Customerslist customers, BuildContext ctx)
        estimatesubmite,
    required TResult Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)
        printbill,
  }) {
    return estimatesubmite(customers, ctx);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Stocklist> list)? listing,
    TResult? Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)?
        removeItem,
    TResult? Function(String cusid)? outstandingCredit,
    TResult? Function(double dicountamt, List<Stocklist> selectedstocklist)?
        adddiscount,
    TResult? Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)?
        submitBill,
    TResult? Function(Customerslist customers, BuildContext ctx)?
        submitretunBill,
    TResult? Function(Customerslist customers, BuildContext ctx)?
        estimatesubmite,
    TResult? Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)?
        printbill,
  }) {
    return estimatesubmite?.call(customers, ctx);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Stocklist> list)? listing,
    TResult Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)?
        removeItem,
    TResult Function(String cusid)? outstandingCredit,
    TResult Function(double dicountamt, List<Stocklist> selectedstocklist)?
        adddiscount,
    TResult Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)?
        submitBill,
    TResult Function(Customerslist customers, BuildContext ctx)?
        submitretunBill,
    TResult Function(Customerslist customers, BuildContext ctx)?
        estimatesubmite,
    TResult Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)?
        printbill,
    required TResult orElse(),
  }) {
    if (estimatesubmite != null) {
      return estimatesubmite(customers, ctx);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Listing value) listing,
    required TResult Function(RemoveItem value) removeItem,
    required TResult Function(OutstandingCredit value) outstandingCredit,
    required TResult Function(AddDiscount value) adddiscount,
    required TResult Function(SubmitBill value) submitBill,
    required TResult Function(SubmitretunBill value) submitretunBill,
    required TResult Function(Estimatesubmite value) estimatesubmite,
    required TResult Function(Printbill value) printbill,
  }) {
    return estimatesubmite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Listing value)? listing,
    TResult? Function(RemoveItem value)? removeItem,
    TResult? Function(OutstandingCredit value)? outstandingCredit,
    TResult? Function(AddDiscount value)? adddiscount,
    TResult? Function(SubmitBill value)? submitBill,
    TResult? Function(SubmitretunBill value)? submitretunBill,
    TResult? Function(Estimatesubmite value)? estimatesubmite,
    TResult? Function(Printbill value)? printbill,
  }) {
    return estimatesubmite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Listing value)? listing,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(OutstandingCredit value)? outstandingCredit,
    TResult Function(AddDiscount value)? adddiscount,
    TResult Function(SubmitBill value)? submitBill,
    TResult Function(SubmitretunBill value)? submitretunBill,
    TResult Function(Estimatesubmite value)? estimatesubmite,
    TResult Function(Printbill value)? printbill,
    required TResult orElse(),
  }) {
    if (estimatesubmite != null) {
      return estimatesubmite(this);
    }
    return orElse();
  }
}

abstract class Estimatesubmite implements SubmitbillEvent {
  const factory Estimatesubmite(
      {required final Customerslist customers,
      required final BuildContext ctx}) = _$EstimatesubmiteImpl;

  Customerslist get customers;
  BuildContext get ctx;

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EstimatesubmiteImplCopyWith<_$EstimatesubmiteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PrintbillImplCopyWith<$Res> {
  factory _$$PrintbillImplCopyWith(
          _$PrintbillImpl value, $Res Function(_$PrintbillImpl) then) =
      __$$PrintbillImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Customerslist customers, String paidAmt, int from, bool isSunmi});
}

/// @nodoc
class __$$PrintbillImplCopyWithImpl<$Res>
    extends _$SubmitbillEventCopyWithImpl<$Res, _$PrintbillImpl>
    implements _$$PrintbillImplCopyWith<$Res> {
  __$$PrintbillImplCopyWithImpl(
      _$PrintbillImpl _value, $Res Function(_$PrintbillImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
    Object? paidAmt = null,
    Object? from = null,
    Object? isSunmi = null,
  }) {
    return _then(_$PrintbillImpl(
      customers: null == customers
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as Customerslist,
      paidAmt: null == paidAmt
          ? _value.paidAmt
          : paidAmt // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      isSunmi: null == isSunmi
          ? _value.isSunmi
          : isSunmi // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PrintbillImpl implements Printbill {
  const _$PrintbillImpl(
      {required this.customers,
      required this.paidAmt,
      required this.from,
      required this.isSunmi});

  @override
  final Customerslist customers;
  @override
  final String paidAmt;
  @override
  final int from;
  @override
  final bool isSunmi;

  @override
  String toString() {
    return 'SubmitbillEvent.printbill(customers: $customers, paidAmt: $paidAmt, from: $from, isSunmi: $isSunmi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrintbillImpl &&
            (identical(other.customers, customers) ||
                other.customers == customers) &&
            (identical(other.paidAmt, paidAmt) || other.paidAmt == paidAmt) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.isSunmi, isSunmi) || other.isSunmi == isSunmi));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, customers, paidAmt, from, isSunmi);

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrintbillImplCopyWith<_$PrintbillImpl> get copyWith =>
      __$$PrintbillImplCopyWithImpl<_$PrintbillImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Stocklist> list) listing,
    required TResult Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)
        removeItem,
    required TResult Function(String cusid) outstandingCredit,
    required TResult Function(
            double dicountamt, List<Stocklist> selectedstocklist)
        adddiscount,
    required TResult Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)
        submitBill,
    required TResult Function(Customerslist customers, BuildContext ctx)
        submitretunBill,
    required TResult Function(Customerslist customers, BuildContext ctx)
        estimatesubmite,
    required TResult Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)
        printbill,
  }) {
    return printbill(customers, paidAmt, from, isSunmi);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Stocklist> list)? listing,
    TResult? Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)?
        removeItem,
    TResult? Function(String cusid)? outstandingCredit,
    TResult? Function(double dicountamt, List<Stocklist> selectedstocklist)?
        adddiscount,
    TResult? Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)?
        submitBill,
    TResult? Function(Customerslist customers, BuildContext ctx)?
        submitretunBill,
    TResult? Function(Customerslist customers, BuildContext ctx)?
        estimatesubmite,
    TResult? Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)?
        printbill,
  }) {
    return printbill?.call(customers, paidAmt, from, isSunmi);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Stocklist> list)? listing,
    TResult Function(
            int itemIndex, List<InvoiceData> invoicelist, BuildContext context)?
        removeItem,
    TResult Function(String cusid)? outstandingCredit,
    TResult Function(double dicountamt, List<Stocklist> selectedstocklist)?
        adddiscount,
    TResult Function(Customerslist customers, double paymentamt,
            String paymentType, BuildContext ctx)?
        submitBill,
    TResult Function(Customerslist customers, BuildContext ctx)?
        submitretunBill,
    TResult Function(Customerslist customers, BuildContext ctx)?
        estimatesubmite,
    TResult Function(
            Customerslist customers, String paidAmt, int from, bool isSunmi)?
        printbill,
    required TResult orElse(),
  }) {
    if (printbill != null) {
      return printbill(customers, paidAmt, from, isSunmi);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Listing value) listing,
    required TResult Function(RemoveItem value) removeItem,
    required TResult Function(OutstandingCredit value) outstandingCredit,
    required TResult Function(AddDiscount value) adddiscount,
    required TResult Function(SubmitBill value) submitBill,
    required TResult Function(SubmitretunBill value) submitretunBill,
    required TResult Function(Estimatesubmite value) estimatesubmite,
    required TResult Function(Printbill value) printbill,
  }) {
    return printbill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Listing value)? listing,
    TResult? Function(RemoveItem value)? removeItem,
    TResult? Function(OutstandingCredit value)? outstandingCredit,
    TResult? Function(AddDiscount value)? adddiscount,
    TResult? Function(SubmitBill value)? submitBill,
    TResult? Function(SubmitretunBill value)? submitretunBill,
    TResult? Function(Estimatesubmite value)? estimatesubmite,
    TResult? Function(Printbill value)? printbill,
  }) {
    return printbill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Listing value)? listing,
    TResult Function(RemoveItem value)? removeItem,
    TResult Function(OutstandingCredit value)? outstandingCredit,
    TResult Function(AddDiscount value)? adddiscount,
    TResult Function(SubmitBill value)? submitBill,
    TResult Function(SubmitretunBill value)? submitretunBill,
    TResult Function(Estimatesubmite value)? estimatesubmite,
    TResult Function(Printbill value)? printbill,
    required TResult orElse(),
  }) {
    if (printbill != null) {
      return printbill(this);
    }
    return orElse();
  }
}

abstract class Printbill implements SubmitbillEvent {
  const factory Printbill(
      {required final Customerslist customers,
      required final String paidAmt,
      required final int from,
      required final bool isSunmi}) = _$PrintbillImpl;

  Customerslist get customers;
  String get paidAmt;
  int get from;
  bool get isSunmi;

  /// Create a copy of SubmitbillEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrintbillImplCopyWith<_$PrintbillImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitbillState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<Stocklist> get list => throw _privateConstructorUsedError;
  double get subtotal => throw _privateConstructorUsedError;
  double get taxinc => throw _privateConstructorUsedError;
  double get taxprs => throw _privateConstructorUsedError;
  double get cessprs => throw _privateConstructorUsedError;
  double get cessamt => throw _privateConstructorUsedError;
  double get invoiceTotal => throw _privateConstructorUsedError;
  double get grossTotal => throw _privateConstructorUsedError;
  bool get billsubmission => throw _privateConstructorUsedError;
  bool get saleretunbill => throw _privateConstructorUsedError;
  bool get printbill => throw _privateConstructorUsedError;
  bool get trafic => throw _privateConstructorUsedError;
  double get netamount => throw _privateConstructorUsedError;
  double get discountprsnd => throw _privateConstructorUsedError;
  double get totladiscamt => throw _privateConstructorUsedError;
  double get gstAmounttotal => throw _privateConstructorUsedError;
  double get gstprsnttotal => throw _privateConstructorUsedError;
  String get outstaingtype => throw _privateConstructorUsedError;
  Customerslist? get selectedcustomer => throw _privateConstructorUsedError;
  List<InvoiceData> get previewlist => throw _privateConstructorUsedError;
  double get outstandingCreditamt => throw _privateConstructorUsedError;

  /// Create a copy of SubmitbillState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitbillStateCopyWith<SubmitbillState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitbillStateCopyWith<$Res> {
  factory $SubmitbillStateCopyWith(
          SubmitbillState value, $Res Function(SubmitbillState) then) =
      _$SubmitbillStateCopyWithImpl<$Res, SubmitbillState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<Stocklist> list,
      double subtotal,
      double taxinc,
      double taxprs,
      double cessprs,
      double cessamt,
      double invoiceTotal,
      double grossTotal,
      bool billsubmission,
      bool saleretunbill,
      bool printbill,
      bool trafic,
      double netamount,
      double discountprsnd,
      double totladiscamt,
      double gstAmounttotal,
      double gstprsnttotal,
      String outstaingtype,
      Customerslist? selectedcustomer,
      List<InvoiceData> previewlist,
      double outstandingCreditamt});
}

/// @nodoc
class _$SubmitbillStateCopyWithImpl<$Res, $Val extends SubmitbillState>
    implements $SubmitbillStateCopyWith<$Res> {
  _$SubmitbillStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitbillState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? list = null,
    Object? subtotal = null,
    Object? taxinc = null,
    Object? taxprs = null,
    Object? cessprs = null,
    Object? cessamt = null,
    Object? invoiceTotal = null,
    Object? grossTotal = null,
    Object? billsubmission = null,
    Object? saleretunbill = null,
    Object? printbill = null,
    Object? trafic = null,
    Object? netamount = null,
    Object? discountprsnd = null,
    Object? totladiscamt = null,
    Object? gstAmounttotal = null,
    Object? gstprsnttotal = null,
    Object? outstaingtype = null,
    Object? selectedcustomer = freezed,
    Object? previewlist = null,
    Object? outstandingCreditamt = null,
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
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Stocklist>,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      taxinc: null == taxinc
          ? _value.taxinc
          : taxinc // ignore: cast_nullable_to_non_nullable
              as double,
      taxprs: null == taxprs
          ? _value.taxprs
          : taxprs // ignore: cast_nullable_to_non_nullable
              as double,
      cessprs: null == cessprs
          ? _value.cessprs
          : cessprs // ignore: cast_nullable_to_non_nullable
              as double,
      cessamt: null == cessamt
          ? _value.cessamt
          : cessamt // ignore: cast_nullable_to_non_nullable
              as double,
      invoiceTotal: null == invoiceTotal
          ? _value.invoiceTotal
          : invoiceTotal // ignore: cast_nullable_to_non_nullable
              as double,
      grossTotal: null == grossTotal
          ? _value.grossTotal
          : grossTotal // ignore: cast_nullable_to_non_nullable
              as double,
      billsubmission: null == billsubmission
          ? _value.billsubmission
          : billsubmission // ignore: cast_nullable_to_non_nullable
              as bool,
      saleretunbill: null == saleretunbill
          ? _value.saleretunbill
          : saleretunbill // ignore: cast_nullable_to_non_nullable
              as bool,
      printbill: null == printbill
          ? _value.printbill
          : printbill // ignore: cast_nullable_to_non_nullable
              as bool,
      trafic: null == trafic
          ? _value.trafic
          : trafic // ignore: cast_nullable_to_non_nullable
              as bool,
      netamount: null == netamount
          ? _value.netamount
          : netamount // ignore: cast_nullable_to_non_nullable
              as double,
      discountprsnd: null == discountprsnd
          ? _value.discountprsnd
          : discountprsnd // ignore: cast_nullable_to_non_nullable
              as double,
      totladiscamt: null == totladiscamt
          ? _value.totladiscamt
          : totladiscamt // ignore: cast_nullable_to_non_nullable
              as double,
      gstAmounttotal: null == gstAmounttotal
          ? _value.gstAmounttotal
          : gstAmounttotal // ignore: cast_nullable_to_non_nullable
              as double,
      gstprsnttotal: null == gstprsnttotal
          ? _value.gstprsnttotal
          : gstprsnttotal // ignore: cast_nullable_to_non_nullable
              as double,
      outstaingtype: null == outstaingtype
          ? _value.outstaingtype
          : outstaingtype // ignore: cast_nullable_to_non_nullable
              as String,
      selectedcustomer: freezed == selectedcustomer
          ? _value.selectedcustomer
          : selectedcustomer // ignore: cast_nullable_to_non_nullable
              as Customerslist?,
      previewlist: null == previewlist
          ? _value.previewlist
          : previewlist // ignore: cast_nullable_to_non_nullable
              as List<InvoiceData>,
      outstandingCreditamt: null == outstandingCreditamt
          ? _value.outstandingCreditamt
          : outstandingCreditamt // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmitbillStateImplCopyWith<$Res>
    implements $SubmitbillStateCopyWith<$Res> {
  factory _$$SubmitbillStateImplCopyWith(_$SubmitbillStateImpl value,
          $Res Function(_$SubmitbillStateImpl) then) =
      __$$SubmitbillStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<Stocklist> list,
      double subtotal,
      double taxinc,
      double taxprs,
      double cessprs,
      double cessamt,
      double invoiceTotal,
      double grossTotal,
      bool billsubmission,
      bool saleretunbill,
      bool printbill,
      bool trafic,
      double netamount,
      double discountprsnd,
      double totladiscamt,
      double gstAmounttotal,
      double gstprsnttotal,
      String outstaingtype,
      Customerslist? selectedcustomer,
      List<InvoiceData> previewlist,
      double outstandingCreditamt});
}

/// @nodoc
class __$$SubmitbillStateImplCopyWithImpl<$Res>
    extends _$SubmitbillStateCopyWithImpl<$Res, _$SubmitbillStateImpl>
    implements _$$SubmitbillStateImplCopyWith<$Res> {
  __$$SubmitbillStateImplCopyWithImpl(
      _$SubmitbillStateImpl _value, $Res Function(_$SubmitbillStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubmitbillState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? list = null,
    Object? subtotal = null,
    Object? taxinc = null,
    Object? taxprs = null,
    Object? cessprs = null,
    Object? cessamt = null,
    Object? invoiceTotal = null,
    Object? grossTotal = null,
    Object? billsubmission = null,
    Object? saleretunbill = null,
    Object? printbill = null,
    Object? trafic = null,
    Object? netamount = null,
    Object? discountprsnd = null,
    Object? totladiscamt = null,
    Object? gstAmounttotal = null,
    Object? gstprsnttotal = null,
    Object? outstaingtype = null,
    Object? selectedcustomer = freezed,
    Object? previewlist = null,
    Object? outstandingCreditamt = null,
  }) {
    return _then(_$SubmitbillStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Stocklist>,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      taxinc: null == taxinc
          ? _value.taxinc
          : taxinc // ignore: cast_nullable_to_non_nullable
              as double,
      taxprs: null == taxprs
          ? _value.taxprs
          : taxprs // ignore: cast_nullable_to_non_nullable
              as double,
      cessprs: null == cessprs
          ? _value.cessprs
          : cessprs // ignore: cast_nullable_to_non_nullable
              as double,
      cessamt: null == cessamt
          ? _value.cessamt
          : cessamt // ignore: cast_nullable_to_non_nullable
              as double,
      invoiceTotal: null == invoiceTotal
          ? _value.invoiceTotal
          : invoiceTotal // ignore: cast_nullable_to_non_nullable
              as double,
      grossTotal: null == grossTotal
          ? _value.grossTotal
          : grossTotal // ignore: cast_nullable_to_non_nullable
              as double,
      billsubmission: null == billsubmission
          ? _value.billsubmission
          : billsubmission // ignore: cast_nullable_to_non_nullable
              as bool,
      saleretunbill: null == saleretunbill
          ? _value.saleretunbill
          : saleretunbill // ignore: cast_nullable_to_non_nullable
              as bool,
      printbill: null == printbill
          ? _value.printbill
          : printbill // ignore: cast_nullable_to_non_nullable
              as bool,
      trafic: null == trafic
          ? _value.trafic
          : trafic // ignore: cast_nullable_to_non_nullable
              as bool,
      netamount: null == netamount
          ? _value.netamount
          : netamount // ignore: cast_nullable_to_non_nullable
              as double,
      discountprsnd: null == discountprsnd
          ? _value.discountprsnd
          : discountprsnd // ignore: cast_nullable_to_non_nullable
              as double,
      totladiscamt: null == totladiscamt
          ? _value.totladiscamt
          : totladiscamt // ignore: cast_nullable_to_non_nullable
              as double,
      gstAmounttotal: null == gstAmounttotal
          ? _value.gstAmounttotal
          : gstAmounttotal // ignore: cast_nullable_to_non_nullable
              as double,
      gstprsnttotal: null == gstprsnttotal
          ? _value.gstprsnttotal
          : gstprsnttotal // ignore: cast_nullable_to_non_nullable
              as double,
      outstaingtype: null == outstaingtype
          ? _value.outstaingtype
          : outstaingtype // ignore: cast_nullable_to_non_nullable
              as String,
      selectedcustomer: freezed == selectedcustomer
          ? _value.selectedcustomer
          : selectedcustomer // ignore: cast_nullable_to_non_nullable
              as Customerslist?,
      previewlist: null == previewlist
          ? _value._previewlist
          : previewlist // ignore: cast_nullable_to_non_nullable
              as List<InvoiceData>,
      outstandingCreditamt: null == outstandingCreditamt
          ? _value.outstandingCreditamt
          : outstandingCreditamt // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SubmitbillStateImpl implements _SubmitbillState {
  _$SubmitbillStateImpl(
      {required this.isLoading,
      required this.isError,
      required final List<Stocklist> list,
      required this.subtotal,
      required this.taxinc,
      required this.taxprs,
      required this.cessprs,
      required this.cessamt,
      required this.invoiceTotal,
      required this.grossTotal,
      required this.billsubmission,
      required this.saleretunbill,
      required this.printbill,
      required this.trafic,
      required this.netamount,
      required this.discountprsnd,
      required this.totladiscamt,
      required this.gstAmounttotal,
      required this.gstprsnttotal,
      required this.outstaingtype,
      this.selectedcustomer,
      required final List<InvoiceData> previewlist,
      required this.outstandingCreditamt})
      : _list = list,
        _previewlist = previewlist;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<Stocklist> _list;
  @override
  List<Stocklist> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final double subtotal;
  @override
  final double taxinc;
  @override
  final double taxprs;
  @override
  final double cessprs;
  @override
  final double cessamt;
  @override
  final double invoiceTotal;
  @override
  final double grossTotal;
  @override
  final bool billsubmission;
  @override
  final bool saleretunbill;
  @override
  final bool printbill;
  @override
  final bool trafic;
  @override
  final double netamount;
  @override
  final double discountprsnd;
  @override
  final double totladiscamt;
  @override
  final double gstAmounttotal;
  @override
  final double gstprsnttotal;
  @override
  final String outstaingtype;
  @override
  final Customerslist? selectedcustomer;
  final List<InvoiceData> _previewlist;
  @override
  List<InvoiceData> get previewlist {
    if (_previewlist is EqualUnmodifiableListView) return _previewlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previewlist);
  }

  @override
  final double outstandingCreditamt;

  @override
  String toString() {
    return 'SubmitbillState(isLoading: $isLoading, isError: $isError, list: $list, subtotal: $subtotal, taxinc: $taxinc, taxprs: $taxprs, cessprs: $cessprs, cessamt: $cessamt, invoiceTotal: $invoiceTotal, grossTotal: $grossTotal, billsubmission: $billsubmission, saleretunbill: $saleretunbill, printbill: $printbill, trafic: $trafic, netamount: $netamount, discountprsnd: $discountprsnd, totladiscamt: $totladiscamt, gstAmounttotal: $gstAmounttotal, gstprsnttotal: $gstprsnttotal, outstaingtype: $outstaingtype, selectedcustomer: $selectedcustomer, previewlist: $previewlist, outstandingCreditamt: $outstandingCreditamt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitbillStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.taxinc, taxinc) || other.taxinc == taxinc) &&
            (identical(other.taxprs, taxprs) || other.taxprs == taxprs) &&
            (identical(other.cessprs, cessprs) || other.cessprs == cessprs) &&
            (identical(other.cessamt, cessamt) || other.cessamt == cessamt) &&
            (identical(other.invoiceTotal, invoiceTotal) ||
                other.invoiceTotal == invoiceTotal) &&
            (identical(other.grossTotal, grossTotal) ||
                other.grossTotal == grossTotal) &&
            (identical(other.billsubmission, billsubmission) ||
                other.billsubmission == billsubmission) &&
            (identical(other.saleretunbill, saleretunbill) ||
                other.saleretunbill == saleretunbill) &&
            (identical(other.printbill, printbill) ||
                other.printbill == printbill) &&
            (identical(other.trafic, trafic) || other.trafic == trafic) &&
            (identical(other.netamount, netamount) ||
                other.netamount == netamount) &&
            (identical(other.discountprsnd, discountprsnd) ||
                other.discountprsnd == discountprsnd) &&
            (identical(other.totladiscamt, totladiscamt) ||
                other.totladiscamt == totladiscamt) &&
            (identical(other.gstAmounttotal, gstAmounttotal) ||
                other.gstAmounttotal == gstAmounttotal) &&
            (identical(other.gstprsnttotal, gstprsnttotal) ||
                other.gstprsnttotal == gstprsnttotal) &&
            (identical(other.outstaingtype, outstaingtype) ||
                other.outstaingtype == outstaingtype) &&
            (identical(other.selectedcustomer, selectedcustomer) ||
                other.selectedcustomer == selectedcustomer) &&
            const DeepCollectionEquality()
                .equals(other._previewlist, _previewlist) &&
            (identical(other.outstandingCreditamt, outstandingCreditamt) ||
                other.outstandingCreditamt == outstandingCreditamt));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isLoading,
        isError,
        const DeepCollectionEquality().hash(_list),
        subtotal,
        taxinc,
        taxprs,
        cessprs,
        cessamt,
        invoiceTotal,
        grossTotal,
        billsubmission,
        saleretunbill,
        printbill,
        trafic,
        netamount,
        discountprsnd,
        totladiscamt,
        gstAmounttotal,
        gstprsnttotal,
        outstaingtype,
        selectedcustomer,
        const DeepCollectionEquality().hash(_previewlist),
        outstandingCreditamt
      ]);

  /// Create a copy of SubmitbillState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitbillStateImplCopyWith<_$SubmitbillStateImpl> get copyWith =>
      __$$SubmitbillStateImplCopyWithImpl<_$SubmitbillStateImpl>(
          this, _$identity);
}

abstract class _SubmitbillState implements SubmitbillState {
  factory _SubmitbillState(
      {required final bool isLoading,
      required final bool isError,
      required final List<Stocklist> list,
      required final double subtotal,
      required final double taxinc,
      required final double taxprs,
      required final double cessprs,
      required final double cessamt,
      required final double invoiceTotal,
      required final double grossTotal,
      required final bool billsubmission,
      required final bool saleretunbill,
      required final bool printbill,
      required final bool trafic,
      required final double netamount,
      required final double discountprsnd,
      required final double totladiscamt,
      required final double gstAmounttotal,
      required final double gstprsnttotal,
      required final String outstaingtype,
      final Customerslist? selectedcustomer,
      required final List<InvoiceData> previewlist,
      required final double outstandingCreditamt}) = _$SubmitbillStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<Stocklist> get list;
  @override
  double get subtotal;
  @override
  double get taxinc;
  @override
  double get taxprs;
  @override
  double get cessprs;
  @override
  double get cessamt;
  @override
  double get invoiceTotal;
  @override
  double get grossTotal;
  @override
  bool get billsubmission;
  @override
  bool get saleretunbill;
  @override
  bool get printbill;
  @override
  bool get trafic;
  @override
  double get netamount;
  @override
  double get discountprsnd;
  @override
  double get totladiscamt;
  @override
  double get gstAmounttotal;
  @override
  double get gstprsnttotal;
  @override
  String get outstaingtype;
  @override
  Customerslist? get selectedcustomer;
  @override
  List<InvoiceData> get previewlist;
  @override
  double get outstandingCreditamt;

  /// Create a copy of SubmitbillState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitbillStateImplCopyWith<_$SubmitbillStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
