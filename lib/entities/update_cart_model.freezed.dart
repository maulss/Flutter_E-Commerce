// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateCartModel _$UpdateCartModelFromJson(Map<String, dynamic> json) {
  return _UpdateCartModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateCartModel {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCartModelCopyWith<UpdateCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCartModelCopyWith<$Res> {
  factory $UpdateCartModelCopyWith(
          UpdateCartModel value, $Res Function(UpdateCartModel) then) =
      _$UpdateCartModelCopyWithImpl<$Res, UpdateCartModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class _$UpdateCartModelCopyWithImpl<$Res, $Val extends UpdateCartModel>
    implements $UpdateCartModelCopyWith<$Res> {
  _$UpdateCartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateCartModelImplCopyWith<$Res>
    implements $UpdateCartModelCopyWith<$Res> {
  factory _$$UpdateCartModelImplCopyWith(_$UpdateCartModelImpl value,
          $Res Function(_$UpdateCartModelImpl) then) =
      __$$UpdateCartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class __$$UpdateCartModelImplCopyWithImpl<$Res>
    extends _$UpdateCartModelCopyWithImpl<$Res, _$UpdateCartModelImpl>
    implements _$$UpdateCartModelImplCopyWith<$Res> {
  __$$UpdateCartModelImplCopyWithImpl(
      _$UpdateCartModelImpl _value, $Res Function(_$UpdateCartModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_$UpdateCartModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateCartModelImpl implements _UpdateCartModel {
  const _$UpdateCartModelImpl(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message});

  factory _$UpdateCartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateCartModelImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;

  @override
  String toString() {
    return 'UpdateCartModel(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCartModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCartModelImplCopyWith<_$UpdateCartModelImpl> get copyWith =>
      __$$UpdateCartModelImplCopyWithImpl<_$UpdateCartModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateCartModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateCartModel implements UpdateCartModel {
  const factory _UpdateCartModel(
      {@JsonKey(name: "success") final bool? success,
      @JsonKey(name: "message") final String? message}) = _$UpdateCartModelImpl;

  factory _UpdateCartModel.fromJson(Map<String, dynamic> json) =
      _$UpdateCartModelImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$UpdateCartModelImplCopyWith<_$UpdateCartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
