// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$PortfolioStateCopyWithImpl<$Res, PortfolioState>;
  @useResult
  $Res call(
      {List<PortfolioItemModel> portfolioItemModels,
      Status status,
      String? errorMessage,
      bool addTokenPageNavigated});
}

/// @nodoc
class _$PortfolioStateCopyWithImpl<$Res, $Val extends PortfolioState>
    implements $PortfolioStateCopyWith<$Res> {
  _$PortfolioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portfolioItemModels = null,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? addTokenPageNavigated = null,
  }) {
    return _then(_value.copyWith(
      portfolioItemModels: null == portfolioItemModels
          ? _value.portfolioItemModels
          : portfolioItemModels // ignore: cast_nullable_to_non_nullable
              as List<PortfolioItemModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      addTokenPageNavigated: null == addTokenPageNavigated
          ? _value.addTokenPageNavigated
          : addTokenPageNavigated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PortfolioStateImplCopyWith<$Res>
    implements $PortfolioStateCopyWith<$Res> {
  factory _$$PortfolioStateImplCopyWith(_$PortfolioStateImpl value,
          $Res Function(_$PortfolioStateImpl) then) =
      __$$PortfolioStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PortfolioItemModel> portfolioItemModels,
      Status status,
      String? errorMessage,
      bool addTokenPageNavigated});
}

/// @nodoc
class __$$PortfolioStateImplCopyWithImpl<$Res>
    extends _$PortfolioStateCopyWithImpl<$Res, _$PortfolioStateImpl>
    implements _$$PortfolioStateImplCopyWith<$Res> {
  __$$PortfolioStateImplCopyWithImpl(
      _$PortfolioStateImpl _value, $Res Function(_$PortfolioStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portfolioItemModels = null,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? addTokenPageNavigated = null,
  }) {
    return _then(_$PortfolioStateImpl(
      portfolioItemModels: null == portfolioItemModels
          ? _value._portfolioItemModels
          : portfolioItemModels // ignore: cast_nullable_to_non_nullable
              as List<PortfolioItemModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      addTokenPageNavigated: null == addTokenPageNavigated
          ? _value.addTokenPageNavigated
          : addTokenPageNavigated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PortfolioStateImpl implements _PortfolioState {
  const _$PortfolioStateImpl(
      {required final List<PortfolioItemModel> portfolioItemModels,
      required this.status,
      required this.errorMessage,
      required this.addTokenPageNavigated})
      : _portfolioItemModels = portfolioItemModels;

  final List<PortfolioItemModel> _portfolioItemModels;
  @override
  List<PortfolioItemModel> get portfolioItemModels {
    if (_portfolioItemModels is EqualUnmodifiableListView)
      return _portfolioItemModels;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortfolioStateImpl &&
            const DeepCollectionEquality()
                .equals(other._portfolioItemModels, _portfolioItemModels) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.addTokenPageNavigated, addTokenPageNavigated) ||
                other.addTokenPageNavigated == addTokenPageNavigated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_portfolioItemModels),
      status,
      errorMessage,
      addTokenPageNavigated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PortfolioStateImplCopyWith<_$PortfolioStateImpl> get copyWith =>
      __$$PortfolioStateImplCopyWithImpl<_$PortfolioStateImpl>(
          this, _$identity);
}

abstract class _PortfolioState implements PortfolioState {
  const factory _PortfolioState(
      {required final List<PortfolioItemModel> portfolioItemModels,
      required final Status status,
      required final String? errorMessage,
      required final bool addTokenPageNavigated}) = _$PortfolioStateImpl;

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
  _$$PortfolioStateImplCopyWith<_$PortfolioStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
