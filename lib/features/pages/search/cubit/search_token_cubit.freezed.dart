// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_token_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchTokenState {
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  List<SearchListModel> get tokenList => throw _privateConstructorUsedError;
  String get addTokenId => throw _privateConstructorUsedError;
  bool get tokenSaved => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchTokenStateCopyWith<SearchTokenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTokenStateCopyWith<$Res> {
  factory $SearchTokenStateCopyWith(
          SearchTokenState value, $Res Function(SearchTokenState) then) =
      _$SearchTokenStateCopyWithImpl<$Res>;
  $Res call(
      {Status status,
      String? errorMessage,
      List<SearchListModel> tokenList,
      String addTokenId,
      bool tokenSaved});
}

/// @nodoc
class _$SearchTokenStateCopyWithImpl<$Res>
    implements $SearchTokenStateCopyWith<$Res> {
  _$SearchTokenStateCopyWithImpl(this._value, this._then);

  final SearchTokenState _value;
  // ignore: unused_field
  final $Res Function(SearchTokenState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? errorMessage = freezed,
    Object? tokenList = freezed,
    Object? addTokenId = freezed,
    Object? tokenSaved = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenList: tokenList == freezed
          ? _value.tokenList
          : tokenList // ignore: cast_nullable_to_non_nullable
              as List<SearchListModel>,
      addTokenId: addTokenId == freezed
          ? _value.addTokenId
          : addTokenId // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSaved: tokenSaved == freezed
          ? _value.tokenSaved
          : tokenSaved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchTokenStateCopyWith<$Res>
    implements $SearchTokenStateCopyWith<$Res> {
  factory _$$_SearchTokenStateCopyWith(
          _$_SearchTokenState value, $Res Function(_$_SearchTokenState) then) =
      __$$_SearchTokenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Status status,
      String? errorMessage,
      List<SearchListModel> tokenList,
      String addTokenId,
      bool tokenSaved});
}

/// @nodoc
class __$$_SearchTokenStateCopyWithImpl<$Res>
    extends _$SearchTokenStateCopyWithImpl<$Res>
    implements _$$_SearchTokenStateCopyWith<$Res> {
  __$$_SearchTokenStateCopyWithImpl(
      _$_SearchTokenState _value, $Res Function(_$_SearchTokenState) _then)
      : super(_value, (v) => _then(v as _$_SearchTokenState));

  @override
  _$_SearchTokenState get _value => super._value as _$_SearchTokenState;

  @override
  $Res call({
    Object? status = freezed,
    Object? errorMessage = freezed,
    Object? tokenList = freezed,
    Object? addTokenId = freezed,
    Object? tokenSaved = freezed,
  }) {
    return _then(_$_SearchTokenState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenList: tokenList == freezed
          ? _value._tokenList
          : tokenList // ignore: cast_nullable_to_non_nullable
              as List<SearchListModel>,
      addTokenId: addTokenId == freezed
          ? _value.addTokenId
          : addTokenId // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSaved: tokenSaved == freezed
          ? _value.tokenSaved
          : tokenSaved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SearchTokenState implements _SearchTokenState {
  const _$_SearchTokenState(
      {required this.status,
      required this.errorMessage,
      required final List<SearchListModel> tokenList,
      required this.addTokenId,
      required this.tokenSaved})
      : _tokenList = tokenList;

  @override
  final Status status;
  @override
  final String? errorMessage;
  final List<SearchListModel> _tokenList;
  @override
  List<SearchListModel> get tokenList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokenList);
  }

  @override
  final String addTokenId;
  @override
  final bool tokenSaved;

  @override
  String toString() {
    return 'SearchTokenState(status: $status, errorMessage: $errorMessage, tokenList: $tokenList, addTokenId: $addTokenId, tokenSaved: $tokenSaved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchTokenState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._tokenList, _tokenList) &&
            const DeepCollectionEquality()
                .equals(other.addTokenId, addTokenId) &&
            const DeepCollectionEquality()
                .equals(other.tokenSaved, tokenSaved));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(_tokenList),
      const DeepCollectionEquality().hash(addTokenId),
      const DeepCollectionEquality().hash(tokenSaved));

  @JsonKey(ignore: true)
  @override
  _$$_SearchTokenStateCopyWith<_$_SearchTokenState> get copyWith =>
      __$$_SearchTokenStateCopyWithImpl<_$_SearchTokenState>(this, _$identity);
}

abstract class _SearchTokenState implements SearchTokenState {
  const factory _SearchTokenState(
      {required final Status status,
      required final String? errorMessage,
      required final List<SearchListModel> tokenList,
      required final String addTokenId,
      required final bool tokenSaved}) = _$_SearchTokenState;

  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  List<SearchListModel> get tokenList;
  @override
  String get addTokenId;
  @override
  bool get tokenSaved;
  @override
  @JsonKey(ignore: true)
  _$$_SearchTokenStateCopyWith<_$_SearchTokenState> get copyWith =>
      throw _privateConstructorUsedError;
}
