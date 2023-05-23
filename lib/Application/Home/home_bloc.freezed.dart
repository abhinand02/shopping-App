// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> updatedList, bool isVisible) addItems,
    required TResult Function(int index) switchPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> updatedList, bool isVisible)? addItems,
    TResult? Function(int index)? switchPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> updatedList, bool isVisible)? addItems,
    TResult Function(int index)? switchPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddItems value) addItems,
    required TResult Function(SwitchPage value) switchPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddItems value)? addItems,
    TResult? Function(SwitchPage value)? switchPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddItems value)? addItems,
    TResult Function(SwitchPage value)? switchPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddItemsCopyWith<$Res> {
  factory _$$AddItemsCopyWith(
          _$AddItems value, $Res Function(_$AddItems) then) =
      __$$AddItemsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> updatedList, bool isVisible});
}

/// @nodoc
class __$$AddItemsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$AddItems>
    implements _$$AddItemsCopyWith<$Res> {
  __$$AddItemsCopyWithImpl(_$AddItems _value, $Res Function(_$AddItems) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedList = null,
    Object? isVisible = null,
  }) {
    return _then(_$AddItems(
      updatedList: null == updatedList
          ? _value._updatedList
          : updatedList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddItems implements AddItems {
  const _$AddItems(
      {required final List<int> updatedList, required this.isVisible})
      : _updatedList = updatedList;

  final List<int> _updatedList;
  @override
  List<int> get updatedList {
    if (_updatedList is EqualUnmodifiableListView) return _updatedList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_updatedList);
  }

  @override
  final bool isVisible;

  @override
  String toString() {
    return 'HomeEvent.addItems(updatedList: $updatedList, isVisible: $isVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItems &&
            const DeepCollectionEquality()
                .equals(other._updatedList, _updatedList) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_updatedList), isVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemsCopyWith<_$AddItems> get copyWith =>
      __$$AddItemsCopyWithImpl<_$AddItems>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> updatedList, bool isVisible) addItems,
    required TResult Function(int index) switchPage,
  }) {
    return addItems(updatedList, isVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> updatedList, bool isVisible)? addItems,
    TResult? Function(int index)? switchPage,
  }) {
    return addItems?.call(updatedList, isVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> updatedList, bool isVisible)? addItems,
    TResult Function(int index)? switchPage,
    required TResult orElse(),
  }) {
    if (addItems != null) {
      return addItems(updatedList, isVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddItems value) addItems,
    required TResult Function(SwitchPage value) switchPage,
  }) {
    return addItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddItems value)? addItems,
    TResult? Function(SwitchPage value)? switchPage,
  }) {
    return addItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddItems value)? addItems,
    TResult Function(SwitchPage value)? switchPage,
    required TResult orElse(),
  }) {
    if (addItems != null) {
      return addItems(this);
    }
    return orElse();
  }
}

abstract class AddItems implements HomeEvent {
  const factory AddItems(
      {required final List<int> updatedList,
      required final bool isVisible}) = _$AddItems;

  List<int> get updatedList;
  bool get isVisible;
  @JsonKey(ignore: true)
  _$$AddItemsCopyWith<_$AddItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwitchPageCopyWith<$Res> {
  factory _$$SwitchPageCopyWith(
          _$SwitchPage value, $Res Function(_$SwitchPage) then) =
      __$$SwitchPageCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SwitchPageCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SwitchPage>
    implements _$$SwitchPageCopyWith<$Res> {
  __$$SwitchPageCopyWithImpl(
      _$SwitchPage _value, $Res Function(_$SwitchPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SwitchPage(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SwitchPage implements SwitchPage {
  const _$SwitchPage({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.switchPage(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchPage &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchPageCopyWith<_$SwitchPage> get copyWith =>
      __$$SwitchPageCopyWithImpl<_$SwitchPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> updatedList, bool isVisible) addItems,
    required TResult Function(int index) switchPage,
  }) {
    return switchPage(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> updatedList, bool isVisible)? addItems,
    TResult? Function(int index)? switchPage,
  }) {
    return switchPage?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> updatedList, bool isVisible)? addItems,
    TResult Function(int index)? switchPage,
    required TResult orElse(),
  }) {
    if (switchPage != null) {
      return switchPage(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddItems value) addItems,
    required TResult Function(SwitchPage value) switchPage,
  }) {
    return switchPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddItems value)? addItems,
    TResult? Function(SwitchPage value)? switchPage,
  }) {
    return switchPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddItems value)? addItems,
    TResult Function(SwitchPage value)? switchPage,
    required TResult orElse(),
  }) {
    if (switchPage != null) {
      return switchPage(this);
    }
    return orElse();
  }
}

abstract class SwitchPage implements HomeEvent {
  const factory SwitchPage({required final int index}) = _$SwitchPage;

  int get index;
  @JsonKey(ignore: true)
  _$$SwitchPageCopyWith<_$SwitchPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  List<int> get itemcount => throw _privateConstructorUsedError;
  bool get isVisible => throw _privateConstructorUsedError;
  int get bottomNavigationBarIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<int> itemcount, bool isVisible, int bottomNavigationBarIndex});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemcount = null,
    Object? isVisible = null,
    Object? bottomNavigationBarIndex = null,
  }) {
    return _then(_value.copyWith(
      itemcount: null == itemcount
          ? _value.itemcount
          : itemcount // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      bottomNavigationBarIndex: null == bottomNavigationBarIndex
          ? _value.bottomNavigationBarIndex
          : bottomNavigationBarIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int> itemcount, bool isVisible, int bottomNavigationBarIndex});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemcount = null,
    Object? isVisible = null,
    Object? bottomNavigationBarIndex = null,
  }) {
    return _then(_$_Initial(
      itemcount: null == itemcount
          ? _value._itemcount
          : itemcount // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      bottomNavigationBarIndex: null == bottomNavigationBarIndex
          ? _value.bottomNavigationBarIndex
          : bottomNavigationBarIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<int> itemcount,
      required this.isVisible,
      required this.bottomNavigationBarIndex})
      : _itemcount = itemcount;

  final List<int> _itemcount;
  @override
  List<int> get itemcount {
    if (_itemcount is EqualUnmodifiableListView) return _itemcount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemcount);
  }

  @override
  final bool isVisible;
  @override
  final int bottomNavigationBarIndex;

  @override
  String toString() {
    return 'HomeState(itemcount: $itemcount, isVisible: $isVisible, bottomNavigationBarIndex: $bottomNavigationBarIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._itemcount, _itemcount) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(
                    other.bottomNavigationBarIndex, bottomNavigationBarIndex) ||
                other.bottomNavigationBarIndex == bottomNavigationBarIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_itemcount),
      isVisible,
      bottomNavigationBarIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final List<int> itemcount,
      required final bool isVisible,
      required final int bottomNavigationBarIndex}) = _$_Initial;

  @override
  List<int> get itemcount;
  @override
  bool get isVisible;
  @override
  int get bottomNavigationBarIndex;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
