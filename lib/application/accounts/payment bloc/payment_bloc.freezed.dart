// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountsInsertModel model) payment,
    required TResult Function() clearprint,
    required TResult Function(Customerslist customer, bool sunmi)
        paymentbillprint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountsInsertModel model)? payment,
    TResult? Function()? clearprint,
    TResult? Function(Customerslist customer, bool sunmi)? paymentbillprint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountsInsertModel model)? payment,
    TResult Function()? clearprint,
    TResult Function(Customerslist customer, bool sunmi)? paymentbillprint,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Payment value) payment,
    required TResult Function(Clearprint value) clearprint,
    required TResult Function(Paymentbillprint value) paymentbillprint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Payment value)? payment,
    TResult? Function(Clearprint value)? clearprint,
    TResult? Function(Paymentbillprint value)? paymentbillprint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Payment value)? payment,
    TResult Function(Clearprint value)? clearprint,
    TResult Function(Paymentbillprint value)? paymentbillprint,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res, PaymentEvent>;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res, $Val extends PaymentEvent>
    implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PaymentImplCopyWith<$Res> {
  factory _$$PaymentImplCopyWith(
          _$PaymentImpl value, $Res Function(_$PaymentImpl) then) =
      __$$PaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountsInsertModel model});
}

/// @nodoc
class __$$PaymentImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$PaymentImpl>
    implements _$$PaymentImplCopyWith<$Res> {
  __$$PaymentImplCopyWithImpl(
      _$PaymentImpl _value, $Res Function(_$PaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$PaymentImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AccountsInsertModel,
    ));
  }
}

/// @nodoc

class _$PaymentImpl implements Payment {
  const _$PaymentImpl({required this.model});

  @override
  final AccountsInsertModel model;

  @override
  String toString() {
    return 'PaymentEvent.payment(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      __$$PaymentImplCopyWithImpl<_$PaymentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountsInsertModel model) payment,
    required TResult Function() clearprint,
    required TResult Function(Customerslist customer, bool sunmi)
        paymentbillprint,
  }) {
    return payment(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountsInsertModel model)? payment,
    TResult? Function()? clearprint,
    TResult? Function(Customerslist customer, bool sunmi)? paymentbillprint,
  }) {
    return payment?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountsInsertModel model)? payment,
    TResult Function()? clearprint,
    TResult Function(Customerslist customer, bool sunmi)? paymentbillprint,
    required TResult orElse(),
  }) {
    if (payment != null) {
      return payment(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Payment value) payment,
    required TResult Function(Clearprint value) clearprint,
    required TResult Function(Paymentbillprint value) paymentbillprint,
  }) {
    return payment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Payment value)? payment,
    TResult? Function(Clearprint value)? clearprint,
    TResult? Function(Paymentbillprint value)? paymentbillprint,
  }) {
    return payment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Payment value)? payment,
    TResult Function(Clearprint value)? clearprint,
    TResult Function(Paymentbillprint value)? paymentbillprint,
    required TResult orElse(),
  }) {
    if (payment != null) {
      return payment(this);
    }
    return orElse();
  }
}

abstract class Payment implements PaymentEvent {
  const factory Payment({required final AccountsInsertModel model}) =
      _$PaymentImpl;

  AccountsInsertModel get model;

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearprintImplCopyWith<$Res> {
  factory _$$ClearprintImplCopyWith(
          _$ClearprintImpl value, $Res Function(_$ClearprintImpl) then) =
      __$$ClearprintImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearprintImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$ClearprintImpl>
    implements _$$ClearprintImplCopyWith<$Res> {
  __$$ClearprintImplCopyWithImpl(
      _$ClearprintImpl _value, $Res Function(_$ClearprintImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearprintImpl implements Clearprint {
  const _$ClearprintImpl();

  @override
  String toString() {
    return 'PaymentEvent.clearprint()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearprintImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountsInsertModel model) payment,
    required TResult Function() clearprint,
    required TResult Function(Customerslist customer, bool sunmi)
        paymentbillprint,
  }) {
    return clearprint();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountsInsertModel model)? payment,
    TResult? Function()? clearprint,
    TResult? Function(Customerslist customer, bool sunmi)? paymentbillprint,
  }) {
    return clearprint?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountsInsertModel model)? payment,
    TResult Function()? clearprint,
    TResult Function(Customerslist customer, bool sunmi)? paymentbillprint,
    required TResult orElse(),
  }) {
    if (clearprint != null) {
      return clearprint();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Payment value) payment,
    required TResult Function(Clearprint value) clearprint,
    required TResult Function(Paymentbillprint value) paymentbillprint,
  }) {
    return clearprint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Payment value)? payment,
    TResult? Function(Clearprint value)? clearprint,
    TResult? Function(Paymentbillprint value)? paymentbillprint,
  }) {
    return clearprint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Payment value)? payment,
    TResult Function(Clearprint value)? clearprint,
    TResult Function(Paymentbillprint value)? paymentbillprint,
    required TResult orElse(),
  }) {
    if (clearprint != null) {
      return clearprint(this);
    }
    return orElse();
  }
}

abstract class Clearprint implements PaymentEvent {
  const factory Clearprint() = _$ClearprintImpl;
}

/// @nodoc
abstract class _$$PaymentbillprintImplCopyWith<$Res> {
  factory _$$PaymentbillprintImplCopyWith(_$PaymentbillprintImpl value,
          $Res Function(_$PaymentbillprintImpl) then) =
      __$$PaymentbillprintImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Customerslist customer, bool sunmi});
}

/// @nodoc
class __$$PaymentbillprintImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$PaymentbillprintImpl>
    implements _$$PaymentbillprintImplCopyWith<$Res> {
  __$$PaymentbillprintImplCopyWithImpl(_$PaymentbillprintImpl _value,
      $Res Function(_$PaymentbillprintImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
    Object? sunmi = null,
  }) {
    return _then(_$PaymentbillprintImpl(
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customerslist,
      sunmi: null == sunmi
          ? _value.sunmi
          : sunmi // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PaymentbillprintImpl implements Paymentbillprint {
  const _$PaymentbillprintImpl({required this.customer, required this.sunmi});

  @override
  final Customerslist customer;
  @override
  final bool sunmi;

  @override
  String toString() {
    return 'PaymentEvent.paymentbillprint(customer: $customer, sunmi: $sunmi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentbillprintImpl &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.sunmi, sunmi) || other.sunmi == sunmi));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customer, sunmi);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentbillprintImplCopyWith<_$PaymentbillprintImpl> get copyWith =>
      __$$PaymentbillprintImplCopyWithImpl<_$PaymentbillprintImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountsInsertModel model) payment,
    required TResult Function() clearprint,
    required TResult Function(Customerslist customer, bool sunmi)
        paymentbillprint,
  }) {
    return paymentbillprint(customer, sunmi);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountsInsertModel model)? payment,
    TResult? Function()? clearprint,
    TResult? Function(Customerslist customer, bool sunmi)? paymentbillprint,
  }) {
    return paymentbillprint?.call(customer, sunmi);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountsInsertModel model)? payment,
    TResult Function()? clearprint,
    TResult Function(Customerslist customer, bool sunmi)? paymentbillprint,
    required TResult orElse(),
  }) {
    if (paymentbillprint != null) {
      return paymentbillprint(customer, sunmi);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Payment value) payment,
    required TResult Function(Clearprint value) clearprint,
    required TResult Function(Paymentbillprint value) paymentbillprint,
  }) {
    return paymentbillprint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Payment value)? payment,
    TResult? Function(Clearprint value)? clearprint,
    TResult? Function(Paymentbillprint value)? paymentbillprint,
  }) {
    return paymentbillprint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Payment value)? payment,
    TResult Function(Clearprint value)? clearprint,
    TResult Function(Paymentbillprint value)? paymentbillprint,
    required TResult orElse(),
  }) {
    if (paymentbillprint != null) {
      return paymentbillprint(this);
    }
    return orElse();
  }
}

abstract class Paymentbillprint implements PaymentEvent {
  const factory Paymentbillprint(
      {required final Customerslist customer,
      required final bool sunmi}) = _$PaymentbillprintImpl;

  Customerslist get customer;
  bool get sunmi;

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentbillprintImplCopyWith<_$PaymentbillprintImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get isError => throw _privateConstructorUsedError;
  bool get addpayment => throw _privateConstructorUsedError;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call({bool isLoading, int isError, bool addpayment});
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? addpayment = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as int,
      addpayment: null == addpayment
          ? _value.addpayment
          : addpayment // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentStateImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$PaymentStateImplCopyWith(
          _$PaymentStateImpl value, $Res Function(_$PaymentStateImpl) then) =
      __$$PaymentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, int isError, bool addpayment});
}

/// @nodoc
class __$$PaymentStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentStateImpl>
    implements _$$PaymentStateImplCopyWith<$Res> {
  __$$PaymentStateImplCopyWithImpl(
      _$PaymentStateImpl _value, $Res Function(_$PaymentStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? addpayment = null,
  }) {
    return _then(_$PaymentStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as int,
      addpayment: null == addpayment
          ? _value.addpayment
          : addpayment // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PaymentStateImpl implements _PaymentState {
  _$PaymentStateImpl(
      {required this.isLoading,
      required this.isError,
      required this.addpayment});

  @override
  final bool isLoading;
  @override
  final int isError;
  @override
  final bool addpayment;

  @override
  String toString() {
    return 'PaymentState(isLoading: $isLoading, isError: $isError, addpayment: $addpayment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.addpayment, addpayment) ||
                other.addpayment == addpayment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, addpayment);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      __$$PaymentStateImplCopyWithImpl<_$PaymentStateImpl>(this, _$identity);
}

abstract class _PaymentState implements PaymentState {
  factory _PaymentState(
      {required final bool isLoading,
      required final int isError,
      required final bool addpayment}) = _$PaymentStateImpl;

  @override
  bool get isLoading;
  @override
  int get isError;
  @override
  bool get addpayment;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
