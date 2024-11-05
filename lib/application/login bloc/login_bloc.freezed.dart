// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pass, String username) login,
    required TResult Function(String root) rootselection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pass, String username)? login,
    TResult? Function(String root)? rootselection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pass, String username)? login,
    TResult Function(String root)? rootselection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Rootselection value) rootselection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Rootselection value)? rootselection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Rootselection value)? rootselection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pass, String username});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pass = null,
    Object? username = null,
  }) {
    return _then(_$LoginImpl(
      pass: null == pass
          ? _value.pass
          : pass // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements Login {
  const _$LoginImpl({required this.pass, required this.username});

  @override
  final String pass;
  @override
  final String username;

  @override
  String toString() {
    return 'LoginEvent.login(pass: $pass, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.pass, pass) || other.pass == pass) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pass, username);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pass, String username) login,
    required TResult Function(String root) rootselection,
  }) {
    return login(pass, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pass, String username)? login,
    TResult? Function(String root)? rootselection,
  }) {
    return login?.call(pass, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pass, String username)? login,
    TResult Function(String root)? rootselection,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(pass, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Rootselection value) rootselection,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Rootselection value)? rootselection,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Rootselection value)? rootselection,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements LoginEvent {
  const factory Login(
      {required final String pass,
      required final String username}) = _$LoginImpl;

  String get pass;
  String get username;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RootselectionImplCopyWith<$Res> {
  factory _$$RootselectionImplCopyWith(
          _$RootselectionImpl value, $Res Function(_$RootselectionImpl) then) =
      __$$RootselectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String root});
}

/// @nodoc
class __$$RootselectionImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$RootselectionImpl>
    implements _$$RootselectionImplCopyWith<$Res> {
  __$$RootselectionImplCopyWithImpl(
      _$RootselectionImpl _value, $Res Function(_$RootselectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? root = null,
  }) {
    return _then(_$RootselectionImpl(
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RootselectionImpl implements Rootselection {
  const _$RootselectionImpl({required this.root});

  @override
  final String root;

  @override
  String toString() {
    return 'LoginEvent.rootselection(root: $root)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RootselectionImpl &&
            (identical(other.root, root) || other.root == root));
  }

  @override
  int get hashCode => Object.hash(runtimeType, root);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RootselectionImplCopyWith<_$RootselectionImpl> get copyWith =>
      __$$RootselectionImplCopyWithImpl<_$RootselectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pass, String username) login,
    required TResult Function(String root) rootselection,
  }) {
    return rootselection(root);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pass, String username)? login,
    TResult? Function(String root)? rootselection,
  }) {
    return rootselection?.call(root);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pass, String username)? login,
    TResult Function(String root)? rootselection,
    required TResult orElse(),
  }) {
    if (rootselection != null) {
      return rootselection(root);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(Rootselection value) rootselection,
  }) {
    return rootselection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(Rootselection value)? rootselection,
  }) {
    return rootselection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(Rootselection value)? rootselection,
    required TResult orElse(),
  }) {
    if (rootselection != null) {
      return rootselection(this);
    }
    return orElse();
  }
}

abstract class Rootselection implements LoginEvent {
  const factory Rootselection({required final String root}) =
      _$RootselectionImpl;

  String get root;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RootselectionImplCopyWith<_$RootselectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get isError => throw _privateConstructorUsedError;
  bool get login => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get root => throw _privateConstructorUsedError;
  List<Rootmodel> get rootlist => throw _privateConstructorUsedError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {bool isLoading,
      int isError,
      bool login,
      String username,
      String root,
      List<Rootmodel> rootlist});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? login = null,
    Object? username = null,
    Object? root = null,
    Object? rootlist = null,
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
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as bool,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as String,
      rootlist: null == rootlist
          ? _value.rootlist
          : rootlist // ignore: cast_nullable_to_non_nullable
              as List<Rootmodel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      int isError,
      bool login,
      String username,
      String root,
      List<Rootmodel> rootlist});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? login = null,
    Object? username = null,
    Object? root = null,
    Object? rootlist = null,
  }) {
    return _then(_$LoginStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as int,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as bool,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as String,
      rootlist: null == rootlist
          ? _value._rootlist
          : rootlist // ignore: cast_nullable_to_non_nullable
              as List<Rootmodel>,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  _$LoginStateImpl(
      {required this.isLoading,
      required this.isError,
      required this.login,
      required this.username,
      required this.root,
      required final List<Rootmodel> rootlist})
      : _rootlist = rootlist;

  @override
  final bool isLoading;
  @override
  final int isError;
  @override
  final bool login;
  @override
  final String username;
  @override
  final String root;
  final List<Rootmodel> _rootlist;
  @override
  List<Rootmodel> get rootlist {
    if (_rootlist is EqualUnmodifiableListView) return _rootlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rootlist);
  }

  @override
  String toString() {
    return 'LoginState(isLoading: $isLoading, isError: $isError, login: $login, username: $username, root: $root, rootlist: $rootlist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.root, root) || other.root == root) &&
            const DeepCollectionEquality().equals(other._rootlist, _rootlist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, login,
      username, root, const DeepCollectionEquality().hash(_rootlist));

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  factory _LoginState(
      {required final bool isLoading,
      required final int isError,
      required final bool login,
      required final String username,
      required final String root,
      required final List<Rootmodel> rootlist}) = _$LoginStateImpl;

  @override
  bool get isLoading;
  @override
  int get isError;
  @override
  bool get login;
  @override
  String get username;
  @override
  String get root;
  @override
  List<Rootmodel> get rootlist;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
