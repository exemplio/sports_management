// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Filter _$FilterFromJson(Map<String, dynamic> json) {
  return _Filter.fromJson(json);
}

/// @nodoc
mixin _$Filter {
  Set<String> get idDocs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterCopyWith<Filter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCopyWith<$Res> {
  factory $FilterCopyWith(Filter value, $Res Function(Filter) then) =
      _$FilterCopyWithImpl<$Res, Filter>;
  @useResult
  $Res call({Set<String> idDocs});
}

/// @nodoc
class _$FilterCopyWithImpl<$Res, $Val extends Filter>
    implements $FilterCopyWith<$Res> {
  _$FilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idDocs = null,
  }) {
    return _then(_value.copyWith(
      idDocs: null == idDocs
          ? _value.idDocs
          : idDocs // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilterCopyWith<$Res> implements $FilterCopyWith<$Res> {
  factory _$$_FilterCopyWith(_$_Filter value, $Res Function(_$_Filter) then) =
      __$$_FilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<String> idDocs});
}

/// @nodoc
class __$$_FilterCopyWithImpl<$Res>
    extends _$FilterCopyWithImpl<$Res, _$_Filter>
    implements _$$_FilterCopyWith<$Res> {
  __$$_FilterCopyWithImpl(_$_Filter _value, $Res Function(_$_Filter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idDocs = null,
  }) {
    return _then(_$_Filter(
      idDocs: null == idDocs
          ? _value._idDocs
          : idDocs // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    explicitToJson: true, fieldRename: FieldRename.snake, includeIfNull: false)
class _$_Filter implements _Filter {
  const _$_Filter({required final Set<String> idDocs}) : _idDocs = idDocs;

  factory _$_Filter.fromJson(Map<String, dynamic> json) =>
      _$$_FilterFromJson(json);

  final Set<String> _idDocs;
  @override
  Set<String> get idDocs {
    if (_idDocs is EqualUnmodifiableSetView) return _idDocs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_idDocs);
  }

  @override
  String toString() {
    return 'Filter(idDocs: $idDocs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Filter &&
            const DeepCollectionEquality().equals(other._idDocs, _idDocs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_idDocs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterCopyWith<_$_Filter> get copyWith =>
      __$$_FilterCopyWithImpl<_$_Filter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilterToJson(
      this,
    );
  }
}

abstract class _Filter implements Filter {
  const factory _Filter({required final Set<String> idDocs}) = _$_Filter;

  factory _Filter.fromJson(Map<String, dynamic> json) = _$_Filter.fromJson;

  @override
  Set<String> get idDocs;
  @override
  @JsonKey(ignore: true)
  _$$_FilterCopyWith<_$_Filter> get copyWith =>
      throw _privateConstructorUsedError;
}
