// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customerpart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerpartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String addr, String email,
            String phone, String gst, String state, String district, String id)
        add,
    required TResult Function() cfetchlist,
    required TResult Function(Customerslist biller) selectBiller,
    required TResult Function() removeBiller,
    required TResult Function(String query) searchCustomer,
    required TResult Function(String name, String addr, String email,
            String phone, String gst, String state, String district, String id)
        editdata,
    required TResult Function(String cusId) remarklist,
    required TResult Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)
        addremark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        add,
    TResult? Function()? cfetchlist,
    TResult? Function(Customerslist biller)? selectBiller,
    TResult? Function()? removeBiller,
    TResult? Function(String query)? searchCustomer,
    TResult? Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        editdata,
    TResult? Function(String cusId)? remarklist,
    TResult? Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)?
        addremark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        add,
    TResult Function()? cfetchlist,
    TResult Function(Customerslist biller)? selectBiller,
    TResult Function()? removeBiller,
    TResult Function(String query)? searchCustomer,
    TResult Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        editdata,
    TResult Function(String cusId)? remarklist,
    TResult Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)?
        addremark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Add value) add,
    required TResult Function(CFetchlist value) cfetchlist,
    required TResult Function(SelectBiller value) selectBiller,
    required TResult Function(RemoveBiller value) removeBiller,
    required TResult Function(SearchCustomer value) searchCustomer,
    required TResult Function(Editdata value) editdata,
    required TResult Function(Remarklist value) remarklist,
    required TResult Function(Addremark value) addremark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Add value)? add,
    TResult? Function(CFetchlist value)? cfetchlist,
    TResult? Function(SelectBiller value)? selectBiller,
    TResult? Function(RemoveBiller value)? removeBiller,
    TResult? Function(SearchCustomer value)? searchCustomer,
    TResult? Function(Editdata value)? editdata,
    TResult? Function(Remarklist value)? remarklist,
    TResult? Function(Addremark value)? addremark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(CFetchlist value)? cfetchlist,
    TResult Function(SelectBiller value)? selectBiller,
    TResult Function(RemoveBiller value)? removeBiller,
    TResult Function(SearchCustomer value)? searchCustomer,
    TResult Function(Editdata value)? editdata,
    TResult Function(Remarklist value)? remarklist,
    TResult Function(Addremark value)? addremark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerpartEventCopyWith<$Res> {
  factory $CustomerpartEventCopyWith(
          CustomerpartEvent value, $Res Function(CustomerpartEvent) then) =
      _$CustomerpartEventCopyWithImpl<$Res, CustomerpartEvent>;
}

/// @nodoc
class _$CustomerpartEventCopyWithImpl<$Res, $Val extends CustomerpartEvent>
    implements $CustomerpartEventCopyWith<$Res> {
  _$CustomerpartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerpartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String addr,
      String email,
      String phone,
      String gst,
      String state,
      String district,
      String id});
}

/// @nodoc
class __$$AddImplCopyWithImpl<$Res>
    extends _$CustomerpartEventCopyWithImpl<$Res, _$AddImpl>
    implements _$$AddImplCopyWith<$Res> {
  __$$AddImplCopyWithImpl(_$AddImpl _value, $Res Function(_$AddImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerpartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? addr = null,
    Object? email = null,
    Object? phone = null,
    Object? gst = null,
    Object? state = null,
    Object? district = null,
    Object? id = null,
  }) {
    return _then(_$AddImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      addr: null == addr
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      gst: null == gst
          ? _value.gst
          : gst // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddImpl implements Add {
  const _$AddImpl(
      {required this.name,
      required this.addr,
      required this.email,
      required this.phone,
      required this.gst,
      required this.state,
      required this.district,
      required this.id});

  @override
  final String name;
  @override
  final String addr;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String gst;
  @override
  final String state;
  @override
  final String district;
  @override
  final String id;

  @override
  String toString() {
    return 'CustomerpartEvent.add(name: $name, addr: $addr, email: $email, phone: $phone, gst: $gst, state: $state, district: $district, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.addr, addr) || other.addr == addr) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.gst, gst) || other.gst == gst) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, addr, email, phone, gst, state, district, id);

  /// Create a copy of CustomerpartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      __$$AddImplCopyWithImpl<_$AddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String addr, String email,
            String phone, String gst, String state, String district, String id)
        add,
    required TResult Function() cfetchlist,
    required TResult Function(Customerslist biller) selectBiller,
    required TResult Function() removeBiller,
    required TResult Function(String query) searchCustomer,
    required TResult Function(String name, String addr, String email,
            String phone, String gst, String state, String district, String id)
        editdata,
    required TResult Function(String cusId) remarklist,
    required TResult Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)
        addremark,
  }) {
    return add(name, addr, email, phone, gst, state, district, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        add,
    TResult? Function()? cfetchlist,
    TResult? Function(Customerslist biller)? selectBiller,
    TResult? Function()? removeBiller,
    TResult? Function(String query)? searchCustomer,
    TResult? Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        editdata,
    TResult? Function(String cusId)? remarklist,
    TResult? Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)?
        addremark,
  }) {
    return add?.call(name, addr, email, phone, gst, state, district, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        add,
    TResult Function()? cfetchlist,
    TResult Function(Customerslist biller)? selectBiller,
    TResult Function()? removeBiller,
    TResult Function(String query)? searchCustomer,
    TResult Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        editdata,
    TResult Function(String cusId)? remarklist,
    TResult Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)?
        addremark,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(name, addr, email, phone, gst, state, district, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Add value) add,
    required TResult Function(CFetchlist value) cfetchlist,
    required TResult Function(SelectBiller value) selectBiller,
    required TResult Function(RemoveBiller value) removeBiller,
    required TResult Function(SearchCustomer value) searchCustomer,
    required TResult Function(Editdata value) editdata,
    required TResult Function(Remarklist value) remarklist,
    required TResult Function(Addremark value) addremark,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Add value)? add,
    TResult? Function(CFetchlist value)? cfetchlist,
    TResult? Function(SelectBiller value)? selectBiller,
    TResult? Function(RemoveBiller value)? removeBiller,
    TResult? Function(SearchCustomer value)? searchCustomer,
    TResult? Function(Editdata value)? editdata,
    TResult? Function(Remarklist value)? remarklist,
    TResult? Function(Addremark value)? addremark,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(CFetchlist value)? cfetchlist,
    TResult Function(SelectBiller value)? selectBiller,
    TResult Function(RemoveBiller value)? removeBiller,
    TResult Function(SearchCustomer value)? searchCustomer,
    TResult Function(Editdata value)? editdata,
    TResult Function(Remarklist value)? remarklist,
    TResult Function(Addremark value)? addremark,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class Add implements CustomerpartEvent {
  const factory Add(
      {required final String name,
      required final String addr,
      required final String email,
      required final String phone,
      required final String gst,
      required final String state,
      required final String district,
      required final String id}) = _$AddImpl;

  String get name;
  String get addr;
  String get email;
  String get phone;
  String get gst;
  String get state;
  String get district;
  String get id;

  /// Create a copy of CustomerpartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CFetchlistImplCopyWith<$Res> {
  factory _$$CFetchlistImplCopyWith(
          _$CFetchlistImpl value, $Res Function(_$CFetchlistImpl) then) =
      __$$CFetchlistImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CFetchlistImplCopyWithImpl<$Res>
    extends _$CustomerpartEventCopyWithImpl<$Res, _$CFetchlistImpl>
    implements _$$CFetchlistImplCopyWith<$Res> {
  __$$CFetchlistImplCopyWithImpl(
      _$CFetchlistImpl _value, $Res Function(_$CFetchlistImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerpartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CFetchlistImpl implements CFetchlist {
  const _$CFetchlistImpl();

  @override
  String toString() {
    return 'CustomerpartEvent.cfetchlist()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CFetchlistImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String addr, String email,
            String phone, String gst, String state, String district, String id)
        add,
    required TResult Function() cfetchlist,
    required TResult Function(Customerslist biller) selectBiller,
    required TResult Function() removeBiller,
    required TResult Function(String query) searchCustomer,
    required TResult Function(String name, String addr, String email,
            String phone, String gst, String state, String district, String id)
        editdata,
    required TResult Function(String cusId) remarklist,
    required TResult Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)
        addremark,
  }) {
    return cfetchlist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        add,
    TResult? Function()? cfetchlist,
    TResult? Function(Customerslist biller)? selectBiller,
    TResult? Function()? removeBiller,
    TResult? Function(String query)? searchCustomer,
    TResult? Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        editdata,
    TResult? Function(String cusId)? remarklist,
    TResult? Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)?
        addremark,
  }) {
    return cfetchlist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        add,
    TResult Function()? cfetchlist,
    TResult Function(Customerslist biller)? selectBiller,
    TResult Function()? removeBiller,
    TResult Function(String query)? searchCustomer,
    TResult Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        editdata,
    TResult Function(String cusId)? remarklist,
    TResult Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)?
        addremark,
    required TResult orElse(),
  }) {
    if (cfetchlist != null) {
      return cfetchlist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Add value) add,
    required TResult Function(CFetchlist value) cfetchlist,
    required TResult Function(SelectBiller value) selectBiller,
    required TResult Function(RemoveBiller value) removeBiller,
    required TResult Function(SearchCustomer value) searchCustomer,
    required TResult Function(Editdata value) editdata,
    required TResult Function(Remarklist value) remarklist,
    required TResult Function(Addremark value) addremark,
  }) {
    return cfetchlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Add value)? add,
    TResult? Function(CFetchlist value)? cfetchlist,
    TResult? Function(SelectBiller value)? selectBiller,
    TResult? Function(RemoveBiller value)? removeBiller,
    TResult? Function(SearchCustomer value)? searchCustomer,
    TResult? Function(Editdata value)? editdata,
    TResult? Function(Remarklist value)? remarklist,
    TResult? Function(Addremark value)? addremark,
  }) {
    return cfetchlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(CFetchlist value)? cfetchlist,
    TResult Function(SelectBiller value)? selectBiller,
    TResult Function(RemoveBiller value)? removeBiller,
    TResult Function(SearchCustomer value)? searchCustomer,
    TResult Function(Editdata value)? editdata,
    TResult Function(Remarklist value)? remarklist,
    TResult Function(Addremark value)? addremark,
    required TResult orElse(),
  }) {
    if (cfetchlist != null) {
      return cfetchlist(this);
    }
    return orElse();
  }
}

abstract class CFetchlist implements CustomerpartEvent {
  const factory CFetchlist() = _$CFetchlistImpl;
}

/// @nodoc
abstract class _$$SelectBillerImplCopyWith<$Res> {
  factory _$$SelectBillerImplCopyWith(
          _$SelectBillerImpl value, $Res Function(_$SelectBillerImpl) then) =
      __$$SelectBillerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Customerslist biller});
}

/// @nodoc
class __$$SelectBillerImplCopyWithImpl<$Res>
    extends _$CustomerpartEventCopyWithImpl<$Res, _$SelectBillerImpl>
    implements _$$SelectBillerImplCopyWith<$Res> {
  __$$SelectBillerImplCopyWithImpl(
      _$SelectBillerImpl _value, $Res Function(_$SelectBillerImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerpartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? biller = null,
  }) {
    return _then(_$SelectBillerImpl(
      biller: null == biller
          ? _value.biller
          : biller // ignore: cast_nullable_to_non_nullable
              as Customerslist,
    ));
  }
}

/// @nodoc

class _$SelectBillerImpl implements SelectBiller {
  const _$SelectBillerImpl({required this.biller});

  @override
  final Customerslist biller;

  @override
  String toString() {
    return 'CustomerpartEvent.selectBiller(biller: $biller)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectBillerImpl &&
            (identical(other.biller, biller) || other.biller == biller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, biller);

  /// Create a copy of CustomerpartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectBillerImplCopyWith<_$SelectBillerImpl> get copyWith =>
      __$$SelectBillerImplCopyWithImpl<_$SelectBillerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String addr, String email,
            String phone, String gst, String state, String district, String id)
        add,
    required TResult Function() cfetchlist,
    required TResult Function(Customerslist biller) selectBiller,
    required TResult Function() removeBiller,
    required TResult Function(String query) searchCustomer,
    required TResult Function(String name, String addr, String email,
            String phone, String gst, String state, String district, String id)
        editdata,
    required TResult Function(String cusId) remarklist,
    required TResult Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)
        addremark,
  }) {
    return selectBiller(biller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        add,
    TResult? Function()? cfetchlist,
    TResult? Function(Customerslist biller)? selectBiller,
    TResult? Function()? removeBiller,
    TResult? Function(String query)? searchCustomer,
    TResult? Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        editdata,
    TResult? Function(String cusId)? remarklist,
    TResult? Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)?
        addremark,
  }) {
    return selectBiller?.call(biller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        add,
    TResult Function()? cfetchlist,
    TResult Function(Customerslist biller)? selectBiller,
    TResult Function()? removeBiller,
    TResult Function(String query)? searchCustomer,
    TResult Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        editdata,
    TResult Function(String cusId)? remarklist,
    TResult Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)?
        addremark,
    required TResult orElse(),
  }) {
    if (selectBiller != null) {
      return selectBiller(biller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Add value) add,
    required TResult Function(CFetchlist value) cfetchlist,
    required TResult Function(SelectBiller value) selectBiller,
    required TResult Function(RemoveBiller value) removeBiller,
    required TResult Function(SearchCustomer value) searchCustomer,
    required TResult Function(Editdata value) editdata,
    required TResult Function(Remarklist value) remarklist,
    required TResult Function(Addremark value) addremark,
  }) {
    return selectBiller(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Add value)? add,
    TResult? Function(CFetchlist value)? cfetchlist,
    TResult? Function(SelectBiller value)? selectBiller,
    TResult? Function(RemoveBiller value)? removeBiller,
    TResult? Function(SearchCustomer value)? searchCustomer,
    TResult? Function(Editdata value)? editdata,
    TResult? Function(Remarklist value)? remarklist,
    TResult? Function(Addremark value)? addremark,
  }) {
    return selectBiller?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(CFetchlist value)? cfetchlist,
    TResult Function(SelectBiller value)? selectBiller,
    TResult Function(RemoveBiller value)? removeBiller,
    TResult Function(SearchCustomer value)? searchCustomer,
    TResult Function(Editdata value)? editdata,
    TResult Function(Remarklist value)? remarklist,
    TResult Function(Addremark value)? addremark,
    required TResult orElse(),
  }) {
    if (selectBiller != null) {
      return selectBiller(this);
    }
    return orElse();
  }
}

abstract class SelectBiller implements CustomerpartEvent {
  const factory SelectBiller({required final Customerslist biller}) =
      _$SelectBillerImpl;

  Customerslist get biller;

  /// Create a copy of CustomerpartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectBillerImplCopyWith<_$SelectBillerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveBillerImplCopyWith<$Res> {
  factory _$$RemoveBillerImplCopyWith(
          _$RemoveBillerImpl value, $Res Function(_$RemoveBillerImpl) then) =
      __$$RemoveBillerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveBillerImplCopyWithImpl<$Res>
    extends _$CustomerpartEventCopyWithImpl<$Res, _$RemoveBillerImpl>
    implements _$$RemoveBillerImplCopyWith<$Res> {
  __$$RemoveBillerImplCopyWithImpl(
      _$RemoveBillerImpl _value, $Res Function(_$RemoveBillerImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerpartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RemoveBillerImpl implements RemoveBiller {
  const _$RemoveBillerImpl();

  @override
  String toString() {
    return 'CustomerpartEvent.removeBiller()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveBillerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String addr, String email,
            String phone, String gst, String state, String district, String id)
        add,
    required TResult Function() cfetchlist,
    required TResult Function(Customerslist biller) selectBiller,
    required TResult Function() removeBiller,
    required TResult Function(String query) searchCustomer,
    required TResult Function(String name, String addr, String email,
            String phone, String gst, String state, String district, String id)
        editdata,
    required TResult Function(String cusId) remarklist,
    required TResult Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)
        addremark,
  }) {
    return removeBiller();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        add,
    TResult? Function()? cfetchlist,
    TResult? Function(Customerslist biller)? selectBiller,
    TResult? Function()? removeBiller,
    TResult? Function(String query)? searchCustomer,
    TResult? Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        editdata,
    TResult? Function(String cusId)? remarklist,
    TResult? Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)?
        addremark,
  }) {
    return removeBiller?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        add,
    TResult Function()? cfetchlist,
    TResult Function(Customerslist biller)? selectBiller,
    TResult Function()? removeBiller,
    TResult Function(String query)? searchCustomer,
    TResult Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        editdata,
    TResult Function(String cusId)? remarklist,
    TResult Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)?
        addremark,
    required TResult orElse(),
  }) {
    if (removeBiller != null) {
      return removeBiller();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Add value) add,
    required TResult Function(CFetchlist value) cfetchlist,
    required TResult Function(SelectBiller value) selectBiller,
    required TResult Function(RemoveBiller value) removeBiller,
    required TResult Function(SearchCustomer value) searchCustomer,
    required TResult Function(Editdata value) editdata,
    required TResult Function(Remarklist value) remarklist,
    required TResult Function(Addremark value) addremark,
  }) {
    return removeBiller(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Add value)? add,
    TResult? Function(CFetchlist value)? cfetchlist,
    TResult? Function(SelectBiller value)? selectBiller,
    TResult? Function(RemoveBiller value)? removeBiller,
    TResult? Function(SearchCustomer value)? searchCustomer,
    TResult? Function(Editdata value)? editdata,
    TResult? Function(Remarklist value)? remarklist,
    TResult? Function(Addremark value)? addremark,
  }) {
    return removeBiller?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(CFetchlist value)? cfetchlist,
    TResult Function(SelectBiller value)? selectBiller,
    TResult Function(RemoveBiller value)? removeBiller,
    TResult Function(SearchCustomer value)? searchCustomer,
    TResult Function(Editdata value)? editdata,
    TResult Function(Remarklist value)? remarklist,
    TResult Function(Addremark value)? addremark,
    required TResult orElse(),
  }) {
    if (removeBiller != null) {
      return removeBiller(this);
    }
    return orElse();
  }
}

abstract class RemoveBiller implements CustomerpartEvent {
  const factory RemoveBiller() = _$RemoveBillerImpl;
}

/// @nodoc
abstract class _$$SearchCustomerImplCopyWith<$Res> {
  factory _$$SearchCustomerImplCopyWith(_$SearchCustomerImpl value,
          $Res Function(_$SearchCustomerImpl) then) =
      __$$SearchCustomerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchCustomerImplCopyWithImpl<$Res>
    extends _$CustomerpartEventCopyWithImpl<$Res, _$SearchCustomerImpl>
    implements _$$SearchCustomerImplCopyWith<$Res> {
  __$$SearchCustomerImplCopyWithImpl(
      _$SearchCustomerImpl _value, $Res Function(_$SearchCustomerImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerpartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchCustomerImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCustomerImpl implements SearchCustomer {
  const _$SearchCustomerImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'CustomerpartEvent.searchCustomer(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCustomerImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of CustomerpartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCustomerImplCopyWith<_$SearchCustomerImpl> get copyWith =>
      __$$SearchCustomerImplCopyWithImpl<_$SearchCustomerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String addr, String email,
            String phone, String gst, String state, String district, String id)
        add,
    required TResult Function() cfetchlist,
    required TResult Function(Customerslist biller) selectBiller,
    required TResult Function() removeBiller,
    required TResult Function(String query) searchCustomer,
    required TResult Function(String name, String addr, String email,
            String phone, String gst, String state, String district, String id)
        editdata,
    required TResult Function(String cusId) remarklist,
    required TResult Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)
        addremark,
  }) {
    return searchCustomer(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        add,
    TResult? Function()? cfetchlist,
    TResult? Function(Customerslist biller)? selectBiller,
    TResult? Function()? removeBiller,
    TResult? Function(String query)? searchCustomer,
    TResult? Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        editdata,
    TResult? Function(String cusId)? remarklist,
    TResult? Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)?
        addremark,
  }) {
    return searchCustomer?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        add,
    TResult Function()? cfetchlist,
    TResult Function(Customerslist biller)? selectBiller,
    TResult Function()? removeBiller,
    TResult Function(String query)? searchCustomer,
    TResult Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        editdata,
    TResult Function(String cusId)? remarklist,
    TResult Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)?
        addremark,
    required TResult orElse(),
  }) {
    if (searchCustomer != null) {
      return searchCustomer(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Add value) add,
    required TResult Function(CFetchlist value) cfetchlist,
    required TResult Function(SelectBiller value) selectBiller,
    required TResult Function(RemoveBiller value) removeBiller,
    required TResult Function(SearchCustomer value) searchCustomer,
    required TResult Function(Editdata value) editdata,
    required TResult Function(Remarklist value) remarklist,
    required TResult Function(Addremark value) addremark,
  }) {
    return searchCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Add value)? add,
    TResult? Function(CFetchlist value)? cfetchlist,
    TResult? Function(SelectBiller value)? selectBiller,
    TResult? Function(RemoveBiller value)? removeBiller,
    TResult? Function(SearchCustomer value)? searchCustomer,
    TResult? Function(Editdata value)? editdata,
    TResult? Function(Remarklist value)? remarklist,
    TResult? Function(Addremark value)? addremark,
  }) {
    return searchCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(CFetchlist value)? cfetchlist,
    TResult Function(SelectBiller value)? selectBiller,
    TResult Function(RemoveBiller value)? removeBiller,
    TResult Function(SearchCustomer value)? searchCustomer,
    TResult Function(Editdata value)? editdata,
    TResult Function(Remarklist value)? remarklist,
    TResult Function(Addremark value)? addremark,
    required TResult orElse(),
  }) {
    if (searchCustomer != null) {
      return searchCustomer(this);
    }
    return orElse();
  }
}

abstract class SearchCustomer implements CustomerpartEvent {
  const factory SearchCustomer({required final String query}) =
      _$SearchCustomerImpl;

  String get query;

  /// Create a copy of CustomerpartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchCustomerImplCopyWith<_$SearchCustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditdataImplCopyWith<$Res> {
  factory _$$EditdataImplCopyWith(
          _$EditdataImpl value, $Res Function(_$EditdataImpl) then) =
      __$$EditdataImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String addr,
      String email,
      String phone,
      String gst,
      String state,
      String district,
      String id});
}

/// @nodoc
class __$$EditdataImplCopyWithImpl<$Res>
    extends _$CustomerpartEventCopyWithImpl<$Res, _$EditdataImpl>
    implements _$$EditdataImplCopyWith<$Res> {
  __$$EditdataImplCopyWithImpl(
      _$EditdataImpl _value, $Res Function(_$EditdataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerpartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? addr = null,
    Object? email = null,
    Object? phone = null,
    Object? gst = null,
    Object? state = null,
    Object? district = null,
    Object? id = null,
  }) {
    return _then(_$EditdataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      addr: null == addr
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      gst: null == gst
          ? _value.gst
          : gst // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditdataImpl implements Editdata {
  const _$EditdataImpl(
      {required this.name,
      required this.addr,
      required this.email,
      required this.phone,
      required this.gst,
      required this.state,
      required this.district,
      required this.id});

  @override
  final String name;
  @override
  final String addr;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String gst;
  @override
  final String state;
  @override
  final String district;
  @override
  final String id;

  @override
  String toString() {
    return 'CustomerpartEvent.editdata(name: $name, addr: $addr, email: $email, phone: $phone, gst: $gst, state: $state, district: $district, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditdataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.addr, addr) || other.addr == addr) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.gst, gst) || other.gst == gst) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, addr, email, phone, gst, state, district, id);

  /// Create a copy of CustomerpartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditdataImplCopyWith<_$EditdataImpl> get copyWith =>
      __$$EditdataImplCopyWithImpl<_$EditdataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String addr, String email,
            String phone, String gst, String state, String district, String id)
        add,
    required TResult Function() cfetchlist,
    required TResult Function(Customerslist biller) selectBiller,
    required TResult Function() removeBiller,
    required TResult Function(String query) searchCustomer,
    required TResult Function(String name, String addr, String email,
            String phone, String gst, String state, String district, String id)
        editdata,
    required TResult Function(String cusId) remarklist,
    required TResult Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)
        addremark,
  }) {
    return editdata(name, addr, email, phone, gst, state, district, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        add,
    TResult? Function()? cfetchlist,
    TResult? Function(Customerslist biller)? selectBiller,
    TResult? Function()? removeBiller,
    TResult? Function(String query)? searchCustomer,
    TResult? Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        editdata,
    TResult? Function(String cusId)? remarklist,
    TResult? Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)?
        addremark,
  }) {
    return editdata?.call(name, addr, email, phone, gst, state, district, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        add,
    TResult Function()? cfetchlist,
    TResult Function(Customerslist biller)? selectBiller,
    TResult Function()? removeBiller,
    TResult Function(String query)? searchCustomer,
    TResult Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        editdata,
    TResult Function(String cusId)? remarklist,
    TResult Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)?
        addremark,
    required TResult orElse(),
  }) {
    if (editdata != null) {
      return editdata(name, addr, email, phone, gst, state, district, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Add value) add,
    required TResult Function(CFetchlist value) cfetchlist,
    required TResult Function(SelectBiller value) selectBiller,
    required TResult Function(RemoveBiller value) removeBiller,
    required TResult Function(SearchCustomer value) searchCustomer,
    required TResult Function(Editdata value) editdata,
    required TResult Function(Remarklist value) remarklist,
    required TResult Function(Addremark value) addremark,
  }) {
    return editdata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Add value)? add,
    TResult? Function(CFetchlist value)? cfetchlist,
    TResult? Function(SelectBiller value)? selectBiller,
    TResult? Function(RemoveBiller value)? removeBiller,
    TResult? Function(SearchCustomer value)? searchCustomer,
    TResult? Function(Editdata value)? editdata,
    TResult? Function(Remarklist value)? remarklist,
    TResult? Function(Addremark value)? addremark,
  }) {
    return editdata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(CFetchlist value)? cfetchlist,
    TResult Function(SelectBiller value)? selectBiller,
    TResult Function(RemoveBiller value)? removeBiller,
    TResult Function(SearchCustomer value)? searchCustomer,
    TResult Function(Editdata value)? editdata,
    TResult Function(Remarklist value)? remarklist,
    TResult Function(Addremark value)? addremark,
    required TResult orElse(),
  }) {
    if (editdata != null) {
      return editdata(this);
    }
    return orElse();
  }
}

abstract class Editdata implements CustomerpartEvent {
  const factory Editdata(
      {required final String name,
      required final String addr,
      required final String email,
      required final String phone,
      required final String gst,
      required final String state,
      required final String district,
      required final String id}) = _$EditdataImpl;

  String get name;
  String get addr;
  String get email;
  String get phone;
  String get gst;
  String get state;
  String get district;
  String get id;

  /// Create a copy of CustomerpartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditdataImplCopyWith<_$EditdataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemarklistImplCopyWith<$Res> {
  factory _$$RemarklistImplCopyWith(
          _$RemarklistImpl value, $Res Function(_$RemarklistImpl) then) =
      __$$RemarklistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cusId});
}

/// @nodoc
class __$$RemarklistImplCopyWithImpl<$Res>
    extends _$CustomerpartEventCopyWithImpl<$Res, _$RemarklistImpl>
    implements _$$RemarklistImplCopyWith<$Res> {
  __$$RemarklistImplCopyWithImpl(
      _$RemarklistImpl _value, $Res Function(_$RemarklistImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerpartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cusId = null,
  }) {
    return _then(_$RemarklistImpl(
      cusId: null == cusId
          ? _value.cusId
          : cusId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemarklistImpl implements Remarklist {
  const _$RemarklistImpl({required this.cusId});

  @override
  final String cusId;

  @override
  String toString() {
    return 'CustomerpartEvent.remarklist(cusId: $cusId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemarklistImpl &&
            (identical(other.cusId, cusId) || other.cusId == cusId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cusId);

  /// Create a copy of CustomerpartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemarklistImplCopyWith<_$RemarklistImpl> get copyWith =>
      __$$RemarklistImplCopyWithImpl<_$RemarklistImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String addr, String email,
            String phone, String gst, String state, String district, String id)
        add,
    required TResult Function() cfetchlist,
    required TResult Function(Customerslist biller) selectBiller,
    required TResult Function() removeBiller,
    required TResult Function(String query) searchCustomer,
    required TResult Function(String name, String addr, String email,
            String phone, String gst, String state, String district, String id)
        editdata,
    required TResult Function(String cusId) remarklist,
    required TResult Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)
        addremark,
  }) {
    return remarklist(cusId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        add,
    TResult? Function()? cfetchlist,
    TResult? Function(Customerslist biller)? selectBiller,
    TResult? Function()? removeBiller,
    TResult? Function(String query)? searchCustomer,
    TResult? Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        editdata,
    TResult? Function(String cusId)? remarklist,
    TResult? Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)?
        addremark,
  }) {
    return remarklist?.call(cusId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        add,
    TResult Function()? cfetchlist,
    TResult Function(Customerslist biller)? selectBiller,
    TResult Function()? removeBiller,
    TResult Function(String query)? searchCustomer,
    TResult Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        editdata,
    TResult Function(String cusId)? remarklist,
    TResult Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)?
        addremark,
    required TResult orElse(),
  }) {
    if (remarklist != null) {
      return remarklist(cusId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Add value) add,
    required TResult Function(CFetchlist value) cfetchlist,
    required TResult Function(SelectBiller value) selectBiller,
    required TResult Function(RemoveBiller value) removeBiller,
    required TResult Function(SearchCustomer value) searchCustomer,
    required TResult Function(Editdata value) editdata,
    required TResult Function(Remarklist value) remarklist,
    required TResult Function(Addremark value) addremark,
  }) {
    return remarklist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Add value)? add,
    TResult? Function(CFetchlist value)? cfetchlist,
    TResult? Function(SelectBiller value)? selectBiller,
    TResult? Function(RemoveBiller value)? removeBiller,
    TResult? Function(SearchCustomer value)? searchCustomer,
    TResult? Function(Editdata value)? editdata,
    TResult? Function(Remarklist value)? remarklist,
    TResult? Function(Addremark value)? addremark,
  }) {
    return remarklist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(CFetchlist value)? cfetchlist,
    TResult Function(SelectBiller value)? selectBiller,
    TResult Function(RemoveBiller value)? removeBiller,
    TResult Function(SearchCustomer value)? searchCustomer,
    TResult Function(Editdata value)? editdata,
    TResult Function(Remarklist value)? remarklist,
    TResult Function(Addremark value)? addremark,
    required TResult orElse(),
  }) {
    if (remarklist != null) {
      return remarklist(this);
    }
    return orElse();
  }
}

abstract class Remarklist implements CustomerpartEvent {
  const factory Remarklist({required final String cusId}) = _$RemarklistImpl;

  String get cusId;

  /// Create a copy of CustomerpartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemarklistImplCopyWith<_$RemarklistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddremarkImplCopyWith<$Res> {
  factory _$$AddremarkImplCopyWith(
          _$AddremarkImpl value, $Res Function(_$AddremarkImpl) then) =
      __$$AddremarkImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {RemartData? editdata,
      String? name,
      String? cusId,
      String? remark,
      String? desc});
}

/// @nodoc
class __$$AddremarkImplCopyWithImpl<$Res>
    extends _$CustomerpartEventCopyWithImpl<$Res, _$AddremarkImpl>
    implements _$$AddremarkImplCopyWith<$Res> {
  __$$AddremarkImplCopyWithImpl(
      _$AddremarkImpl _value, $Res Function(_$AddremarkImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerpartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editdata = freezed,
    Object? name = freezed,
    Object? cusId = freezed,
    Object? remark = freezed,
    Object? desc = freezed,
  }) {
    return _then(_$AddremarkImpl(
      editdata: freezed == editdata
          ? _value.editdata
          : editdata // ignore: cast_nullable_to_non_nullable
              as RemartData?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cusId: freezed == cusId
          ? _value.cusId
          : cusId // ignore: cast_nullable_to_non_nullable
              as String?,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddremarkImpl implements Addremark {
  const _$AddremarkImpl(
      {this.editdata, this.name, this.cusId, this.remark, this.desc});

  @override
  final RemartData? editdata;
  @override
  final String? name;
  @override
  final String? cusId;
  @override
  final String? remark;
  @override
  final String? desc;

  @override
  String toString() {
    return 'CustomerpartEvent.addremark(editdata: $editdata, name: $name, cusId: $cusId, remark: $remark, desc: $desc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddremarkImpl &&
            (identical(other.editdata, editdata) ||
                other.editdata == editdata) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cusId, cusId) || other.cusId == cusId) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.desc, desc) || other.desc == desc));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, editdata, name, cusId, remark, desc);

  /// Create a copy of CustomerpartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddremarkImplCopyWith<_$AddremarkImpl> get copyWith =>
      __$$AddremarkImplCopyWithImpl<_$AddremarkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String addr, String email,
            String phone, String gst, String state, String district, String id)
        add,
    required TResult Function() cfetchlist,
    required TResult Function(Customerslist biller) selectBiller,
    required TResult Function() removeBiller,
    required TResult Function(String query) searchCustomer,
    required TResult Function(String name, String addr, String email,
            String phone, String gst, String state, String district, String id)
        editdata,
    required TResult Function(String cusId) remarklist,
    required TResult Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)
        addremark,
  }) {
    return addremark(this.editdata, name, cusId, remark, desc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        add,
    TResult? Function()? cfetchlist,
    TResult? Function(Customerslist biller)? selectBiller,
    TResult? Function()? removeBiller,
    TResult? Function(String query)? searchCustomer,
    TResult? Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        editdata,
    TResult? Function(String cusId)? remarklist,
    TResult? Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)?
        addremark,
  }) {
    return addremark?.call(this.editdata, name, cusId, remark, desc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        add,
    TResult Function()? cfetchlist,
    TResult Function(Customerslist biller)? selectBiller,
    TResult Function()? removeBiller,
    TResult Function(String query)? searchCustomer,
    TResult Function(String name, String addr, String email, String phone,
            String gst, String state, String district, String id)?
        editdata,
    TResult Function(String cusId)? remarklist,
    TResult Function(RemartData? editdata, String? name, String? cusId,
            String? remark, String? desc)?
        addremark,
    required TResult orElse(),
  }) {
    if (addremark != null) {
      return addremark(this.editdata, name, cusId, remark, desc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Add value) add,
    required TResult Function(CFetchlist value) cfetchlist,
    required TResult Function(SelectBiller value) selectBiller,
    required TResult Function(RemoveBiller value) removeBiller,
    required TResult Function(SearchCustomer value) searchCustomer,
    required TResult Function(Editdata value) editdata,
    required TResult Function(Remarklist value) remarklist,
    required TResult Function(Addremark value) addremark,
  }) {
    return addremark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Add value)? add,
    TResult? Function(CFetchlist value)? cfetchlist,
    TResult? Function(SelectBiller value)? selectBiller,
    TResult? Function(RemoveBiller value)? removeBiller,
    TResult? Function(SearchCustomer value)? searchCustomer,
    TResult? Function(Editdata value)? editdata,
    TResult? Function(Remarklist value)? remarklist,
    TResult? Function(Addremark value)? addremark,
  }) {
    return addremark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Add value)? add,
    TResult Function(CFetchlist value)? cfetchlist,
    TResult Function(SelectBiller value)? selectBiller,
    TResult Function(RemoveBiller value)? removeBiller,
    TResult Function(SearchCustomer value)? searchCustomer,
    TResult Function(Editdata value)? editdata,
    TResult Function(Remarklist value)? remarklist,
    TResult Function(Addremark value)? addremark,
    required TResult orElse(),
  }) {
    if (addremark != null) {
      return addremark(this);
    }
    return orElse();
  }
}

abstract class Addremark implements CustomerpartEvent {
  const factory Addremark(
      {final RemartData? editdata,
      final String? name,
      final String? cusId,
      final String? remark,
      final String? desc}) = _$AddremarkImpl;

  RemartData? get editdata;
  String? get name;
  String? get cusId;
  String? get remark;
  String? get desc;

  /// Create a copy of CustomerpartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddremarkImplCopyWith<_$AddremarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomerpartState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get isError => throw _privateConstructorUsedError;
  List<String> get customerAttendanceList => throw _privateConstructorUsedError;
  Customerslist? get biller => throw _privateConstructorUsedError;
  RemartData? get slctremark => throw _privateConstructorUsedError;
  int get remarkStatus => throw _privateConstructorUsedError;
  List<Customerslist> get customerlist => throw _privateConstructorUsedError;

  /// Create a copy of CustomerpartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerpartStateCopyWith<CustomerpartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerpartStateCopyWith<$Res> {
  factory $CustomerpartStateCopyWith(
          CustomerpartState value, $Res Function(CustomerpartState) then) =
      _$CustomerpartStateCopyWithImpl<$Res, CustomerpartState>;
  @useResult
  $Res call(
      {bool isLoading,
      int isError,
      List<String> customerAttendanceList,
      Customerslist? biller,
      RemartData? slctremark,
      int remarkStatus,
      List<Customerslist> customerlist});
}

/// @nodoc
class _$CustomerpartStateCopyWithImpl<$Res, $Val extends CustomerpartState>
    implements $CustomerpartStateCopyWith<$Res> {
  _$CustomerpartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerpartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? customerAttendanceList = null,
    Object? biller = freezed,
    Object? slctremark = freezed,
    Object? remarkStatus = null,
    Object? customerlist = null,
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
      customerAttendanceList: null == customerAttendanceList
          ? _value.customerAttendanceList
          : customerAttendanceList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      biller: freezed == biller
          ? _value.biller
          : biller // ignore: cast_nullable_to_non_nullable
              as Customerslist?,
      slctremark: freezed == slctremark
          ? _value.slctremark
          : slctremark // ignore: cast_nullable_to_non_nullable
              as RemartData?,
      remarkStatus: null == remarkStatus
          ? _value.remarkStatus
          : remarkStatus // ignore: cast_nullable_to_non_nullable
              as int,
      customerlist: null == customerlist
          ? _value.customerlist
          : customerlist // ignore: cast_nullable_to_non_nullable
              as List<Customerslist>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerpartStateImplCopyWith<$Res>
    implements $CustomerpartStateCopyWith<$Res> {
  factory _$$CustomerpartStateImplCopyWith(_$CustomerpartStateImpl value,
          $Res Function(_$CustomerpartStateImpl) then) =
      __$$CustomerpartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      int isError,
      List<String> customerAttendanceList,
      Customerslist? biller,
      RemartData? slctremark,
      int remarkStatus,
      List<Customerslist> customerlist});
}

/// @nodoc
class __$$CustomerpartStateImplCopyWithImpl<$Res>
    extends _$CustomerpartStateCopyWithImpl<$Res, _$CustomerpartStateImpl>
    implements _$$CustomerpartStateImplCopyWith<$Res> {
  __$$CustomerpartStateImplCopyWithImpl(_$CustomerpartStateImpl _value,
      $Res Function(_$CustomerpartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerpartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? customerAttendanceList = null,
    Object? biller = freezed,
    Object? slctremark = freezed,
    Object? remarkStatus = null,
    Object? customerlist = null,
  }) {
    return _then(_$CustomerpartStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as int,
      customerAttendanceList: null == customerAttendanceList
          ? _value._customerAttendanceList
          : customerAttendanceList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      biller: freezed == biller
          ? _value.biller
          : biller // ignore: cast_nullable_to_non_nullable
              as Customerslist?,
      slctremark: freezed == slctremark
          ? _value.slctremark
          : slctremark // ignore: cast_nullable_to_non_nullable
              as RemartData?,
      remarkStatus: null == remarkStatus
          ? _value.remarkStatus
          : remarkStatus // ignore: cast_nullable_to_non_nullable
              as int,
      customerlist: null == customerlist
          ? _value._customerlist
          : customerlist // ignore: cast_nullable_to_non_nullable
              as List<Customerslist>,
    ));
  }
}

/// @nodoc

class _$CustomerpartStateImpl implements _CustomerpartState {
  _$CustomerpartStateImpl(
      {required this.isLoading,
      required this.isError,
      required final List<String> customerAttendanceList,
      this.biller,
      this.slctremark,
      required this.remarkStatus,
      required final List<Customerslist> customerlist})
      : _customerAttendanceList = customerAttendanceList,
        _customerlist = customerlist;

  @override
  final bool isLoading;
  @override
  final int isError;
  final List<String> _customerAttendanceList;
  @override
  List<String> get customerAttendanceList {
    if (_customerAttendanceList is EqualUnmodifiableListView)
      return _customerAttendanceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customerAttendanceList);
  }

  @override
  final Customerslist? biller;
  @override
  final RemartData? slctremark;
  @override
  final int remarkStatus;
  final List<Customerslist> _customerlist;
  @override
  List<Customerslist> get customerlist {
    if (_customerlist is EqualUnmodifiableListView) return _customerlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customerlist);
  }

  @override
  String toString() {
    return 'CustomerpartState(isLoading: $isLoading, isError: $isError, customerAttendanceList: $customerAttendanceList, biller: $biller, slctremark: $slctremark, remarkStatus: $remarkStatus, customerlist: $customerlist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerpartStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality().equals(
                other._customerAttendanceList, _customerAttendanceList) &&
            (identical(other.biller, biller) || other.biller == biller) &&
            (identical(other.slctremark, slctremark) ||
                other.slctremark == slctremark) &&
            (identical(other.remarkStatus, remarkStatus) ||
                other.remarkStatus == remarkStatus) &&
            const DeepCollectionEquality()
                .equals(other._customerlist, _customerlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      const DeepCollectionEquality().hash(_customerAttendanceList),
      biller,
      slctremark,
      remarkStatus,
      const DeepCollectionEquality().hash(_customerlist));

  /// Create a copy of CustomerpartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerpartStateImplCopyWith<_$CustomerpartStateImpl> get copyWith =>
      __$$CustomerpartStateImplCopyWithImpl<_$CustomerpartStateImpl>(
          this, _$identity);
}

abstract class _CustomerpartState implements CustomerpartState {
  factory _CustomerpartState(
          {required final bool isLoading,
          required final int isError,
          required final List<String> customerAttendanceList,
          final Customerslist? biller,
          final RemartData? slctremark,
          required final int remarkStatus,
          required final List<Customerslist> customerlist}) =
      _$CustomerpartStateImpl;

  @override
  bool get isLoading;
  @override
  int get isError;
  @override
  List<String> get customerAttendanceList;
  @override
  Customerslist? get biller;
  @override
  RemartData? get slctremark;
  @override
  int get remarkStatus;
  @override
  List<Customerslist> get customerlist;

  /// Create a copy of CustomerpartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerpartStateImplCopyWith<_$CustomerpartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
