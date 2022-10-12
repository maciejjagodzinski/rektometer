// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$SearchListModelCopyWithImpl<$Res>;
  $Res call({String name, String id, String symbol});
}

/// @nodoc
class _$SearchListModelCopyWithImpl<$Res>
    implements $SearchListModelCopyWith<$Res> {
  _$SearchListModelCopyWithImpl(this._value, this._then);

  final SearchListModel _value;
  // ignore: unused_field
  final $Res Function(SearchListModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchListModelCopyWith<$Res>
    implements $SearchListModelCopyWith<$Res> {
  factory _$$_SearchListModelCopyWith(
          _$_SearchListModel value, $Res Function(_$_SearchListModel) then) =
      __$$_SearchListModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String id, String symbol});
}

/// @nodoc
class __$$_SearchListModelCopyWithImpl<$Res>
    extends _$SearchListModelCopyWithImpl<$Res>
    implements _$$_SearchListModelCopyWith<$Res> {
  __$$_SearchListModelCopyWithImpl(
      _$_SearchListModel _value, $Res Function(_$_SearchListModel) _then)
      : super(_value, (v) => _then(v as _$_SearchListModel));

  @override
  _$_SearchListModel get _value => super._value as _$_SearchListModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_$_SearchListModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchListModel implements _SearchListModel {
  _$_SearchListModel(
      {required this.name, required this.id, required this.symbol});

  factory _$_SearchListModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchListModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchListModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.symbol, symbol));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(symbol));

  @JsonKey(ignore: true)
  @override
  _$$_SearchListModelCopyWith<_$_SearchListModel> get copyWith =>
      __$$_SearchListModelCopyWithImpl<_$_SearchListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchListModelToJson(
      this,
    );
  }
}

abstract class _SearchListModel implements SearchListModel {
  factory _SearchListModel(
      {required final String name,
      required final String id,
      required final String symbol}) = _$_SearchListModel;

  factory _SearchListModel.fromJson(Map<String, dynamic> json) =
      _$_SearchListModel.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  String get symbol;
  @override
  @JsonKey(ignore: true)
  _$$_SearchListModelCopyWith<_$_SearchListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
