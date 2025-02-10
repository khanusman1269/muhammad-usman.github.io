// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  Map<String, bool> get hoveringStates => throw _privateConstructorUsedError;
  bool get isMouseHovering => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({Map<String, bool> hoveringStates, bool isMouseHovering});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hoveringStates = null,
    Object? isMouseHovering = null,
  }) {
    return _then(_value.copyWith(
      hoveringStates: null == hoveringStates
          ? _value.hoveringStates
          : hoveringStates // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      isMouseHovering: null == isMouseHovering
          ? _value.isMouseHovering
          : isMouseHovering // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, bool> hoveringStates, bool isMouseHovering});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hoveringStates = null,
    Object? isMouseHovering = null,
  }) {
    return _then(_$InitialImpl(
      hoveringStates: null == hoveringStates
          ? _value._hoveringStates
          : hoveringStates // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      isMouseHovering: null == isMouseHovering
          ? _value.isMouseHovering
          : isMouseHovering // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {final Map<String, bool> hoveringStates = const {},
      this.isMouseHovering = false})
      : _hoveringStates = hoveringStates;

  final Map<String, bool> _hoveringStates;
  @override
  @JsonKey()
  Map<String, bool> get hoveringStates {
    if (_hoveringStates is EqualUnmodifiableMapView) return _hoveringStates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_hoveringStates);
  }

  @override
  @JsonKey()
  final bool isMouseHovering;

  @override
  String toString() {
    return 'HomeState(hoveringStates: $hoveringStates, isMouseHovering: $isMouseHovering)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._hoveringStates, _hoveringStates) &&
            (identical(other.isMouseHovering, isMouseHovering) ||
                other.isMouseHovering == isMouseHovering));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_hoveringStates), isMouseHovering);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {final Map<String, bool> hoveringStates,
      final bool isMouseHovering}) = _$InitialImpl;

  @override
  Map<String, bool> get hoveringStates;
  @override
  bool get isMouseHovering;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
