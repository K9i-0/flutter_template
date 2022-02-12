// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeScreenStateTearOff {
  const _$HomeScreenStateTearOff();

  _HomeScreenState call({required int count}) {
    return _HomeScreenState(
      count: count,
    );
  }
}

/// @nodoc
const $HomeScreenState = _$HomeScreenStateTearOff();

/// @nodoc
mixin _$HomeScreenState {
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res>;
  $Res call({int count});
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  final HomeScreenState _value;
  // ignore: unused_field
  final $Res Function(HomeScreenState) _then;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$HomeScreenStateCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$HomeScreenStateCopyWith(
          _HomeScreenState value, $Res Function(_HomeScreenState) then) =
      __$HomeScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({int count});
}

/// @nodoc
class __$HomeScreenStateCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res>
    implements _$HomeScreenStateCopyWith<$Res> {
  __$HomeScreenStateCopyWithImpl(
      _HomeScreenState _value, $Res Function(_HomeScreenState) _then)
      : super(_value, (v) => _then(v as _HomeScreenState));

  @override
  _HomeScreenState get _value => super._value as _HomeScreenState;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_HomeScreenState(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeScreenState
    with DiagnosticableTreeMixin
    implements _HomeScreenState {
  const _$_HomeScreenState({required this.count});

  @override
  final int count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeScreenState(count: $count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeScreenState'))
      ..add(DiagnosticsProperty('count', count));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeScreenState &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$HomeScreenStateCopyWith<_HomeScreenState> get copyWith =>
      __$HomeScreenStateCopyWithImpl<_HomeScreenState>(this, _$identity);
}

abstract class _HomeScreenState implements HomeScreenState {
  const factory _HomeScreenState({required int count}) = _$_HomeScreenState;

  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$HomeScreenStateCopyWith<_HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
