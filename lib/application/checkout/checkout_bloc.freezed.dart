// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Stocklist> selectedstock) checkout,
    required TResult Function(String productid) vanstockcheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Stocklist> selectedstock)? checkout,
    TResult? Function(String productid)? vanstockcheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Stocklist> selectedstock)? checkout,
    TResult Function(String productid)? vanstockcheck,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Checkout value) checkout,
    required TResult Function(Vanstockcheck value) vanstockcheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Checkout value)? checkout,
    TResult? Function(Vanstockcheck value)? vanstockcheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Checkout value)? checkout,
    TResult Function(Vanstockcheck value)? vanstockcheck,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutEventCopyWith<$Res> {
  factory $CheckoutEventCopyWith(
          CheckoutEvent value, $Res Function(CheckoutEvent) then) =
      _$CheckoutEventCopyWithImpl<$Res, CheckoutEvent>;
}

/// @nodoc
class _$CheckoutEventCopyWithImpl<$Res, $Val extends CheckoutEvent>
    implements $CheckoutEventCopyWith<$Res> {
  _$CheckoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckoutImplCopyWith<$Res> {
  factory _$$CheckoutImplCopyWith(
          _$CheckoutImpl value, $Res Function(_$CheckoutImpl) then) =
      __$$CheckoutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Stocklist> selectedstock});
}

/// @nodoc
class __$$CheckoutImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$CheckoutImpl>
    implements _$$CheckoutImplCopyWith<$Res> {
  __$$CheckoutImplCopyWithImpl(
      _$CheckoutImpl _value, $Res Function(_$CheckoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedstock = null,
  }) {
    return _then(_$CheckoutImpl(
      selectedstock: null == selectedstock
          ? _value._selectedstock
          : selectedstock // ignore: cast_nullable_to_non_nullable
              as List<Stocklist>,
    ));
  }
}

/// @nodoc

class _$CheckoutImpl implements Checkout {
  const _$CheckoutImpl({required final List<Stocklist> selectedstock})
      : _selectedstock = selectedstock;

  final List<Stocklist> _selectedstock;
  @override
  List<Stocklist> get selectedstock {
    if (_selectedstock is EqualUnmodifiableListView) return _selectedstock;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedstock);
  }

  @override
  String toString() {
    return 'CheckoutEvent.checkout(selectedstock: $selectedstock)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutImpl &&
            const DeepCollectionEquality()
                .equals(other._selectedstock, _selectedstock));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_selectedstock));

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutImplCopyWith<_$CheckoutImpl> get copyWith =>
      __$$CheckoutImplCopyWithImpl<_$CheckoutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Stocklist> selectedstock) checkout,
    required TResult Function(String productid) vanstockcheck,
  }) {
    return checkout(selectedstock);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Stocklist> selectedstock)? checkout,
    TResult? Function(String productid)? vanstockcheck,
  }) {
    return checkout?.call(selectedstock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Stocklist> selectedstock)? checkout,
    TResult Function(String productid)? vanstockcheck,
    required TResult orElse(),
  }) {
    if (checkout != null) {
      return checkout(selectedstock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Checkout value) checkout,
    required TResult Function(Vanstockcheck value) vanstockcheck,
  }) {
    return checkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Checkout value)? checkout,
    TResult? Function(Vanstockcheck value)? vanstockcheck,
  }) {
    return checkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Checkout value)? checkout,
    TResult Function(Vanstockcheck value)? vanstockcheck,
    required TResult orElse(),
  }) {
    if (checkout != null) {
      return checkout(this);
    }
    return orElse();
  }
}

abstract class Checkout implements CheckoutEvent {
  const factory Checkout({required final List<Stocklist> selectedstock}) =
      _$CheckoutImpl;

  List<Stocklist> get selectedstock;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutImplCopyWith<_$CheckoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VanstockcheckImplCopyWith<$Res> {
  factory _$$VanstockcheckImplCopyWith(
          _$VanstockcheckImpl value, $Res Function(_$VanstockcheckImpl) then) =
      __$$VanstockcheckImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productid});
}

/// @nodoc
class __$$VanstockcheckImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$VanstockcheckImpl>
    implements _$$VanstockcheckImplCopyWith<$Res> {
  __$$VanstockcheckImplCopyWithImpl(
      _$VanstockcheckImpl _value, $Res Function(_$VanstockcheckImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productid = null,
  }) {
    return _then(_$VanstockcheckImpl(
      productid: null == productid
          ? _value.productid
          : productid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VanstockcheckImpl implements Vanstockcheck {
  const _$VanstockcheckImpl({required this.productid});

  @override
  final String productid;

  @override
  String toString() {
    return 'CheckoutEvent.vanstockcheck(productid: $productid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VanstockcheckImpl &&
            (identical(other.productid, productid) ||
                other.productid == productid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productid);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VanstockcheckImplCopyWith<_$VanstockcheckImpl> get copyWith =>
      __$$VanstockcheckImplCopyWithImpl<_$VanstockcheckImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Stocklist> selectedstock) checkout,
    required TResult Function(String productid) vanstockcheck,
  }) {
    return vanstockcheck(productid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Stocklist> selectedstock)? checkout,
    TResult? Function(String productid)? vanstockcheck,
  }) {
    return vanstockcheck?.call(productid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Stocklist> selectedstock)? checkout,
    TResult Function(String productid)? vanstockcheck,
    required TResult orElse(),
  }) {
    if (vanstockcheck != null) {
      return vanstockcheck(productid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Checkout value) checkout,
    required TResult Function(Vanstockcheck value) vanstockcheck,
  }) {
    return vanstockcheck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Checkout value)? checkout,
    TResult? Function(Vanstockcheck value)? vanstockcheck,
  }) {
    return vanstockcheck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Checkout value)? checkout,
    TResult Function(Vanstockcheck value)? vanstockcheck,
    required TResult orElse(),
  }) {
    if (vanstockcheck != null) {
      return vanstockcheck(this);
    }
    return orElse();
  }
}

abstract class Vanstockcheck implements CheckoutEvent {
  const factory Vanstockcheck({required final String productid}) =
      _$VanstockcheckImpl;

  String get productid;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VanstockcheckImplCopyWith<_$VanstockcheckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckoutState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get outodstock => throw _privateConstructorUsedError;
  int get vanstock => throw _privateConstructorUsedError;
  bool get isLoadingvan => throw _privateConstructorUsedError;
  List<Stocklist> get outofstocklist => throw _privateConstructorUsedError;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckoutStateCopyWith<CheckoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutStateCopyWith<$Res> {
  factory $CheckoutStateCopyWith(
          CheckoutState value, $Res Function(CheckoutState) then) =
      _$CheckoutStateCopyWithImpl<$Res, CheckoutState>;
  @useResult
  $Res call(
      {bool isLoading,
      int outodstock,
      int vanstock,
      bool isLoadingvan,
      List<Stocklist> outofstocklist});
}

/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res, $Val extends CheckoutState>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? outodstock = null,
    Object? vanstock = null,
    Object? isLoadingvan = null,
    Object? outofstocklist = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      outodstock: null == outodstock
          ? _value.outodstock
          : outodstock // ignore: cast_nullable_to_non_nullable
              as int,
      vanstock: null == vanstock
          ? _value.vanstock
          : vanstock // ignore: cast_nullable_to_non_nullable
              as int,
      isLoadingvan: null == isLoadingvan
          ? _value.isLoadingvan
          : isLoadingvan // ignore: cast_nullable_to_non_nullable
              as bool,
      outofstocklist: null == outofstocklist
          ? _value.outofstocklist
          : outofstocklist // ignore: cast_nullable_to_non_nullable
              as List<Stocklist>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckoutStateImplCopyWith<$Res>
    implements $CheckoutStateCopyWith<$Res> {
  factory _$$CheckoutStateImplCopyWith(
          _$CheckoutStateImpl value, $Res Function(_$CheckoutStateImpl) then) =
      __$$CheckoutStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      int outodstock,
      int vanstock,
      bool isLoadingvan,
      List<Stocklist> outofstocklist});
}

/// @nodoc
class __$$CheckoutStateImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$CheckoutStateImpl>
    implements _$$CheckoutStateImplCopyWith<$Res> {
  __$$CheckoutStateImplCopyWithImpl(
      _$CheckoutStateImpl _value, $Res Function(_$CheckoutStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? outodstock = null,
    Object? vanstock = null,
    Object? isLoadingvan = null,
    Object? outofstocklist = null,
  }) {
    return _then(_$CheckoutStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      outodstock: null == outodstock
          ? _value.outodstock
          : outodstock // ignore: cast_nullable_to_non_nullable
              as int,
      vanstock: null == vanstock
          ? _value.vanstock
          : vanstock // ignore: cast_nullable_to_non_nullable
              as int,
      isLoadingvan: null == isLoadingvan
          ? _value.isLoadingvan
          : isLoadingvan // ignore: cast_nullable_to_non_nullable
              as bool,
      outofstocklist: null == outofstocklist
          ? _value._outofstocklist
          : outofstocklist // ignore: cast_nullable_to_non_nullable
              as List<Stocklist>,
    ));
  }
}

/// @nodoc

class _$CheckoutStateImpl implements _CheckoutState {
  _$CheckoutStateImpl(
      {required this.isLoading,
      required this.outodstock,
      required this.vanstock,
      required this.isLoadingvan,
      required final List<Stocklist> outofstocklist})
      : _outofstocklist = outofstocklist;

  @override
  final bool isLoading;
  @override
  final int outodstock;
  @override
  final int vanstock;
  @override
  final bool isLoadingvan;
  final List<Stocklist> _outofstocklist;
  @override
  List<Stocklist> get outofstocklist {
    if (_outofstocklist is EqualUnmodifiableListView) return _outofstocklist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outofstocklist);
  }

  @override
  String toString() {
    return 'CheckoutState(isLoading: $isLoading, outodstock: $outodstock, vanstock: $vanstock, isLoadingvan: $isLoadingvan, outofstocklist: $outofstocklist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.outodstock, outodstock) ||
                other.outodstock == outodstock) &&
            (identical(other.vanstock, vanstock) ||
                other.vanstock == vanstock) &&
            (identical(other.isLoadingvan, isLoadingvan) ||
                other.isLoadingvan == isLoadingvan) &&
            const DeepCollectionEquality()
                .equals(other._outofstocklist, _outofstocklist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, outodstock, vanstock,
      isLoadingvan, const DeepCollectionEquality().hash(_outofstocklist));

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutStateImplCopyWith<_$CheckoutStateImpl> get copyWith =>
      __$$CheckoutStateImplCopyWithImpl<_$CheckoutStateImpl>(this, _$identity);
}

abstract class _CheckoutState implements CheckoutState {
  factory _CheckoutState(
      {required final bool isLoading,
      required final int outodstock,
      required final int vanstock,
      required final bool isLoadingvan,
      required final List<Stocklist> outofstocklist}) = _$CheckoutStateImpl;

  @override
  bool get isLoading;
  @override
  int get outodstock;
  @override
  int get vanstock;
  @override
  bool get isLoadingvan;
  @override
  List<Stocklist> get outofstocklist;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutStateImplCopyWith<_$CheckoutStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
