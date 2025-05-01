// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_create_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestCreateOrderModel _$RequestCreateOrderModelFromJson(
    Map<String, dynamic> json) {
  return _RequestCreateOrderModel.fromJson(json);
}

/// @nodoc
mixin _$RequestCreateOrderModel {
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "products")
  List<Product>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestCreateOrderModelCopyWith<RequestCreateOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCreateOrderModelCopyWith<$Res> {
  factory $RequestCreateOrderModelCopyWith(RequestCreateOrderModel value,
          $Res Function(RequestCreateOrderModel) then) =
      _$RequestCreateOrderModelCopyWithImpl<$Res, RequestCreateOrderModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "products") List<Product>? products});
}

/// @nodoc
class _$RequestCreateOrderModelCopyWithImpl<$Res,
        $Val extends RequestCreateOrderModel>
    implements $RequestCreateOrderModelCopyWith<$Res> {
  _$RequestCreateOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestCreateOrderModelImplCopyWith<$Res>
    implements $RequestCreateOrderModelCopyWith<$Res> {
  factory _$$RequestCreateOrderModelImplCopyWith(
          _$RequestCreateOrderModelImpl value,
          $Res Function(_$RequestCreateOrderModelImpl) then) =
      __$$RequestCreateOrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "products") List<Product>? products});
}

/// @nodoc
class __$$RequestCreateOrderModelImplCopyWithImpl<$Res>
    extends _$RequestCreateOrderModelCopyWithImpl<$Res,
        _$RequestCreateOrderModelImpl>
    implements _$$RequestCreateOrderModelImplCopyWith<$Res> {
  __$$RequestCreateOrderModelImplCopyWithImpl(
      _$RequestCreateOrderModelImpl _value,
      $Res Function(_$RequestCreateOrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? products = freezed,
  }) {
    return _then(_$RequestCreateOrderModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestCreateOrderModelImpl implements _RequestCreateOrderModel {
  const _$RequestCreateOrderModelImpl(
      {@JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "products") final List<Product>? products})
      : _products = products;

  factory _$RequestCreateOrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestCreateOrderModelImplFromJson(json);

  @override
  @JsonKey(name: "user_id")
  final String? userId;
  final List<Product>? _products;
  @override
  @JsonKey(name: "products")
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RequestCreateOrderModel(userId: $userId, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCreateOrderModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCreateOrderModelImplCopyWith<_$RequestCreateOrderModelImpl>
      get copyWith => __$$RequestCreateOrderModelImplCopyWithImpl<
          _$RequestCreateOrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestCreateOrderModelImplToJson(
      this,
    );
  }
}

abstract class _RequestCreateOrderModel implements RequestCreateOrderModel {
  const factory _RequestCreateOrderModel(
          {@JsonKey(name: "user_id") final String? userId,
          @JsonKey(name: "products") final List<Product>? products}) =
      _$RequestCreateOrderModelImpl;

  factory _RequestCreateOrderModel.fromJson(Map<String, dynamic> json) =
      _$RequestCreateOrderModelImpl.fromJson;

  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @override
  @JsonKey(name: "products")
  List<Product>? get products;
  @override
  @JsonKey(ignore: true)
  _$$RequestCreateOrderModelImplCopyWith<_$RequestCreateOrderModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: "productId")
  String? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: "productId") String? productId,
      @JsonKey(name: "quantity") int? quantity});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "productId") String? productId,
      @JsonKey(name: "quantity") int? quantity});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$ProductImpl(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {@JsonKey(name: "productId") this.productId,
      @JsonKey(name: "quantity") this.quantity});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey(name: "productId")
  final String? productId;
  @override
  @JsonKey(name: "quantity")
  final int? quantity;

  @override
  String toString() {
    return 'Product(productId: $productId, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {@JsonKey(name: "productId") final String? productId,
      @JsonKey(name: "quantity") final int? quantity}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @JsonKey(name: "productId")
  String? get productId;
  @override
  @JsonKey(name: "quantity")
  int? get quantity;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
