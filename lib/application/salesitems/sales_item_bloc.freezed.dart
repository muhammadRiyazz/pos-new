// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SalesItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() toBillList,
    required TResult Function(Stocklist product) clearingState,
    required TResult Function(int id, bool increment) quantity,
    required TResult Function(int id, double newItemAmt, int qty)
        quantityFromBSheet,
    required TResult Function(Stocklist product, int qty, String? reason)
        itemFromBSheet,
    required TResult Function(String cata, String query) search,
    required TResult Function() clearingToBill,
    required TResult Function(Stocklist product, bool increment) itemAddToBil,
    required TResult Function() fetchreasone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? toBillList,
    TResult? Function(Stocklist product)? clearingState,
    TResult? Function(int id, bool increment)? quantity,
    TResult? Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult? Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult? Function(String cata, String query)? search,
    TResult? Function()? clearingToBill,
    TResult? Function(Stocklist product, bool increment)? itemAddToBil,
    TResult? Function()? fetchreasone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? toBillList,
    TResult Function(Stocklist product)? clearingState,
    TResult Function(int id, bool increment)? quantity,
    TResult Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult Function(String cata, String query)? search,
    TResult Function()? clearingToBill,
    TResult Function(Stocklist product, bool increment)? itemAddToBil,
    TResult Function()? fetchreasone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemsList value) started,
    required TResult Function(FetchToBillList value) toBillList,
    required TResult Function(Clearing value) clearingState,
    required TResult Function(Quantity value) quantity,
    required TResult Function(QuantityFromBSheet value) quantityFromBSheet,
    required TResult Function(ItemFromBSheet value) itemFromBSheet,
    required TResult Function(SearchItem value) search,
    required TResult Function(ClearingToBillList value) clearingToBill,
    required TResult Function(AddToBill value) itemAddToBil,
    required TResult Function(Fetchreasone value) fetchreasone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemsList value)? started,
    TResult? Function(FetchToBillList value)? toBillList,
    TResult? Function(Clearing value)? clearingState,
    TResult? Function(Quantity value)? quantity,
    TResult? Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult? Function(ItemFromBSheet value)? itemFromBSheet,
    TResult? Function(SearchItem value)? search,
    TResult? Function(ClearingToBillList value)? clearingToBill,
    TResult? Function(AddToBill value)? itemAddToBil,
    TResult? Function(Fetchreasone value)? fetchreasone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemsList value)? started,
    TResult Function(FetchToBillList value)? toBillList,
    TResult Function(Clearing value)? clearingState,
    TResult Function(Quantity value)? quantity,
    TResult Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult Function(ItemFromBSheet value)? itemFromBSheet,
    TResult Function(SearchItem value)? search,
    TResult Function(ClearingToBillList value)? clearingToBill,
    TResult Function(AddToBill value)? itemAddToBil,
    TResult Function(Fetchreasone value)? fetchreasone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesItemEventCopyWith<$Res> {
  factory $SalesItemEventCopyWith(
          SalesItemEvent value, $Res Function(SalesItemEvent) then) =
      _$SalesItemEventCopyWithImpl<$Res, SalesItemEvent>;
}

/// @nodoc
class _$SalesItemEventCopyWithImpl<$Res, $Val extends SalesItemEvent>
    implements $SalesItemEventCopyWith<$Res> {
  _$SalesItemEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ItemsListImplCopyWith<$Res> {
  factory _$$ItemsListImplCopyWith(
          _$ItemsListImpl value, $Res Function(_$ItemsListImpl) then) =
      __$$ItemsListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ItemsListImplCopyWithImpl<$Res>
    extends _$SalesItemEventCopyWithImpl<$Res, _$ItemsListImpl>
    implements _$$ItemsListImplCopyWith<$Res> {
  __$$ItemsListImplCopyWithImpl(
      _$ItemsListImpl _value, $Res Function(_$ItemsListImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ItemsListImpl implements ItemsList {
  const _$ItemsListImpl();

  @override
  String toString() {
    return 'SalesItemEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ItemsListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() toBillList,
    required TResult Function(Stocklist product) clearingState,
    required TResult Function(int id, bool increment) quantity,
    required TResult Function(int id, double newItemAmt, int qty)
        quantityFromBSheet,
    required TResult Function(Stocklist product, int qty, String? reason)
        itemFromBSheet,
    required TResult Function(String cata, String query) search,
    required TResult Function() clearingToBill,
    required TResult Function(Stocklist product, bool increment) itemAddToBil,
    required TResult Function() fetchreasone,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? toBillList,
    TResult? Function(Stocklist product)? clearingState,
    TResult? Function(int id, bool increment)? quantity,
    TResult? Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult? Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult? Function(String cata, String query)? search,
    TResult? Function()? clearingToBill,
    TResult? Function(Stocklist product, bool increment)? itemAddToBil,
    TResult? Function()? fetchreasone,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? toBillList,
    TResult Function(Stocklist product)? clearingState,
    TResult Function(int id, bool increment)? quantity,
    TResult Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult Function(String cata, String query)? search,
    TResult Function()? clearingToBill,
    TResult Function(Stocklist product, bool increment)? itemAddToBil,
    TResult Function()? fetchreasone,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemsList value) started,
    required TResult Function(FetchToBillList value) toBillList,
    required TResult Function(Clearing value) clearingState,
    required TResult Function(Quantity value) quantity,
    required TResult Function(QuantityFromBSheet value) quantityFromBSheet,
    required TResult Function(ItemFromBSheet value) itemFromBSheet,
    required TResult Function(SearchItem value) search,
    required TResult Function(ClearingToBillList value) clearingToBill,
    required TResult Function(AddToBill value) itemAddToBil,
    required TResult Function(Fetchreasone value) fetchreasone,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemsList value)? started,
    TResult? Function(FetchToBillList value)? toBillList,
    TResult? Function(Clearing value)? clearingState,
    TResult? Function(Quantity value)? quantity,
    TResult? Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult? Function(ItemFromBSheet value)? itemFromBSheet,
    TResult? Function(SearchItem value)? search,
    TResult? Function(ClearingToBillList value)? clearingToBill,
    TResult? Function(AddToBill value)? itemAddToBil,
    TResult? Function(Fetchreasone value)? fetchreasone,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemsList value)? started,
    TResult Function(FetchToBillList value)? toBillList,
    TResult Function(Clearing value)? clearingState,
    TResult Function(Quantity value)? quantity,
    TResult Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult Function(ItemFromBSheet value)? itemFromBSheet,
    TResult Function(SearchItem value)? search,
    TResult Function(ClearingToBillList value)? clearingToBill,
    TResult Function(AddToBill value)? itemAddToBil,
    TResult Function(Fetchreasone value)? fetchreasone,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class ItemsList implements SalesItemEvent {
  const factory ItemsList() = _$ItemsListImpl;
}

/// @nodoc
abstract class _$$FetchToBillListImplCopyWith<$Res> {
  factory _$$FetchToBillListImplCopyWith(_$FetchToBillListImpl value,
          $Res Function(_$FetchToBillListImpl) then) =
      __$$FetchToBillListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchToBillListImplCopyWithImpl<$Res>
    extends _$SalesItemEventCopyWithImpl<$Res, _$FetchToBillListImpl>
    implements _$$FetchToBillListImplCopyWith<$Res> {
  __$$FetchToBillListImplCopyWithImpl(
      _$FetchToBillListImpl _value, $Res Function(_$FetchToBillListImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchToBillListImpl implements FetchToBillList {
  const _$FetchToBillListImpl();

  @override
  String toString() {
    return 'SalesItemEvent.toBillList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchToBillListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() toBillList,
    required TResult Function(Stocklist product) clearingState,
    required TResult Function(int id, bool increment) quantity,
    required TResult Function(int id, double newItemAmt, int qty)
        quantityFromBSheet,
    required TResult Function(Stocklist product, int qty, String? reason)
        itemFromBSheet,
    required TResult Function(String cata, String query) search,
    required TResult Function() clearingToBill,
    required TResult Function(Stocklist product, bool increment) itemAddToBil,
    required TResult Function() fetchreasone,
  }) {
    return toBillList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? toBillList,
    TResult? Function(Stocklist product)? clearingState,
    TResult? Function(int id, bool increment)? quantity,
    TResult? Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult? Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult? Function(String cata, String query)? search,
    TResult? Function()? clearingToBill,
    TResult? Function(Stocklist product, bool increment)? itemAddToBil,
    TResult? Function()? fetchreasone,
  }) {
    return toBillList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? toBillList,
    TResult Function(Stocklist product)? clearingState,
    TResult Function(int id, bool increment)? quantity,
    TResult Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult Function(String cata, String query)? search,
    TResult Function()? clearingToBill,
    TResult Function(Stocklist product, bool increment)? itemAddToBil,
    TResult Function()? fetchreasone,
    required TResult orElse(),
  }) {
    if (toBillList != null) {
      return toBillList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemsList value) started,
    required TResult Function(FetchToBillList value) toBillList,
    required TResult Function(Clearing value) clearingState,
    required TResult Function(Quantity value) quantity,
    required TResult Function(QuantityFromBSheet value) quantityFromBSheet,
    required TResult Function(ItemFromBSheet value) itemFromBSheet,
    required TResult Function(SearchItem value) search,
    required TResult Function(ClearingToBillList value) clearingToBill,
    required TResult Function(AddToBill value) itemAddToBil,
    required TResult Function(Fetchreasone value) fetchreasone,
  }) {
    return toBillList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemsList value)? started,
    TResult? Function(FetchToBillList value)? toBillList,
    TResult? Function(Clearing value)? clearingState,
    TResult? Function(Quantity value)? quantity,
    TResult? Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult? Function(ItemFromBSheet value)? itemFromBSheet,
    TResult? Function(SearchItem value)? search,
    TResult? Function(ClearingToBillList value)? clearingToBill,
    TResult? Function(AddToBill value)? itemAddToBil,
    TResult? Function(Fetchreasone value)? fetchreasone,
  }) {
    return toBillList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemsList value)? started,
    TResult Function(FetchToBillList value)? toBillList,
    TResult Function(Clearing value)? clearingState,
    TResult Function(Quantity value)? quantity,
    TResult Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult Function(ItemFromBSheet value)? itemFromBSheet,
    TResult Function(SearchItem value)? search,
    TResult Function(ClearingToBillList value)? clearingToBill,
    TResult Function(AddToBill value)? itemAddToBil,
    TResult Function(Fetchreasone value)? fetchreasone,
    required TResult orElse(),
  }) {
    if (toBillList != null) {
      return toBillList(this);
    }
    return orElse();
  }
}

abstract class FetchToBillList implements SalesItemEvent {
  const factory FetchToBillList() = _$FetchToBillListImpl;
}

/// @nodoc
abstract class _$$ClearingImplCopyWith<$Res> {
  factory _$$ClearingImplCopyWith(
          _$ClearingImpl value, $Res Function(_$ClearingImpl) then) =
      __$$ClearingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Stocklist product});
}

/// @nodoc
class __$$ClearingImplCopyWithImpl<$Res>
    extends _$SalesItemEventCopyWithImpl<$Res, _$ClearingImpl>
    implements _$$ClearingImplCopyWith<$Res> {
  __$$ClearingImplCopyWithImpl(
      _$ClearingImpl _value, $Res Function(_$ClearingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ClearingImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Stocklist,
    ));
  }
}

/// @nodoc

class _$ClearingImpl implements Clearing {
  const _$ClearingImpl({required this.product});

  @override
  final Stocklist product;

  @override
  String toString() {
    return 'SalesItemEvent.clearingState(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearingImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClearingImplCopyWith<_$ClearingImpl> get copyWith =>
      __$$ClearingImplCopyWithImpl<_$ClearingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() toBillList,
    required TResult Function(Stocklist product) clearingState,
    required TResult Function(int id, bool increment) quantity,
    required TResult Function(int id, double newItemAmt, int qty)
        quantityFromBSheet,
    required TResult Function(Stocklist product, int qty, String? reason)
        itemFromBSheet,
    required TResult Function(String cata, String query) search,
    required TResult Function() clearingToBill,
    required TResult Function(Stocklist product, bool increment) itemAddToBil,
    required TResult Function() fetchreasone,
  }) {
    return clearingState(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? toBillList,
    TResult? Function(Stocklist product)? clearingState,
    TResult? Function(int id, bool increment)? quantity,
    TResult? Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult? Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult? Function(String cata, String query)? search,
    TResult? Function()? clearingToBill,
    TResult? Function(Stocklist product, bool increment)? itemAddToBil,
    TResult? Function()? fetchreasone,
  }) {
    return clearingState?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? toBillList,
    TResult Function(Stocklist product)? clearingState,
    TResult Function(int id, bool increment)? quantity,
    TResult Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult Function(String cata, String query)? search,
    TResult Function()? clearingToBill,
    TResult Function(Stocklist product, bool increment)? itemAddToBil,
    TResult Function()? fetchreasone,
    required TResult orElse(),
  }) {
    if (clearingState != null) {
      return clearingState(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemsList value) started,
    required TResult Function(FetchToBillList value) toBillList,
    required TResult Function(Clearing value) clearingState,
    required TResult Function(Quantity value) quantity,
    required TResult Function(QuantityFromBSheet value) quantityFromBSheet,
    required TResult Function(ItemFromBSheet value) itemFromBSheet,
    required TResult Function(SearchItem value) search,
    required TResult Function(ClearingToBillList value) clearingToBill,
    required TResult Function(AddToBill value) itemAddToBil,
    required TResult Function(Fetchreasone value) fetchreasone,
  }) {
    return clearingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemsList value)? started,
    TResult? Function(FetchToBillList value)? toBillList,
    TResult? Function(Clearing value)? clearingState,
    TResult? Function(Quantity value)? quantity,
    TResult? Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult? Function(ItemFromBSheet value)? itemFromBSheet,
    TResult? Function(SearchItem value)? search,
    TResult? Function(ClearingToBillList value)? clearingToBill,
    TResult? Function(AddToBill value)? itemAddToBil,
    TResult? Function(Fetchreasone value)? fetchreasone,
  }) {
    return clearingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemsList value)? started,
    TResult Function(FetchToBillList value)? toBillList,
    TResult Function(Clearing value)? clearingState,
    TResult Function(Quantity value)? quantity,
    TResult Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult Function(ItemFromBSheet value)? itemFromBSheet,
    TResult Function(SearchItem value)? search,
    TResult Function(ClearingToBillList value)? clearingToBill,
    TResult Function(AddToBill value)? itemAddToBil,
    TResult Function(Fetchreasone value)? fetchreasone,
    required TResult orElse(),
  }) {
    if (clearingState != null) {
      return clearingState(this);
    }
    return orElse();
  }
}

abstract class Clearing implements SalesItemEvent {
  const factory Clearing({required final Stocklist product}) = _$ClearingImpl;

  Stocklist get product;

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClearingImplCopyWith<_$ClearingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuantityImplCopyWith<$Res> {
  factory _$$QuantityImplCopyWith(
          _$QuantityImpl value, $Res Function(_$QuantityImpl) then) =
      __$$QuantityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, bool increment});
}

/// @nodoc
class __$$QuantityImplCopyWithImpl<$Res>
    extends _$SalesItemEventCopyWithImpl<$Res, _$QuantityImpl>
    implements _$$QuantityImplCopyWith<$Res> {
  __$$QuantityImplCopyWithImpl(
      _$QuantityImpl _value, $Res Function(_$QuantityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? increment = null,
  }) {
    return _then(_$QuantityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      increment: null == increment
          ? _value.increment
          : increment // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$QuantityImpl implements Quantity {
  const _$QuantityImpl({required this.id, required this.increment});

  @override
  final int id;
  @override
  final bool increment;

  @override
  String toString() {
    return 'SalesItemEvent.quantity(id: $id, increment: $increment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuantityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.increment, increment) ||
                other.increment == increment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, increment);

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuantityImplCopyWith<_$QuantityImpl> get copyWith =>
      __$$QuantityImplCopyWithImpl<_$QuantityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() toBillList,
    required TResult Function(Stocklist product) clearingState,
    required TResult Function(int id, bool increment) quantity,
    required TResult Function(int id, double newItemAmt, int qty)
        quantityFromBSheet,
    required TResult Function(Stocklist product, int qty, String? reason)
        itemFromBSheet,
    required TResult Function(String cata, String query) search,
    required TResult Function() clearingToBill,
    required TResult Function(Stocklist product, bool increment) itemAddToBil,
    required TResult Function() fetchreasone,
  }) {
    return quantity(id, increment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? toBillList,
    TResult? Function(Stocklist product)? clearingState,
    TResult? Function(int id, bool increment)? quantity,
    TResult? Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult? Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult? Function(String cata, String query)? search,
    TResult? Function()? clearingToBill,
    TResult? Function(Stocklist product, bool increment)? itemAddToBil,
    TResult? Function()? fetchreasone,
  }) {
    return quantity?.call(id, increment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? toBillList,
    TResult Function(Stocklist product)? clearingState,
    TResult Function(int id, bool increment)? quantity,
    TResult Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult Function(String cata, String query)? search,
    TResult Function()? clearingToBill,
    TResult Function(Stocklist product, bool increment)? itemAddToBil,
    TResult Function()? fetchreasone,
    required TResult orElse(),
  }) {
    if (quantity != null) {
      return quantity(id, increment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemsList value) started,
    required TResult Function(FetchToBillList value) toBillList,
    required TResult Function(Clearing value) clearingState,
    required TResult Function(Quantity value) quantity,
    required TResult Function(QuantityFromBSheet value) quantityFromBSheet,
    required TResult Function(ItemFromBSheet value) itemFromBSheet,
    required TResult Function(SearchItem value) search,
    required TResult Function(ClearingToBillList value) clearingToBill,
    required TResult Function(AddToBill value) itemAddToBil,
    required TResult Function(Fetchreasone value) fetchreasone,
  }) {
    return quantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemsList value)? started,
    TResult? Function(FetchToBillList value)? toBillList,
    TResult? Function(Clearing value)? clearingState,
    TResult? Function(Quantity value)? quantity,
    TResult? Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult? Function(ItemFromBSheet value)? itemFromBSheet,
    TResult? Function(SearchItem value)? search,
    TResult? Function(ClearingToBillList value)? clearingToBill,
    TResult? Function(AddToBill value)? itemAddToBil,
    TResult? Function(Fetchreasone value)? fetchreasone,
  }) {
    return quantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemsList value)? started,
    TResult Function(FetchToBillList value)? toBillList,
    TResult Function(Clearing value)? clearingState,
    TResult Function(Quantity value)? quantity,
    TResult Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult Function(ItemFromBSheet value)? itemFromBSheet,
    TResult Function(SearchItem value)? search,
    TResult Function(ClearingToBillList value)? clearingToBill,
    TResult Function(AddToBill value)? itemAddToBil,
    TResult Function(Fetchreasone value)? fetchreasone,
    required TResult orElse(),
  }) {
    if (quantity != null) {
      return quantity(this);
    }
    return orElse();
  }
}

abstract class Quantity implements SalesItemEvent {
  const factory Quantity(
      {required final int id, required final bool increment}) = _$QuantityImpl;

  int get id;
  bool get increment;

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuantityImplCopyWith<_$QuantityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuantityFromBSheetImplCopyWith<$Res> {
  factory _$$QuantityFromBSheetImplCopyWith(_$QuantityFromBSheetImpl value,
          $Res Function(_$QuantityFromBSheetImpl) then) =
      __$$QuantityFromBSheetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, double newItemAmt, int qty});
}

/// @nodoc
class __$$QuantityFromBSheetImplCopyWithImpl<$Res>
    extends _$SalesItemEventCopyWithImpl<$Res, _$QuantityFromBSheetImpl>
    implements _$$QuantityFromBSheetImplCopyWith<$Res> {
  __$$QuantityFromBSheetImplCopyWithImpl(_$QuantityFromBSheetImpl _value,
      $Res Function(_$QuantityFromBSheetImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? newItemAmt = null,
    Object? qty = null,
  }) {
    return _then(_$QuantityFromBSheetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      newItemAmt: null == newItemAmt
          ? _value.newItemAmt
          : newItemAmt // ignore: cast_nullable_to_non_nullable
              as double,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuantityFromBSheetImpl implements QuantityFromBSheet {
  const _$QuantityFromBSheetImpl(
      {required this.id, required this.newItemAmt, required this.qty});

  @override
  final int id;
  @override
  final double newItemAmt;
  @override
  final int qty;

  @override
  String toString() {
    return 'SalesItemEvent.quantityFromBSheet(id: $id, newItemAmt: $newItemAmt, qty: $qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuantityFromBSheetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.newItemAmt, newItemAmt) ||
                other.newItemAmt == newItemAmt) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, newItemAmt, qty);

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuantityFromBSheetImplCopyWith<_$QuantityFromBSheetImpl> get copyWith =>
      __$$QuantityFromBSheetImplCopyWithImpl<_$QuantityFromBSheetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() toBillList,
    required TResult Function(Stocklist product) clearingState,
    required TResult Function(int id, bool increment) quantity,
    required TResult Function(int id, double newItemAmt, int qty)
        quantityFromBSheet,
    required TResult Function(Stocklist product, int qty, String? reason)
        itemFromBSheet,
    required TResult Function(String cata, String query) search,
    required TResult Function() clearingToBill,
    required TResult Function(Stocklist product, bool increment) itemAddToBil,
    required TResult Function() fetchreasone,
  }) {
    return quantityFromBSheet(id, newItemAmt, qty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? toBillList,
    TResult? Function(Stocklist product)? clearingState,
    TResult? Function(int id, bool increment)? quantity,
    TResult? Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult? Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult? Function(String cata, String query)? search,
    TResult? Function()? clearingToBill,
    TResult? Function(Stocklist product, bool increment)? itemAddToBil,
    TResult? Function()? fetchreasone,
  }) {
    return quantityFromBSheet?.call(id, newItemAmt, qty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? toBillList,
    TResult Function(Stocklist product)? clearingState,
    TResult Function(int id, bool increment)? quantity,
    TResult Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult Function(String cata, String query)? search,
    TResult Function()? clearingToBill,
    TResult Function(Stocklist product, bool increment)? itemAddToBil,
    TResult Function()? fetchreasone,
    required TResult orElse(),
  }) {
    if (quantityFromBSheet != null) {
      return quantityFromBSheet(id, newItemAmt, qty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemsList value) started,
    required TResult Function(FetchToBillList value) toBillList,
    required TResult Function(Clearing value) clearingState,
    required TResult Function(Quantity value) quantity,
    required TResult Function(QuantityFromBSheet value) quantityFromBSheet,
    required TResult Function(ItemFromBSheet value) itemFromBSheet,
    required TResult Function(SearchItem value) search,
    required TResult Function(ClearingToBillList value) clearingToBill,
    required TResult Function(AddToBill value) itemAddToBil,
    required TResult Function(Fetchreasone value) fetchreasone,
  }) {
    return quantityFromBSheet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemsList value)? started,
    TResult? Function(FetchToBillList value)? toBillList,
    TResult? Function(Clearing value)? clearingState,
    TResult? Function(Quantity value)? quantity,
    TResult? Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult? Function(ItemFromBSheet value)? itemFromBSheet,
    TResult? Function(SearchItem value)? search,
    TResult? Function(ClearingToBillList value)? clearingToBill,
    TResult? Function(AddToBill value)? itemAddToBil,
    TResult? Function(Fetchreasone value)? fetchreasone,
  }) {
    return quantityFromBSheet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemsList value)? started,
    TResult Function(FetchToBillList value)? toBillList,
    TResult Function(Clearing value)? clearingState,
    TResult Function(Quantity value)? quantity,
    TResult Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult Function(ItemFromBSheet value)? itemFromBSheet,
    TResult Function(SearchItem value)? search,
    TResult Function(ClearingToBillList value)? clearingToBill,
    TResult Function(AddToBill value)? itemAddToBil,
    TResult Function(Fetchreasone value)? fetchreasone,
    required TResult orElse(),
  }) {
    if (quantityFromBSheet != null) {
      return quantityFromBSheet(this);
    }
    return orElse();
  }
}

abstract class QuantityFromBSheet implements SalesItemEvent {
  const factory QuantityFromBSheet(
      {required final int id,
      required final double newItemAmt,
      required final int qty}) = _$QuantityFromBSheetImpl;

  int get id;
  double get newItemAmt;
  int get qty;

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuantityFromBSheetImplCopyWith<_$QuantityFromBSheetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemFromBSheetImplCopyWith<$Res> {
  factory _$$ItemFromBSheetImplCopyWith(_$ItemFromBSheetImpl value,
          $Res Function(_$ItemFromBSheetImpl) then) =
      __$$ItemFromBSheetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Stocklist product, int qty, String? reason});
}

/// @nodoc
class __$$ItemFromBSheetImplCopyWithImpl<$Res>
    extends _$SalesItemEventCopyWithImpl<$Res, _$ItemFromBSheetImpl>
    implements _$$ItemFromBSheetImplCopyWith<$Res> {
  __$$ItemFromBSheetImplCopyWithImpl(
      _$ItemFromBSheetImpl _value, $Res Function(_$ItemFromBSheetImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? qty = null,
    Object? reason = freezed,
  }) {
    return _then(_$ItemFromBSheetImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Stocklist,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ItemFromBSheetImpl implements ItemFromBSheet {
  const _$ItemFromBSheetImpl(
      {required this.product, required this.qty, this.reason});

  @override
  final Stocklist product;
  @override
  final int qty;
  @override
  final String? reason;

  @override
  String toString() {
    return 'SalesItemEvent.itemFromBSheet(product: $product, qty: $qty, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemFromBSheetImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, qty, reason);

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemFromBSheetImplCopyWith<_$ItemFromBSheetImpl> get copyWith =>
      __$$ItemFromBSheetImplCopyWithImpl<_$ItemFromBSheetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() toBillList,
    required TResult Function(Stocklist product) clearingState,
    required TResult Function(int id, bool increment) quantity,
    required TResult Function(int id, double newItemAmt, int qty)
        quantityFromBSheet,
    required TResult Function(Stocklist product, int qty, String? reason)
        itemFromBSheet,
    required TResult Function(String cata, String query) search,
    required TResult Function() clearingToBill,
    required TResult Function(Stocklist product, bool increment) itemAddToBil,
    required TResult Function() fetchreasone,
  }) {
    return itemFromBSheet(product, qty, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? toBillList,
    TResult? Function(Stocklist product)? clearingState,
    TResult? Function(int id, bool increment)? quantity,
    TResult? Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult? Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult? Function(String cata, String query)? search,
    TResult? Function()? clearingToBill,
    TResult? Function(Stocklist product, bool increment)? itemAddToBil,
    TResult? Function()? fetchreasone,
  }) {
    return itemFromBSheet?.call(product, qty, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? toBillList,
    TResult Function(Stocklist product)? clearingState,
    TResult Function(int id, bool increment)? quantity,
    TResult Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult Function(String cata, String query)? search,
    TResult Function()? clearingToBill,
    TResult Function(Stocklist product, bool increment)? itemAddToBil,
    TResult Function()? fetchreasone,
    required TResult orElse(),
  }) {
    if (itemFromBSheet != null) {
      return itemFromBSheet(product, qty, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemsList value) started,
    required TResult Function(FetchToBillList value) toBillList,
    required TResult Function(Clearing value) clearingState,
    required TResult Function(Quantity value) quantity,
    required TResult Function(QuantityFromBSheet value) quantityFromBSheet,
    required TResult Function(ItemFromBSheet value) itemFromBSheet,
    required TResult Function(SearchItem value) search,
    required TResult Function(ClearingToBillList value) clearingToBill,
    required TResult Function(AddToBill value) itemAddToBil,
    required TResult Function(Fetchreasone value) fetchreasone,
  }) {
    return itemFromBSheet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemsList value)? started,
    TResult? Function(FetchToBillList value)? toBillList,
    TResult? Function(Clearing value)? clearingState,
    TResult? Function(Quantity value)? quantity,
    TResult? Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult? Function(ItemFromBSheet value)? itemFromBSheet,
    TResult? Function(SearchItem value)? search,
    TResult? Function(ClearingToBillList value)? clearingToBill,
    TResult? Function(AddToBill value)? itemAddToBil,
    TResult? Function(Fetchreasone value)? fetchreasone,
  }) {
    return itemFromBSheet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemsList value)? started,
    TResult Function(FetchToBillList value)? toBillList,
    TResult Function(Clearing value)? clearingState,
    TResult Function(Quantity value)? quantity,
    TResult Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult Function(ItemFromBSheet value)? itemFromBSheet,
    TResult Function(SearchItem value)? search,
    TResult Function(ClearingToBillList value)? clearingToBill,
    TResult Function(AddToBill value)? itemAddToBil,
    TResult Function(Fetchreasone value)? fetchreasone,
    required TResult orElse(),
  }) {
    if (itemFromBSheet != null) {
      return itemFromBSheet(this);
    }
    return orElse();
  }
}

abstract class ItemFromBSheet implements SalesItemEvent {
  const factory ItemFromBSheet(
      {required final Stocklist product,
      required final int qty,
      final String? reason}) = _$ItemFromBSheetImpl;

  Stocklist get product;
  int get qty;
  String? get reason;

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemFromBSheetImplCopyWith<_$ItemFromBSheetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchItemImplCopyWith<$Res> {
  factory _$$SearchItemImplCopyWith(
          _$SearchItemImpl value, $Res Function(_$SearchItemImpl) then) =
      __$$SearchItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cata, String query});
}

/// @nodoc
class __$$SearchItemImplCopyWithImpl<$Res>
    extends _$SalesItemEventCopyWithImpl<$Res, _$SearchItemImpl>
    implements _$$SearchItemImplCopyWith<$Res> {
  __$$SearchItemImplCopyWithImpl(
      _$SearchItemImpl _value, $Res Function(_$SearchItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cata = null,
    Object? query = null,
  }) {
    return _then(_$SearchItemImpl(
      cata: null == cata
          ? _value.cata
          : cata // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchItemImpl implements SearchItem {
  const _$SearchItemImpl({required this.cata, required this.query});

  @override
  final String cata;
  @override
  final String query;

  @override
  String toString() {
    return 'SalesItemEvent.search(cata: $cata, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchItemImpl &&
            (identical(other.cata, cata) || other.cata == cata) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cata, query);

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchItemImplCopyWith<_$SearchItemImpl> get copyWith =>
      __$$SearchItemImplCopyWithImpl<_$SearchItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() toBillList,
    required TResult Function(Stocklist product) clearingState,
    required TResult Function(int id, bool increment) quantity,
    required TResult Function(int id, double newItemAmt, int qty)
        quantityFromBSheet,
    required TResult Function(Stocklist product, int qty, String? reason)
        itemFromBSheet,
    required TResult Function(String cata, String query) search,
    required TResult Function() clearingToBill,
    required TResult Function(Stocklist product, bool increment) itemAddToBil,
    required TResult Function() fetchreasone,
  }) {
    return search(cata, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? toBillList,
    TResult? Function(Stocklist product)? clearingState,
    TResult? Function(int id, bool increment)? quantity,
    TResult? Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult? Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult? Function(String cata, String query)? search,
    TResult? Function()? clearingToBill,
    TResult? Function(Stocklist product, bool increment)? itemAddToBil,
    TResult? Function()? fetchreasone,
  }) {
    return search?.call(cata, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? toBillList,
    TResult Function(Stocklist product)? clearingState,
    TResult Function(int id, bool increment)? quantity,
    TResult Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult Function(String cata, String query)? search,
    TResult Function()? clearingToBill,
    TResult Function(Stocklist product, bool increment)? itemAddToBil,
    TResult Function()? fetchreasone,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(cata, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemsList value) started,
    required TResult Function(FetchToBillList value) toBillList,
    required TResult Function(Clearing value) clearingState,
    required TResult Function(Quantity value) quantity,
    required TResult Function(QuantityFromBSheet value) quantityFromBSheet,
    required TResult Function(ItemFromBSheet value) itemFromBSheet,
    required TResult Function(SearchItem value) search,
    required TResult Function(ClearingToBillList value) clearingToBill,
    required TResult Function(AddToBill value) itemAddToBil,
    required TResult Function(Fetchreasone value) fetchreasone,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemsList value)? started,
    TResult? Function(FetchToBillList value)? toBillList,
    TResult? Function(Clearing value)? clearingState,
    TResult? Function(Quantity value)? quantity,
    TResult? Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult? Function(ItemFromBSheet value)? itemFromBSheet,
    TResult? Function(SearchItem value)? search,
    TResult? Function(ClearingToBillList value)? clearingToBill,
    TResult? Function(AddToBill value)? itemAddToBil,
    TResult? Function(Fetchreasone value)? fetchreasone,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemsList value)? started,
    TResult Function(FetchToBillList value)? toBillList,
    TResult Function(Clearing value)? clearingState,
    TResult Function(Quantity value)? quantity,
    TResult Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult Function(ItemFromBSheet value)? itemFromBSheet,
    TResult Function(SearchItem value)? search,
    TResult Function(ClearingToBillList value)? clearingToBill,
    TResult Function(AddToBill value)? itemAddToBil,
    TResult Function(Fetchreasone value)? fetchreasone,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchItem implements SalesItemEvent {
  const factory SearchItem(
      {required final String cata,
      required final String query}) = _$SearchItemImpl;

  String get cata;
  String get query;

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchItemImplCopyWith<_$SearchItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearingToBillListImplCopyWith<$Res> {
  factory _$$ClearingToBillListImplCopyWith(_$ClearingToBillListImpl value,
          $Res Function(_$ClearingToBillListImpl) then) =
      __$$ClearingToBillListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearingToBillListImplCopyWithImpl<$Res>
    extends _$SalesItemEventCopyWithImpl<$Res, _$ClearingToBillListImpl>
    implements _$$ClearingToBillListImplCopyWith<$Res> {
  __$$ClearingToBillListImplCopyWithImpl(_$ClearingToBillListImpl _value,
      $Res Function(_$ClearingToBillListImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearingToBillListImpl implements ClearingToBillList {
  const _$ClearingToBillListImpl();

  @override
  String toString() {
    return 'SalesItemEvent.clearingToBill()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearingToBillListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() toBillList,
    required TResult Function(Stocklist product) clearingState,
    required TResult Function(int id, bool increment) quantity,
    required TResult Function(int id, double newItemAmt, int qty)
        quantityFromBSheet,
    required TResult Function(Stocklist product, int qty, String? reason)
        itemFromBSheet,
    required TResult Function(String cata, String query) search,
    required TResult Function() clearingToBill,
    required TResult Function(Stocklist product, bool increment) itemAddToBil,
    required TResult Function() fetchreasone,
  }) {
    return clearingToBill();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? toBillList,
    TResult? Function(Stocklist product)? clearingState,
    TResult? Function(int id, bool increment)? quantity,
    TResult? Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult? Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult? Function(String cata, String query)? search,
    TResult? Function()? clearingToBill,
    TResult? Function(Stocklist product, bool increment)? itemAddToBil,
    TResult? Function()? fetchreasone,
  }) {
    return clearingToBill?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? toBillList,
    TResult Function(Stocklist product)? clearingState,
    TResult Function(int id, bool increment)? quantity,
    TResult Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult Function(String cata, String query)? search,
    TResult Function()? clearingToBill,
    TResult Function(Stocklist product, bool increment)? itemAddToBil,
    TResult Function()? fetchreasone,
    required TResult orElse(),
  }) {
    if (clearingToBill != null) {
      return clearingToBill();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemsList value) started,
    required TResult Function(FetchToBillList value) toBillList,
    required TResult Function(Clearing value) clearingState,
    required TResult Function(Quantity value) quantity,
    required TResult Function(QuantityFromBSheet value) quantityFromBSheet,
    required TResult Function(ItemFromBSheet value) itemFromBSheet,
    required TResult Function(SearchItem value) search,
    required TResult Function(ClearingToBillList value) clearingToBill,
    required TResult Function(AddToBill value) itemAddToBil,
    required TResult Function(Fetchreasone value) fetchreasone,
  }) {
    return clearingToBill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemsList value)? started,
    TResult? Function(FetchToBillList value)? toBillList,
    TResult? Function(Clearing value)? clearingState,
    TResult? Function(Quantity value)? quantity,
    TResult? Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult? Function(ItemFromBSheet value)? itemFromBSheet,
    TResult? Function(SearchItem value)? search,
    TResult? Function(ClearingToBillList value)? clearingToBill,
    TResult? Function(AddToBill value)? itemAddToBil,
    TResult? Function(Fetchreasone value)? fetchreasone,
  }) {
    return clearingToBill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemsList value)? started,
    TResult Function(FetchToBillList value)? toBillList,
    TResult Function(Clearing value)? clearingState,
    TResult Function(Quantity value)? quantity,
    TResult Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult Function(ItemFromBSheet value)? itemFromBSheet,
    TResult Function(SearchItem value)? search,
    TResult Function(ClearingToBillList value)? clearingToBill,
    TResult Function(AddToBill value)? itemAddToBil,
    TResult Function(Fetchreasone value)? fetchreasone,
    required TResult orElse(),
  }) {
    if (clearingToBill != null) {
      return clearingToBill(this);
    }
    return orElse();
  }
}

abstract class ClearingToBillList implements SalesItemEvent {
  const factory ClearingToBillList() = _$ClearingToBillListImpl;
}

/// @nodoc
abstract class _$$AddToBillImplCopyWith<$Res> {
  factory _$$AddToBillImplCopyWith(
          _$AddToBillImpl value, $Res Function(_$AddToBillImpl) then) =
      __$$AddToBillImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Stocklist product, bool increment});
}

/// @nodoc
class __$$AddToBillImplCopyWithImpl<$Res>
    extends _$SalesItemEventCopyWithImpl<$Res, _$AddToBillImpl>
    implements _$$AddToBillImplCopyWith<$Res> {
  __$$AddToBillImplCopyWithImpl(
      _$AddToBillImpl _value, $Res Function(_$AddToBillImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? increment = null,
  }) {
    return _then(_$AddToBillImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Stocklist,
      increment: null == increment
          ? _value.increment
          : increment // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddToBillImpl implements AddToBill {
  const _$AddToBillImpl({required this.product, required this.increment});

  @override
  final Stocklist product;
  @override
  final bool increment;

  @override
  String toString() {
    return 'SalesItemEvent.itemAddToBil(product: $product, increment: $increment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToBillImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.increment, increment) ||
                other.increment == increment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, increment);

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToBillImplCopyWith<_$AddToBillImpl> get copyWith =>
      __$$AddToBillImplCopyWithImpl<_$AddToBillImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() toBillList,
    required TResult Function(Stocklist product) clearingState,
    required TResult Function(int id, bool increment) quantity,
    required TResult Function(int id, double newItemAmt, int qty)
        quantityFromBSheet,
    required TResult Function(Stocklist product, int qty, String? reason)
        itemFromBSheet,
    required TResult Function(String cata, String query) search,
    required TResult Function() clearingToBill,
    required TResult Function(Stocklist product, bool increment) itemAddToBil,
    required TResult Function() fetchreasone,
  }) {
    return itemAddToBil(product, increment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? toBillList,
    TResult? Function(Stocklist product)? clearingState,
    TResult? Function(int id, bool increment)? quantity,
    TResult? Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult? Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult? Function(String cata, String query)? search,
    TResult? Function()? clearingToBill,
    TResult? Function(Stocklist product, bool increment)? itemAddToBil,
    TResult? Function()? fetchreasone,
  }) {
    return itemAddToBil?.call(product, increment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? toBillList,
    TResult Function(Stocklist product)? clearingState,
    TResult Function(int id, bool increment)? quantity,
    TResult Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult Function(String cata, String query)? search,
    TResult Function()? clearingToBill,
    TResult Function(Stocklist product, bool increment)? itemAddToBil,
    TResult Function()? fetchreasone,
    required TResult orElse(),
  }) {
    if (itemAddToBil != null) {
      return itemAddToBil(product, increment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemsList value) started,
    required TResult Function(FetchToBillList value) toBillList,
    required TResult Function(Clearing value) clearingState,
    required TResult Function(Quantity value) quantity,
    required TResult Function(QuantityFromBSheet value) quantityFromBSheet,
    required TResult Function(ItemFromBSheet value) itemFromBSheet,
    required TResult Function(SearchItem value) search,
    required TResult Function(ClearingToBillList value) clearingToBill,
    required TResult Function(AddToBill value) itemAddToBil,
    required TResult Function(Fetchreasone value) fetchreasone,
  }) {
    return itemAddToBil(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemsList value)? started,
    TResult? Function(FetchToBillList value)? toBillList,
    TResult? Function(Clearing value)? clearingState,
    TResult? Function(Quantity value)? quantity,
    TResult? Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult? Function(ItemFromBSheet value)? itemFromBSheet,
    TResult? Function(SearchItem value)? search,
    TResult? Function(ClearingToBillList value)? clearingToBill,
    TResult? Function(AddToBill value)? itemAddToBil,
    TResult? Function(Fetchreasone value)? fetchreasone,
  }) {
    return itemAddToBil?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemsList value)? started,
    TResult Function(FetchToBillList value)? toBillList,
    TResult Function(Clearing value)? clearingState,
    TResult Function(Quantity value)? quantity,
    TResult Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult Function(ItemFromBSheet value)? itemFromBSheet,
    TResult Function(SearchItem value)? search,
    TResult Function(ClearingToBillList value)? clearingToBill,
    TResult Function(AddToBill value)? itemAddToBil,
    TResult Function(Fetchreasone value)? fetchreasone,
    required TResult orElse(),
  }) {
    if (itemAddToBil != null) {
      return itemAddToBil(this);
    }
    return orElse();
  }
}

abstract class AddToBill implements SalesItemEvent {
  const factory AddToBill(
      {required final Stocklist product,
      required final bool increment}) = _$AddToBillImpl;

  Stocklist get product;
  bool get increment;

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToBillImplCopyWith<_$AddToBillImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchreasoneImplCopyWith<$Res> {
  factory _$$FetchreasoneImplCopyWith(
          _$FetchreasoneImpl value, $Res Function(_$FetchreasoneImpl) then) =
      __$$FetchreasoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchreasoneImplCopyWithImpl<$Res>
    extends _$SalesItemEventCopyWithImpl<$Res, _$FetchreasoneImpl>
    implements _$$FetchreasoneImplCopyWith<$Res> {
  __$$FetchreasoneImplCopyWithImpl(
      _$FetchreasoneImpl _value, $Res Function(_$FetchreasoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesItemEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchreasoneImpl implements Fetchreasone {
  const _$FetchreasoneImpl();

  @override
  String toString() {
    return 'SalesItemEvent.fetchreasone()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchreasoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() toBillList,
    required TResult Function(Stocklist product) clearingState,
    required TResult Function(int id, bool increment) quantity,
    required TResult Function(int id, double newItemAmt, int qty)
        quantityFromBSheet,
    required TResult Function(Stocklist product, int qty, String? reason)
        itemFromBSheet,
    required TResult Function(String cata, String query) search,
    required TResult Function() clearingToBill,
    required TResult Function(Stocklist product, bool increment) itemAddToBil,
    required TResult Function() fetchreasone,
  }) {
    return fetchreasone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? toBillList,
    TResult? Function(Stocklist product)? clearingState,
    TResult? Function(int id, bool increment)? quantity,
    TResult? Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult? Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult? Function(String cata, String query)? search,
    TResult? Function()? clearingToBill,
    TResult? Function(Stocklist product, bool increment)? itemAddToBil,
    TResult? Function()? fetchreasone,
  }) {
    return fetchreasone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? toBillList,
    TResult Function(Stocklist product)? clearingState,
    TResult Function(int id, bool increment)? quantity,
    TResult Function(int id, double newItemAmt, int qty)? quantityFromBSheet,
    TResult Function(Stocklist product, int qty, String? reason)?
        itemFromBSheet,
    TResult Function(String cata, String query)? search,
    TResult Function()? clearingToBill,
    TResult Function(Stocklist product, bool increment)? itemAddToBil,
    TResult Function()? fetchreasone,
    required TResult orElse(),
  }) {
    if (fetchreasone != null) {
      return fetchreasone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemsList value) started,
    required TResult Function(FetchToBillList value) toBillList,
    required TResult Function(Clearing value) clearingState,
    required TResult Function(Quantity value) quantity,
    required TResult Function(QuantityFromBSheet value) quantityFromBSheet,
    required TResult Function(ItemFromBSheet value) itemFromBSheet,
    required TResult Function(SearchItem value) search,
    required TResult Function(ClearingToBillList value) clearingToBill,
    required TResult Function(AddToBill value) itemAddToBil,
    required TResult Function(Fetchreasone value) fetchreasone,
  }) {
    return fetchreasone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemsList value)? started,
    TResult? Function(FetchToBillList value)? toBillList,
    TResult? Function(Clearing value)? clearingState,
    TResult? Function(Quantity value)? quantity,
    TResult? Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult? Function(ItemFromBSheet value)? itemFromBSheet,
    TResult? Function(SearchItem value)? search,
    TResult? Function(ClearingToBillList value)? clearingToBill,
    TResult? Function(AddToBill value)? itemAddToBil,
    TResult? Function(Fetchreasone value)? fetchreasone,
  }) {
    return fetchreasone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemsList value)? started,
    TResult Function(FetchToBillList value)? toBillList,
    TResult Function(Clearing value)? clearingState,
    TResult Function(Quantity value)? quantity,
    TResult Function(QuantityFromBSheet value)? quantityFromBSheet,
    TResult Function(ItemFromBSheet value)? itemFromBSheet,
    TResult Function(SearchItem value)? search,
    TResult Function(ClearingToBillList value)? clearingToBill,
    TResult Function(AddToBill value)? itemAddToBil,
    TResult Function(Fetchreasone value)? fetchreasone,
    required TResult orElse(),
  }) {
    if (fetchreasone != null) {
      return fetchreasone(this);
    }
    return orElse();
  }
}

abstract class Fetchreasone implements SalesItemEvent {
  const factory Fetchreasone() = _$FetchreasoneImpl;
}

/// @nodoc
mixin _$SalesItemState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<String> get reasonlist => throw _privateConstructorUsedError;
  List<Stocklist> get items => throw _privateConstructorUsedError;
  List<Catagory> get cata => throw _privateConstructorUsedError;
  List<Stocklist> get toBillItems => throw _privateConstructorUsedError;
  String get selectedCata => throw _privateConstructorUsedError;
  List<dynamic> get mrp => throw _privateConstructorUsedError;
  int? get tempMrp => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;

  /// Create a copy of SalesItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalesItemStateCopyWith<SalesItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesItemStateCopyWith<$Res> {
  factory $SalesItemStateCopyWith(
          SalesItemState value, $Res Function(SalesItemState) then) =
      _$SalesItemStateCopyWithImpl<$Res, SalesItemState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<String> reasonlist,
      List<Stocklist> items,
      List<Catagory> cata,
      List<Stocklist> toBillItems,
      String selectedCata,
      List<dynamic> mrp,
      int? tempMrp,
      int? index,
      int qty});
}

/// @nodoc
class _$SalesItemStateCopyWithImpl<$Res, $Val extends SalesItemState>
    implements $SalesItemStateCopyWith<$Res> {
  _$SalesItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? reasonlist = null,
    Object? items = null,
    Object? cata = null,
    Object? toBillItems = null,
    Object? selectedCata = null,
    Object? mrp = null,
    Object? tempMrp = freezed,
    Object? index = freezed,
    Object? qty = null,
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
      reasonlist: null == reasonlist
          ? _value.reasonlist
          : reasonlist // ignore: cast_nullable_to_non_nullable
              as List<String>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Stocklist>,
      cata: null == cata
          ? _value.cata
          : cata // ignore: cast_nullable_to_non_nullable
              as List<Catagory>,
      toBillItems: null == toBillItems
          ? _value.toBillItems
          : toBillItems // ignore: cast_nullable_to_non_nullable
              as List<Stocklist>,
      selectedCata: null == selectedCata
          ? _value.selectedCata
          : selectedCata // ignore: cast_nullable_to_non_nullable
              as String,
      mrp: null == mrp
          ? _value.mrp
          : mrp // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      tempMrp: freezed == tempMrp
          ? _value.tempMrp
          : tempMrp // ignore: cast_nullable_to_non_nullable
              as int?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalesItemStateImplCopyWith<$Res>
    implements $SalesItemStateCopyWith<$Res> {
  factory _$$SalesItemStateImplCopyWith(_$SalesItemStateImpl value,
          $Res Function(_$SalesItemStateImpl) then) =
      __$$SalesItemStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<String> reasonlist,
      List<Stocklist> items,
      List<Catagory> cata,
      List<Stocklist> toBillItems,
      String selectedCata,
      List<dynamic> mrp,
      int? tempMrp,
      int? index,
      int qty});
}

/// @nodoc
class __$$SalesItemStateImplCopyWithImpl<$Res>
    extends _$SalesItemStateCopyWithImpl<$Res, _$SalesItemStateImpl>
    implements _$$SalesItemStateImplCopyWith<$Res> {
  __$$SalesItemStateImplCopyWithImpl(
      _$SalesItemStateImpl _value, $Res Function(_$SalesItemStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? reasonlist = null,
    Object? items = null,
    Object? cata = null,
    Object? toBillItems = null,
    Object? selectedCata = null,
    Object? mrp = null,
    Object? tempMrp = freezed,
    Object? index = freezed,
    Object? qty = null,
  }) {
    return _then(_$SalesItemStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      reasonlist: null == reasonlist
          ? _value._reasonlist
          : reasonlist // ignore: cast_nullable_to_non_nullable
              as List<String>,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Stocklist>,
      cata: null == cata
          ? _value._cata
          : cata // ignore: cast_nullable_to_non_nullable
              as List<Catagory>,
      toBillItems: null == toBillItems
          ? _value._toBillItems
          : toBillItems // ignore: cast_nullable_to_non_nullable
              as List<Stocklist>,
      selectedCata: null == selectedCata
          ? _value.selectedCata
          : selectedCata // ignore: cast_nullable_to_non_nullable
              as String,
      mrp: null == mrp
          ? _value._mrp
          : mrp // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      tempMrp: freezed == tempMrp
          ? _value.tempMrp
          : tempMrp // ignore: cast_nullable_to_non_nullable
              as int?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SalesItemStateImpl implements _SalesItemState {
  _$SalesItemStateImpl(
      {required this.isLoading,
      required this.isError,
      required final List<String> reasonlist,
      required final List<Stocklist> items,
      required final List<Catagory> cata,
      required final List<Stocklist> toBillItems,
      required this.selectedCata,
      required final List<dynamic> mrp,
      this.tempMrp,
      this.index,
      required this.qty})
      : _reasonlist = reasonlist,
        _items = items,
        _cata = cata,
        _toBillItems = toBillItems,
        _mrp = mrp;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<String> _reasonlist;
  @override
  List<String> get reasonlist {
    if (_reasonlist is EqualUnmodifiableListView) return _reasonlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reasonlist);
  }

  final List<Stocklist> _items;
  @override
  List<Stocklist> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<Catagory> _cata;
  @override
  List<Catagory> get cata {
    if (_cata is EqualUnmodifiableListView) return _cata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cata);
  }

  final List<Stocklist> _toBillItems;
  @override
  List<Stocklist> get toBillItems {
    if (_toBillItems is EqualUnmodifiableListView) return _toBillItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toBillItems);
  }

  @override
  final String selectedCata;
  final List<dynamic> _mrp;
  @override
  List<dynamic> get mrp {
    if (_mrp is EqualUnmodifiableListView) return _mrp;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mrp);
  }

  @override
  final int? tempMrp;
  @override
  final int? index;
  @override
  final int qty;

  @override
  String toString() {
    return 'SalesItemState(isLoading: $isLoading, isError: $isError, reasonlist: $reasonlist, items: $items, cata: $cata, toBillItems: $toBillItems, selectedCata: $selectedCata, mrp: $mrp, tempMrp: $tempMrp, index: $index, qty: $qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesItemStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._reasonlist, _reasonlist) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other._cata, _cata) &&
            const DeepCollectionEquality()
                .equals(other._toBillItems, _toBillItems) &&
            (identical(other.selectedCata, selectedCata) ||
                other.selectedCata == selectedCata) &&
            const DeepCollectionEquality().equals(other._mrp, _mrp) &&
            (identical(other.tempMrp, tempMrp) || other.tempMrp == tempMrp) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      const DeepCollectionEquality().hash(_reasonlist),
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_cata),
      const DeepCollectionEquality().hash(_toBillItems),
      selectedCata,
      const DeepCollectionEquality().hash(_mrp),
      tempMrp,
      index,
      qty);

  /// Create a copy of SalesItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesItemStateImplCopyWith<_$SalesItemStateImpl> get copyWith =>
      __$$SalesItemStateImplCopyWithImpl<_$SalesItemStateImpl>(
          this, _$identity);
}

abstract class _SalesItemState implements SalesItemState {
  factory _SalesItemState(
      {required final bool isLoading,
      required final bool isError,
      required final List<String> reasonlist,
      required final List<Stocklist> items,
      required final List<Catagory> cata,
      required final List<Stocklist> toBillItems,
      required final String selectedCata,
      required final List<dynamic> mrp,
      final int? tempMrp,
      final int? index,
      required final int qty}) = _$SalesItemStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<String> get reasonlist;
  @override
  List<Stocklist> get items;
  @override
  List<Catagory> get cata;
  @override
  List<Stocklist> get toBillItems;
  @override
  String get selectedCata;
  @override
  List<dynamic> get mrp;
  @override
  int? get tempMrp;
  @override
  int? get index;
  @override
  int get qty;

  /// Create a copy of SalesItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalesItemStateImplCopyWith<_$SalesItemStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
