// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'characters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CharactersEventTearOff {
  const _$CharactersEventTearOff();

// ignore: unused_element
  _InitialCharactersEvent initial() {
    return const _InitialCharactersEvent();
  }

// ignore: unused_element
  _SelectedViewCharactersEvent selectedView({@required bool isGrid}) {
    return _SelectedViewCharactersEvent(
      isGrid: isGrid,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CharactersEvent = _$CharactersEventTearOff();

/// @nodoc
mixin _$CharactersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult selectedView(bool isGrid),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult selectedView(bool isGrid),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialCharactersEvent value),
    @required TResult selectedView(_SelectedViewCharactersEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialCharactersEvent value),
    TResult selectedView(_SelectedViewCharactersEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CharactersEventCopyWith<$Res> {
  factory $CharactersEventCopyWith(
          CharactersEvent value, $Res Function(CharactersEvent) then) =
      _$CharactersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharactersEventCopyWithImpl<$Res>
    implements $CharactersEventCopyWith<$Res> {
  _$CharactersEventCopyWithImpl(this._value, this._then);

  final CharactersEvent _value;
  // ignore: unused_field
  final $Res Function(CharactersEvent) _then;
}

/// @nodoc
abstract class _$InitialCharactersEventCopyWith<$Res> {
  factory _$InitialCharactersEventCopyWith(_InitialCharactersEvent value,
          $Res Function(_InitialCharactersEvent) then) =
      __$InitialCharactersEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCharactersEventCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res>
    implements _$InitialCharactersEventCopyWith<$Res> {
  __$InitialCharactersEventCopyWithImpl(_InitialCharactersEvent _value,
      $Res Function(_InitialCharactersEvent) _then)
      : super(_value, (v) => _then(v as _InitialCharactersEvent));

  @override
  _InitialCharactersEvent get _value => super._value as _InitialCharactersEvent;
}

/// @nodoc
class _$_InitialCharactersEvent implements _InitialCharactersEvent {
  const _$_InitialCharactersEvent();

  @override
  String toString() {
    return 'CharactersEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialCharactersEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult selectedView(bool isGrid),
  }) {
    assert(initial != null);
    assert(selectedView != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult selectedView(bool isGrid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialCharactersEvent value),
    @required TResult selectedView(_SelectedViewCharactersEvent value),
  }) {
    assert(initial != null);
    assert(selectedView != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialCharactersEvent value),
    TResult selectedView(_SelectedViewCharactersEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialCharactersEvent implements CharactersEvent {
  const factory _InitialCharactersEvent() = _$_InitialCharactersEvent;
}

/// @nodoc
abstract class _$SelectedViewCharactersEventCopyWith<$Res> {
  factory _$SelectedViewCharactersEventCopyWith(
          _SelectedViewCharactersEvent value,
          $Res Function(_SelectedViewCharactersEvent) then) =
      __$SelectedViewCharactersEventCopyWithImpl<$Res>;
  $Res call({bool isGrid});
}

/// @nodoc
class __$SelectedViewCharactersEventCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res>
    implements _$SelectedViewCharactersEventCopyWith<$Res> {
  __$SelectedViewCharactersEventCopyWithImpl(
      _SelectedViewCharactersEvent _value,
      $Res Function(_SelectedViewCharactersEvent) _then)
      : super(_value, (v) => _then(v as _SelectedViewCharactersEvent));

  @override
  _SelectedViewCharactersEvent get _value =>
      super._value as _SelectedViewCharactersEvent;

  @override
  $Res call({
    Object isGrid = freezed,
  }) {
    return _then(_SelectedViewCharactersEvent(
      isGrid: isGrid == freezed ? _value.isGrid : isGrid as bool,
    ));
  }
}

/// @nodoc
class _$_SelectedViewCharactersEvent implements _SelectedViewCharactersEvent {
  const _$_SelectedViewCharactersEvent({@required this.isGrid})
      : assert(isGrid != null);

  @override
  final bool isGrid;

  @override
  String toString() {
    return 'CharactersEvent.selectedView(isGrid: $isGrid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedViewCharactersEvent &&
            (identical(other.isGrid, isGrid) ||
                const DeepCollectionEquality().equals(other.isGrid, isGrid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isGrid);

  @JsonKey(ignore: true)
  @override
  _$SelectedViewCharactersEventCopyWith<_SelectedViewCharactersEvent>
      get copyWith => __$SelectedViewCharactersEventCopyWithImpl<
          _SelectedViewCharactersEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult selectedView(bool isGrid),
  }) {
    assert(initial != null);
    assert(selectedView != null);
    return selectedView(isGrid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult selectedView(bool isGrid),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectedView != null) {
      return selectedView(isGrid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialCharactersEvent value),
    @required TResult selectedView(_SelectedViewCharactersEvent value),
  }) {
    assert(initial != null);
    assert(selectedView != null);
    return selectedView(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialCharactersEvent value),
    TResult selectedView(_SelectedViewCharactersEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectedView != null) {
      return selectedView(this);
    }
    return orElse();
  }
}

abstract class _SelectedViewCharactersEvent implements CharactersEvent {
  const factory _SelectedViewCharactersEvent({@required bool isGrid}) =
      _$_SelectedViewCharactersEvent;

  bool get isGrid;
  @JsonKey(ignore: true)
  _$SelectedViewCharactersEventCopyWith<_SelectedViewCharactersEvent>
      get copyWith;
}

/// @nodoc
class _$CharactersStateTearOff {
  const _$CharactersStateTearOff();

// ignore: unused_element
  _DataCharactersState data(
      {@required List<ModelViewData> persons, @required bool isGrid}) {
    return _DataCharactersState(
      persons: persons,
      isGrid: isGrid,
    );
  }

// ignore: unused_element
  _InitialCharactersState initial() {
    return const _InitialCharactersState();
  }

// ignore: unused_element
  _LoadingCharactersState loading() {
    return const _LoadingCharactersState();
  }
}

/// @nodoc
// ignore: unused_element
const $CharactersState = _$CharactersStateTearOff();

/// @nodoc
mixin _$CharactersState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(List<ModelViewData> persons, bool isGrid),
    @required TResult initial(),
    @required TResult loading(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(List<ModelViewData> persons, bool isGrid),
    TResult initial(),
    TResult loading(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(_DataCharactersState value),
    @required TResult initial(_InitialCharactersState value),
    @required TResult loading(_LoadingCharactersState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(_DataCharactersState value),
    TResult initial(_InitialCharactersState value),
    TResult loading(_LoadingCharactersState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CharactersStateCopyWith<$Res> {
  factory $CharactersStateCopyWith(
          CharactersState value, $Res Function(CharactersState) then) =
      _$CharactersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharactersStateCopyWithImpl<$Res>
    implements $CharactersStateCopyWith<$Res> {
  _$CharactersStateCopyWithImpl(this._value, this._then);

  final CharactersState _value;
  // ignore: unused_field
  final $Res Function(CharactersState) _then;
}

/// @nodoc
abstract class _$DataCharactersStateCopyWith<$Res> {
  factory _$DataCharactersStateCopyWith(_DataCharactersState value,
          $Res Function(_DataCharactersState) then) =
      __$DataCharactersStateCopyWithImpl<$Res>;
  $Res call({List<ModelViewData> persons, bool isGrid});
}

/// @nodoc
class __$DataCharactersStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements _$DataCharactersStateCopyWith<$Res> {
  __$DataCharactersStateCopyWithImpl(
      _DataCharactersState _value, $Res Function(_DataCharactersState) _then)
      : super(_value, (v) => _then(v as _DataCharactersState));

  @override
  _DataCharactersState get _value => super._value as _DataCharactersState;

  @override
  $Res call({
    Object persons = freezed,
    Object isGrid = freezed,
  }) {
    return _then(_DataCharactersState(
      persons:
          persons == freezed ? _value.persons : persons as List<ModelViewData>,
      isGrid: isGrid == freezed ? _value.isGrid : isGrid as bool,
    ));
  }
}

/// @nodoc
class _$_DataCharactersState implements _DataCharactersState {
  const _$_DataCharactersState({@required this.persons, @required this.isGrid})
      : assert(persons != null),
        assert(isGrid != null);

  @override
  final List<ModelViewData> persons;
  @override
  final bool isGrid;

  @override
  String toString() {
    return 'CharactersState.data(persons: $persons, isGrid: $isGrid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataCharactersState &&
            (identical(other.persons, persons) ||
                const DeepCollectionEquality()
                    .equals(other.persons, persons)) &&
            (identical(other.isGrid, isGrid) ||
                const DeepCollectionEquality().equals(other.isGrid, isGrid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(persons) ^
      const DeepCollectionEquality().hash(isGrid);

  @JsonKey(ignore: true)
  @override
  _$DataCharactersStateCopyWith<_DataCharactersState> get copyWith =>
      __$DataCharactersStateCopyWithImpl<_DataCharactersState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(List<ModelViewData> persons, bool isGrid),
    @required TResult initial(),
    @required TResult loading(),
  }) {
    assert(data != null);
    assert(initial != null);
    assert(loading != null);
    return data(persons, isGrid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(List<ModelViewData> persons, bool isGrid),
    TResult initial(),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(persons, isGrid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(_DataCharactersState value),
    @required TResult initial(_InitialCharactersState value),
    @required TResult loading(_LoadingCharactersState value),
  }) {
    assert(data != null);
    assert(initial != null);
    assert(loading != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(_DataCharactersState value),
    TResult initial(_InitialCharactersState value),
    TResult loading(_LoadingCharactersState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataCharactersState implements CharactersState {
  const factory _DataCharactersState(
      {@required List<ModelViewData> persons,
      @required bool isGrid}) = _$_DataCharactersState;

  List<ModelViewData> get persons;
  bool get isGrid;
  @JsonKey(ignore: true)
  _$DataCharactersStateCopyWith<_DataCharactersState> get copyWith;
}

/// @nodoc
abstract class _$InitialCharactersStateCopyWith<$Res> {
  factory _$InitialCharactersStateCopyWith(_InitialCharactersState value,
          $Res Function(_InitialCharactersState) then) =
      __$InitialCharactersStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCharactersStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements _$InitialCharactersStateCopyWith<$Res> {
  __$InitialCharactersStateCopyWithImpl(_InitialCharactersState _value,
      $Res Function(_InitialCharactersState) _then)
      : super(_value, (v) => _then(v as _InitialCharactersState));

  @override
  _InitialCharactersState get _value => super._value as _InitialCharactersState;
}

/// @nodoc
class _$_InitialCharactersState implements _InitialCharactersState {
  const _$_InitialCharactersState();

  @override
  String toString() {
    return 'CharactersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialCharactersState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(List<ModelViewData> persons, bool isGrid),
    @required TResult initial(),
    @required TResult loading(),
  }) {
    assert(data != null);
    assert(initial != null);
    assert(loading != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(List<ModelViewData> persons, bool isGrid),
    TResult initial(),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(_DataCharactersState value),
    @required TResult initial(_InitialCharactersState value),
    @required TResult loading(_LoadingCharactersState value),
  }) {
    assert(data != null);
    assert(initial != null);
    assert(loading != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(_DataCharactersState value),
    TResult initial(_InitialCharactersState value),
    TResult loading(_LoadingCharactersState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialCharactersState implements CharactersState {
  const factory _InitialCharactersState() = _$_InitialCharactersState;
}

/// @nodoc
abstract class _$LoadingCharactersStateCopyWith<$Res> {
  factory _$LoadingCharactersStateCopyWith(_LoadingCharactersState value,
          $Res Function(_LoadingCharactersState) then) =
      __$LoadingCharactersStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCharactersStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements _$LoadingCharactersStateCopyWith<$Res> {
  __$LoadingCharactersStateCopyWithImpl(_LoadingCharactersState _value,
      $Res Function(_LoadingCharactersState) _then)
      : super(_value, (v) => _then(v as _LoadingCharactersState));

  @override
  _LoadingCharactersState get _value => super._value as _LoadingCharactersState;
}

/// @nodoc
class _$_LoadingCharactersState implements _LoadingCharactersState {
  const _$_LoadingCharactersState();

  @override
  String toString() {
    return 'CharactersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingCharactersState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(List<ModelViewData> persons, bool isGrid),
    @required TResult initial(),
    @required TResult loading(),
  }) {
    assert(data != null);
    assert(initial != null);
    assert(loading != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(List<ModelViewData> persons, bool isGrid),
    TResult initial(),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(_DataCharactersState value),
    @required TResult initial(_InitialCharactersState value),
    @required TResult loading(_LoadingCharactersState value),
  }) {
    assert(data != null);
    assert(initial != null);
    assert(loading != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(_DataCharactersState value),
    TResult initial(_InitialCharactersState value),
    TResult loading(_LoadingCharactersState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingCharactersState implements CharactersState {
  const factory _LoadingCharactersState() = _$_LoadingCharactersState;
}
