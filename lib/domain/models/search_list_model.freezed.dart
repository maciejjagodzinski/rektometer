// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchListModel _$SearchListModelFromJson(Map<String, dynamic> json) {
  return _SearchListModel.fromJson(json);
}

/// @nodoc
mixin _$SearchListModel {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchListModelCopyWith<SearchListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchListModelCopyWith<$Res> {
  factory $SearchListModelCopyWith(
          SearchListModel value, $Res Function(SearchListModel) then) =
      _$SearchListModelCopyWithImpl<$Res, SearchListModel>;
  @useResult
  $Res call({String name, String id, String symbol});
}

/// @nodoc
class _$SearchListModelCopyWithImpl<$Res, $Val extends SearchListModel>
    implements $SearchListModelCopyWith<$Res> {
  _$SearchListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? symbol = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchListModelImplCopyWith<$Res>
    implements $SearchListModelCopyWith<$Res> {
  factory _$$SearchListModelImplCopyWith(_$SearchListModelImpl value,
          $Res Function(_$SearchListModelImpl) then) =
      __$$SearchListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id, String symbol});
}

/// @nodoc
class __$$SearchListModelImplCopyWithImpl<$Res>
    extends _$SearchListModelCopyWithImpl<$Res, _$SearchListModelImpl>
    implements _$$SearchListModelImplCopyWith<$Res> {
  __$$SearchListModelImplCopyWithImpl(
      _$SearchListModelImpl _value, $Res Function(_$SearchListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? symbol = null,
  }) {
    return _then(_$SearchListModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchListModelImpl implements _SearchListModel {
  _$SearchListModelImpl(
      {required this.name, required this.id, required this.symbol});

  factory _$SearchListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchListModelImplFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  final String symbol;

  @override
  String toString() {
    return 'SearchListModel(name: $name, id: $id, symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchListModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, symbol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchListModelImplCopyWith<_$SearchListModelImpl> get copyWith =>
      __$$SearchListModelImplCopyWithImpl<_$SearchListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchListModelImplToJson(
      this,
    );
  }
}

abstract class _SearchListModel implements SearchListModel {
  factory _SearchListModel(
      {required final String name,
      required final String id,
      required final String symbol}) = _$SearchListModelImpl;

  factory _SearchListModel.fromJson(Map<String, dynamic> json) =
      _$SearchListModelImpl.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  String get symbol;
  @override
  @JsonKey(ignore: true)
  _$$SearchListModelImplCopyWith<_$SearchListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
