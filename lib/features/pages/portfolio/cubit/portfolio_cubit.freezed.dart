// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'portfolio_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PortfolioState {
  List<PortfolioItemModel> get portfolioItemModels =>
      throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get addTokenPageNavigated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PortfolioStateCopyWith<PortfolioState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioStateCopyWith<$Res> {
  factory $PortfolioStateCopyWith(
          PortfolioState value, $Res Function(PortfolioState) then) =
      _$PortfolioStateCopyWithImpl<$Res>;
  $Res call(
      {List<PortfolioItemModel> portfolioItemModels,
      Status status,
      String? errorMessage,
      bool addTokenPageNavigated});
}

/// @nodoc
class _$PortfolioStateCopyWithImpl<$Res>
    implements $PortfolioStateCopyWith<$Res> {
  _$PortfolioStateCopyWithImpl(this._value, this._then);

  final PortfolioState _value;
  // ignore: unused_field
  final $Res Function(PortfolioState) _then;

  @override
  $Res call({
    Object? portfolioItemModels = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
    Object? addTokenPageNavigated = freezed,
  }) {
    return _then(_value.copyWith(
      portfolioItemModels: portfolioItemModels == freezed
          ? _value.portfolioItemModels
          : portfolioItemModels // ignore: cast_nullable_to_non_nullable
              as List<PortfolioItemModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      addTokenPageNavigated: addTokenPageNavigated == freezed
          ? _value.addTokenPageNavigated
          : addTokenPageNavigated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_PortfolioStateCopyWith<$Res>
    implements $PortfolioStateCopyWith<$Res> {
  factory _$$_PortfolioStateCopyWith(
          _$_PortfolioState value, $Res Function(_$_PortfolioState) then) =
      __$$_PortfolioStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<PortfolioItemModel> portfolioItemModels,
      Status status,
      String? errorMessage,
      bool addTokenPageNavigated});
}

/// @nodoc
class __$$_PortfolioStateCopyWithImpl<$Res>
    extends _$PortfolioStateCopyWithImpl<$Res>
    implements _$$_PortfolioStateCopyWith<$Res> {
  __$$_PortfolioStateCopyWithImpl(
      _$_PortfolioState _value, $Res Function(_$_PortfolioState) _then)
      : super(_value, (v) => _then(v as _$_PortfolioState));

  @override
  _$_PortfolioState get _value => super._value as _$_PortfolioState;

  @override
  $Res call({
    Object? portfolioItemModels = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
    Object? addTokenPageNavigated = freezed,
  }) {
    return _then(_$_PortfolioState(
      portfolioItemModels: portfolioItemModels == freezed
          ? _value._portfolioItemModels
          : portfolioItemModels // ignore: cast_nullable_to_non_nullable
              as List<PortfolioItemModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      addTokenPageNavigated: addTokenPageNavigated == freezed
          ? _value.addTokenPageNavigated
          : addTokenPageNavigated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PortfolioState implements _PortfolioState {
  const _$_PortfolioState(
      {required final List<PortfolioItemModel> portfolioItemModels,
      required this.status,
      required this.errorMessage,
      required this.addTokenPageNavigated})
      : _portfolioItemModels = portfolioItemModels;

  final List<PortfolioItemModel> _portfolioItemModels;
  @override
  List<PortfolioItemModel> get portfolioItemModels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_portfolioItemModels);
  }

  @override
  final Status status;
  @override
  final String? errorMessage;
  @override
  final bool addTokenPageNavigated;

  @override
  String toString() {
    return 'PortfolioState(portfolioItemModels: $portfolioItemModels, status: $status, errorMessage: $errorMessage, addTokenPageNavigated: $addTokenPageNavigated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PortfolioState &&
            const DeepCollectionEquality()
                .equals(other._portfolioItemModels, _portfolioItemModels) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.addTokenPageNavigated, addTokenPageNavigated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_portfolioItemModels),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(addTokenPageNavigated));

  @JsonKey(ignore: true)
  @override
  _$$_PortfolioStateCopyWith<_$_PortfolioState> get copyWith =>
      __$$_PortfolioStateCopyWithImpl<_$_PortfolioState>(this, _$identity);
}

abstract class _PortfolioState implements PortfolioState {
  const factory _PortfolioState(
      {required final List<PortfolioItemModel> portfolioItemModels,
      required final Status status,
      required final String? errorMessage,
      required final bool addTokenPageNavigated}) = _$_PortfolioState;

  @override
  List<PortfolioItemModel> get portfolioItemModels;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  bool get addTokenPageNavigated;
  @override
  @JsonKey(ignore: true)
  _$$_PortfolioStateCopyWith<_$_PortfolioState> get copyWith =>
      throw _privateConstructorUsedError;
}
