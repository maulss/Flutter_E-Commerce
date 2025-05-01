// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteProductModel _$DeleteProductModelFromJson(Map<String, dynamic> json) {
  return _DeleteProductModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteProductModel {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteProductModelCopyWith<DeleteProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteProductModelCopyWith<$Res> {
  factory $DeleteProductModelCopyWith(
          DeleteProductModel value, $Res Function(DeleteProductModel) then) =
      _$DeleteProductModelCopyWithImpl<$Res, DeleteProductModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class _$DeleteProductModelCopyWithImpl<$Res, $Val extends DeleteProductModel>
    implements $DeleteProductModelCopyWith<$Res> {
  _$DeleteProductModelCopyWithImpl(this._value, this._then);

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
abstract class _$$DeleteProductModelImplCopyWith<$Res>
    implements $DeleteProductModelCopyWith<$Res> {
  factory _$$DeleteProductModelImplCopyWith(_$DeleteProductModelImpl value,
          $Res Function(_$DeleteProductModelImpl) then) =
      __$$DeleteProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class __$$DeleteProductModelImplCopyWithImpl<$Res>
    extends _$DeleteProductModelCopyWithImpl<$Res, _$DeleteProductModelImpl>
    implements _$$DeleteProductModelImplCopyWith<$Res> {
  __$$DeleteProductModelImplCopyWithImpl(_$DeleteProductModelImpl _value,
      $Res Function(_$DeleteProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_$DeleteProductModelImpl(
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
class _$DeleteProductModelImpl implements _DeleteProductModel {
  const _$DeleteProductModelImpl(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message});

  factory _$DeleteProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteProductModelImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;

  @override
  String toString() {
    return 'DeleteProductModel(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductModelImplCopyWith<_$DeleteProductModelImpl> get copyWith =>
      __$$DeleteProductModelImplCopyWithImpl<_$DeleteProductModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteProductModelImplToJson(
      this,
    );
  }
}

abstract class _DeleteProductModel implements DeleteProductModel {
  const factory _DeleteProductModel(
          {@JsonKey(name: "success") final bool? success,
          @JsonKey(name: "message") final String? message}) =
      _$DeleteProductModelImpl;

  factory _DeleteProductModel.fromJson(Map<String, dynamic> json) =
      _$DeleteProductModelImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$DeleteProductModelImplCopyWith<_$DeleteProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
