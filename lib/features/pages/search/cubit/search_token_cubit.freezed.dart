// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_token_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$SearchTokenStateCopyWithImpl<$Res, SearchTokenState>;
  @useResult
  $Res call(
      {Status status,
      String? errorMessage,
      List<SearchListModel> tokenList,
      String addTokenId,
      bool tokenSaved});
}

/// @nodoc
class _$SearchTokenStateCopyWithImpl<$Res, $Val extends SearchTokenState>
    implements $SearchTokenStateCopyWith<$Res> {
  _$SearchTokenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = freezed,
    Object? tokenList = null,
    Object? addTokenId = null,
    Object? tokenSaved = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenList: null == tokenList
          ? _value.tokenList
          : tokenList // ignore: cast_nullable_to_non_nullable
              as List<SearchListModel>,
      addTokenId: null == addTokenId
          ? _value.addTokenId
          : addTokenId // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSaved: null == tokenSaved
          ? _value.tokenSaved
          : tokenSaved // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchTokenStateImplCopyWith<$Res>
    implements $SearchTokenStateCopyWith<$Res> {
  factory _$$SearchTokenStateImplCopyWith(_$SearchTokenStateImpl value,
          $Res Function(_$SearchTokenStateImpl) then) =
      __$$SearchTokenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      String? errorMessage,
      List<SearchListModel> tokenList,
      String addTokenId,
      bool tokenSaved});
}

/// @nodoc
class __$$SearchTokenStateImplCopyWithImpl<$Res>
    extends _$SearchTokenStateCopyWithImpl<$Res, _$SearchTokenStateImpl>
    implements _$$SearchTokenStateImplCopyWith<$Res> {
  __$$SearchTokenStateImplCopyWithImpl(_$SearchTokenStateImpl _value,
      $Res Function(_$SearchTokenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = freezed,
    Object? tokenList = null,
    Object? addTokenId = null,
    Object? tokenSaved = null,
  }) {
    return _then(_$SearchTokenStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenList: null == tokenList
          ? _value._tokenList
          : tokenList // ignore: cast_nullable_to_non_nullable
              as List<SearchListModel>,
      addTokenId: null == addTokenId
          ? _value.addTokenId
          : addTokenId // ignore: cast_nullable_to_non_nullable
              as String,
      tokenSaved: null == tokenSaved
          ? _value.tokenSaved
          : tokenSaved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchTokenStateImpl implements _SearchTokenState {
  const _$SearchTokenStateImpl(
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
    if (_tokenList is EqualUnmodifiableListView) return _tokenList;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTokenStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._tokenList, _tokenList) &&
            (identical(other.addTokenId, addTokenId) ||
                other.addTokenId == addTokenId) &&
            (identical(other.tokenSaved, tokenSaved) ||
                other.tokenSaved == tokenSaved));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorMessage,
      const DeepCollectionEquality().hash(_tokenList), addTokenId, tokenSaved);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTokenStateImplCopyWith<_$SearchTokenStateImpl> get copyWith =>
      __$$SearchTokenStateImplCopyWithImpl<_$SearchTokenStateImpl>(
          this, _$identity);
}

abstract class _SearchTokenState implements SearchTokenState {
  const factory _SearchTokenState(
      {required final Status status,
      required final String? errorMessage,
      required final List<SearchListModel> tokenList,
      required final String addTokenId,
      required final bool tokenSaved}) = _$SearchTokenStateImpl;

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
  _$$SearchTokenStateImplCopyWith<_$SearchTokenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
