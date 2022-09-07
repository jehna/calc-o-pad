// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AST {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) number,
    required TResult Function(List<AST> operands) add,
    required TResult Function(List<AST> operands) subtract,
    required TResult Function(List<AST> operands) multiply,
    required TResult Function(List<AST> operands) divide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value)? number,
    TResult Function(List<AST> operands)? add,
    TResult Function(List<AST> operands)? subtract,
    TResult Function(List<AST> operands)? multiply,
    TResult Function(List<AST> operands)? divide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? number,
    TResult Function(List<AST> operands)? add,
    TResult Function(List<AST> operands)? subtract,
    TResult Function(List<AST> operands)? multiply,
    TResult Function(List<AST> operands)? divide,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Number value) number,
    required TResult Function(Add value) add,
    required TResult Function(Subtract value) subtract,
    required TResult Function(Multiply value) multiply,
    required TResult Function(Divide value) divide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(Add value)? add,
    TResult Function(Subtract value)? subtract,
    TResult Function(Multiply value)? multiply,
    TResult Function(Divide value)? divide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(Add value)? add,
    TResult Function(Subtract value)? subtract,
    TResult Function(Multiply value)? multiply,
    TResult Function(Divide value)? divide,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ASTCopyWith<$Res> {
  factory $ASTCopyWith(AST value, $Res Function(AST) then) =
      _$ASTCopyWithImpl<$Res>;
}

/// @nodoc
class _$ASTCopyWithImpl<$Res> implements $ASTCopyWith<$Res> {
  _$ASTCopyWithImpl(this._value, this._then);

  final AST _value;
  // ignore: unused_field
  final $Res Function(AST) _then;
}

/// @nodoc
abstract class _$$NumberCopyWith<$Res> {
  factory _$$NumberCopyWith(_$Number value, $Res Function(_$Number) then) =
      __$$NumberCopyWithImpl<$Res>;
  $Res call({double value});
}

/// @nodoc
class __$$NumberCopyWithImpl<$Res> extends _$ASTCopyWithImpl<$Res>
    implements _$$NumberCopyWith<$Res> {
  __$$NumberCopyWithImpl(_$Number _value, $Res Function(_$Number) _then)
      : super(_value, (v) => _then(v as _$Number));

  @override
  _$Number get _value => super._value as _$Number;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$Number(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$Number implements Number {
  const _$Number(this.value);

  @override
  final double value;

  @override
  String toString() {
    return 'AST.number(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Number &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$NumberCopyWith<_$Number> get copyWith =>
      __$$NumberCopyWithImpl<_$Number>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) number,
    required TResult Function(List<AST> operands) add,
    required TResult Function(List<AST> operands) subtract,
    required TResult Function(List<AST> operands) multiply,
    required TResult Function(List<AST> operands) divide,
  }) {
    return number(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value)? number,
    TResult Function(List<AST> operands)? add,
    TResult Function(List<AST> operands)? subtract,
    TResult Function(List<AST> operands)? multiply,
    TResult Function(List<AST> operands)? divide,
  }) {
    return number?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? number,
    TResult Function(List<AST> operands)? add,
    TResult Function(List<AST> operands)? subtract,
    TResult Function(List<AST> operands)? multiply,
    TResult Function(List<AST> operands)? divide,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Number value) number,
    required TResult Function(Add value) add,
    required TResult Function(Subtract value) subtract,
    required TResult Function(Multiply value) multiply,
    required TResult Function(Divide value) divide,
  }) {
    return number(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(Add value)? add,
    TResult Function(Subtract value)? subtract,
    TResult Function(Multiply value)? multiply,
    TResult Function(Divide value)? divide,
  }) {
    return number?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(Add value)? add,
    TResult Function(Subtract value)? subtract,
    TResult Function(Multiply value)? multiply,
    TResult Function(Divide value)? divide,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(this);
    }
    return orElse();
  }
}

abstract class Number implements AST {
  const factory Number(final double value) = _$Number;

  double get value;
  @JsonKey(ignore: true)
  _$$NumberCopyWith<_$Number> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCopyWith<$Res> {
  factory _$$AddCopyWith(_$Add value, $Res Function(_$Add) then) =
      __$$AddCopyWithImpl<$Res>;
  $Res call({List<AST> operands});
}

/// @nodoc
class __$$AddCopyWithImpl<$Res> extends _$ASTCopyWithImpl<$Res>
    implements _$$AddCopyWith<$Res> {
  __$$AddCopyWithImpl(_$Add _value, $Res Function(_$Add) _then)
      : super(_value, (v) => _then(v as _$Add));

  @override
  _$Add get _value => super._value as _$Add;

  @override
  $Res call({
    Object? operands = freezed,
  }) {
    return _then(_$Add(
      operands == freezed
          ? _value._operands
          : operands // ignore: cast_nullable_to_non_nullable
              as List<AST>,
    ));
  }
}

/// @nodoc

class _$Add implements Add {
  const _$Add(final List<AST> operands) : _operands = operands;

  final List<AST> _operands;
  @override
  List<AST> get operands {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_operands);
  }

  @override
  String toString() {
    return 'AST.add(operands: $operands)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Add &&
            const DeepCollectionEquality().equals(other._operands, _operands));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_operands));

  @JsonKey(ignore: true)
  @override
  _$$AddCopyWith<_$Add> get copyWith =>
      __$$AddCopyWithImpl<_$Add>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) number,
    required TResult Function(List<AST> operands) add,
    required TResult Function(List<AST> operands) subtract,
    required TResult Function(List<AST> operands) multiply,
    required TResult Function(List<AST> operands) divide,
  }) {
    return add(operands);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value)? number,
    TResult Function(List<AST> operands)? add,
    TResult Function(List<AST> operands)? subtract,
    TResult Function(List<AST> operands)? multiply,
    TResult Function(List<AST> operands)? divide,
  }) {
    return add?.call(operands);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? number,
    TResult Function(List<AST> operands)? add,
    TResult Function(List<AST> operands)? subtract,
    TResult Function(List<AST> operands)? multiply,
    TResult Function(List<AST> operands)? divide,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(operands);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Number value) number,
    required TResult Function(Add value) add,
    required TResult Function(Subtract value) subtract,
    required TResult Function(Multiply value) multiply,
    required TResult Function(Divide value) divide,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(Add value)? add,
    TResult Function(Subtract value)? subtract,
    TResult Function(Multiply value)? multiply,
    TResult Function(Divide value)? divide,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(Add value)? add,
    TResult Function(Subtract value)? subtract,
    TResult Function(Multiply value)? multiply,
    TResult Function(Divide value)? divide,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class Add implements AST {
  const factory Add(final List<AST> operands) = _$Add;

  List<AST> get operands;
  @JsonKey(ignore: true)
  _$$AddCopyWith<_$Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubtractCopyWith<$Res> {
  factory _$$SubtractCopyWith(
          _$Subtract value, $Res Function(_$Subtract) then) =
      __$$SubtractCopyWithImpl<$Res>;
  $Res call({List<AST> operands});
}

/// @nodoc
class __$$SubtractCopyWithImpl<$Res> extends _$ASTCopyWithImpl<$Res>
    implements _$$SubtractCopyWith<$Res> {
  __$$SubtractCopyWithImpl(_$Subtract _value, $Res Function(_$Subtract) _then)
      : super(_value, (v) => _then(v as _$Subtract));

  @override
  _$Subtract get _value => super._value as _$Subtract;

  @override
  $Res call({
    Object? operands = freezed,
  }) {
    return _then(_$Subtract(
      operands == freezed
          ? _value._operands
          : operands // ignore: cast_nullable_to_non_nullable
              as List<AST>,
    ));
  }
}

/// @nodoc

class _$Subtract implements Subtract {
  const _$Subtract(final List<AST> operands) : _operands = operands;

  final List<AST> _operands;
  @override
  List<AST> get operands {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_operands);
  }

  @override
  String toString() {
    return 'AST.subtract(operands: $operands)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Subtract &&
            const DeepCollectionEquality().equals(other._operands, _operands));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_operands));

  @JsonKey(ignore: true)
  @override
  _$$SubtractCopyWith<_$Subtract> get copyWith =>
      __$$SubtractCopyWithImpl<_$Subtract>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) number,
    required TResult Function(List<AST> operands) add,
    required TResult Function(List<AST> operands) subtract,
    required TResult Function(List<AST> operands) multiply,
    required TResult Function(List<AST> operands) divide,
  }) {
    return subtract(operands);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value)? number,
    TResult Function(List<AST> operands)? add,
    TResult Function(List<AST> operands)? subtract,
    TResult Function(List<AST> operands)? multiply,
    TResult Function(List<AST> operands)? divide,
  }) {
    return subtract?.call(operands);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? number,
    TResult Function(List<AST> operands)? add,
    TResult Function(List<AST> operands)? subtract,
    TResult Function(List<AST> operands)? multiply,
    TResult Function(List<AST> operands)? divide,
    required TResult orElse(),
  }) {
    if (subtract != null) {
      return subtract(operands);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Number value) number,
    required TResult Function(Add value) add,
    required TResult Function(Subtract value) subtract,
    required TResult Function(Multiply value) multiply,
    required TResult Function(Divide value) divide,
  }) {
    return subtract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(Add value)? add,
    TResult Function(Subtract value)? subtract,
    TResult Function(Multiply value)? multiply,
    TResult Function(Divide value)? divide,
  }) {
    return subtract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(Add value)? add,
    TResult Function(Subtract value)? subtract,
    TResult Function(Multiply value)? multiply,
    TResult Function(Divide value)? divide,
    required TResult orElse(),
  }) {
    if (subtract != null) {
      return subtract(this);
    }
    return orElse();
  }
}

abstract class Subtract implements AST {
  const factory Subtract(final List<AST> operands) = _$Subtract;

  List<AST> get operands;
  @JsonKey(ignore: true)
  _$$SubtractCopyWith<_$Subtract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultiplyCopyWith<$Res> {
  factory _$$MultiplyCopyWith(
          _$Multiply value, $Res Function(_$Multiply) then) =
      __$$MultiplyCopyWithImpl<$Res>;
  $Res call({List<AST> operands});
}

/// @nodoc
class __$$MultiplyCopyWithImpl<$Res> extends _$ASTCopyWithImpl<$Res>
    implements _$$MultiplyCopyWith<$Res> {
  __$$MultiplyCopyWithImpl(_$Multiply _value, $Res Function(_$Multiply) _then)
      : super(_value, (v) => _then(v as _$Multiply));

  @override
  _$Multiply get _value => super._value as _$Multiply;

  @override
  $Res call({
    Object? operands = freezed,
  }) {
    return _then(_$Multiply(
      operands == freezed
          ? _value._operands
          : operands // ignore: cast_nullable_to_non_nullable
              as List<AST>,
    ));
  }
}

/// @nodoc

class _$Multiply implements Multiply {
  const _$Multiply(final List<AST> operands) : _operands = operands;

  final List<AST> _operands;
  @override
  List<AST> get operands {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_operands);
  }

  @override
  String toString() {
    return 'AST.multiply(operands: $operands)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Multiply &&
            const DeepCollectionEquality().equals(other._operands, _operands));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_operands));

  @JsonKey(ignore: true)
  @override
  _$$MultiplyCopyWith<_$Multiply> get copyWith =>
      __$$MultiplyCopyWithImpl<_$Multiply>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) number,
    required TResult Function(List<AST> operands) add,
    required TResult Function(List<AST> operands) subtract,
    required TResult Function(List<AST> operands) multiply,
    required TResult Function(List<AST> operands) divide,
  }) {
    return multiply(operands);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value)? number,
    TResult Function(List<AST> operands)? add,
    TResult Function(List<AST> operands)? subtract,
    TResult Function(List<AST> operands)? multiply,
    TResult Function(List<AST> operands)? divide,
  }) {
    return multiply?.call(operands);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? number,
    TResult Function(List<AST> operands)? add,
    TResult Function(List<AST> operands)? subtract,
    TResult Function(List<AST> operands)? multiply,
    TResult Function(List<AST> operands)? divide,
    required TResult orElse(),
  }) {
    if (multiply != null) {
      return multiply(operands);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Number value) number,
    required TResult Function(Add value) add,
    required TResult Function(Subtract value) subtract,
    required TResult Function(Multiply value) multiply,
    required TResult Function(Divide value) divide,
  }) {
    return multiply(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(Add value)? add,
    TResult Function(Subtract value)? subtract,
    TResult Function(Multiply value)? multiply,
    TResult Function(Divide value)? divide,
  }) {
    return multiply?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(Add value)? add,
    TResult Function(Subtract value)? subtract,
    TResult Function(Multiply value)? multiply,
    TResult Function(Divide value)? divide,
    required TResult orElse(),
  }) {
    if (multiply != null) {
      return multiply(this);
    }
    return orElse();
  }
}

abstract class Multiply implements AST {
  const factory Multiply(final List<AST> operands) = _$Multiply;

  List<AST> get operands;
  @JsonKey(ignore: true)
  _$$MultiplyCopyWith<_$Multiply> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DivideCopyWith<$Res> {
  factory _$$DivideCopyWith(_$Divide value, $Res Function(_$Divide) then) =
      __$$DivideCopyWithImpl<$Res>;
  $Res call({List<AST> operands});
}

/// @nodoc
class __$$DivideCopyWithImpl<$Res> extends _$ASTCopyWithImpl<$Res>
    implements _$$DivideCopyWith<$Res> {
  __$$DivideCopyWithImpl(_$Divide _value, $Res Function(_$Divide) _then)
      : super(_value, (v) => _then(v as _$Divide));

  @override
  _$Divide get _value => super._value as _$Divide;

  @override
  $Res call({
    Object? operands = freezed,
  }) {
    return _then(_$Divide(
      operands == freezed
          ? _value._operands
          : operands // ignore: cast_nullable_to_non_nullable
              as List<AST>,
    ));
  }
}

/// @nodoc

class _$Divide implements Divide {
  const _$Divide(final List<AST> operands) : _operands = operands;

  final List<AST> _operands;
  @override
  List<AST> get operands {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_operands);
  }

  @override
  String toString() {
    return 'AST.divide(operands: $operands)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Divide &&
            const DeepCollectionEquality().equals(other._operands, _operands));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_operands));

  @JsonKey(ignore: true)
  @override
  _$$DivideCopyWith<_$Divide> get copyWith =>
      __$$DivideCopyWithImpl<_$Divide>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) number,
    required TResult Function(List<AST> operands) add,
    required TResult Function(List<AST> operands) subtract,
    required TResult Function(List<AST> operands) multiply,
    required TResult Function(List<AST> operands) divide,
  }) {
    return divide(operands);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value)? number,
    TResult Function(List<AST> operands)? add,
    TResult Function(List<AST> operands)? subtract,
    TResult Function(List<AST> operands)? multiply,
    TResult Function(List<AST> operands)? divide,
  }) {
    return divide?.call(operands);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? number,
    TResult Function(List<AST> operands)? add,
    TResult Function(List<AST> operands)? subtract,
    TResult Function(List<AST> operands)? multiply,
    TResult Function(List<AST> operands)? divide,
    required TResult orElse(),
  }) {
    if (divide != null) {
      return divide(operands);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Number value) number,
    required TResult Function(Add value) add,
    required TResult Function(Subtract value) subtract,
    required TResult Function(Multiply value) multiply,
    required TResult Function(Divide value) divide,
  }) {
    return divide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(Add value)? add,
    TResult Function(Subtract value)? subtract,
    TResult Function(Multiply value)? multiply,
    TResult Function(Divide value)? divide,
  }) {
    return divide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(Add value)? add,
    TResult Function(Subtract value)? subtract,
    TResult Function(Multiply value)? multiply,
    TResult Function(Divide value)? divide,
    required TResult orElse(),
  }) {
    if (divide != null) {
      return divide(this);
    }
    return orElse();
  }
}

abstract class Divide implements AST {
  const factory Divide(final List<AST> operands) = _$Divide;

  List<AST> get operands;
  @JsonKey(ignore: true)
  _$$DivideCopyWith<_$Divide> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Result<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) ok,
    required TResult Function() none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value)? ok,
    TResult Function()? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? ok,
    TResult Function()? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<T> value) ok,
    required TResult Function(None<T> value) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(None<T> value)? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(None<T> value)? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, $Res> implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result<T> _value;
  // ignore: unused_field
  final $Res Function(Result<T>) _then;
}

/// @nodoc
abstract class _$$OkCopyWith<T, $Res> {
  factory _$$OkCopyWith(_$Ok<T> value, $Res Function(_$Ok<T>) then) =
      __$$OkCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class __$$OkCopyWithImpl<T, $Res> extends _$ResultCopyWithImpl<T, $Res>
    implements _$$OkCopyWith<T, $Res> {
  __$$OkCopyWithImpl(_$Ok<T> _value, $Res Function(_$Ok<T>) _then)
      : super(_value, (v) => _then(v as _$Ok<T>));

  @override
  _$Ok<T> get _value => super._value as _$Ok<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$Ok<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Ok<T> implements Ok<T> {
  const _$Ok(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'Result<$T>.ok(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Ok<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$OkCopyWith<T, _$Ok<T>> get copyWith =>
      __$$OkCopyWithImpl<T, _$Ok<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) ok,
    required TResult Function() none,
  }) {
    return ok(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value)? ok,
    TResult Function()? none,
  }) {
    return ok?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? ok,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<T> value) ok,
    required TResult Function(None<T> value) none,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(None<T> value)? none,
  }) {
    return ok?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(None<T> value)? none,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class Ok<T> implements Result<T> {
  const factory Ok(final T value) = _$Ok<T>;

  T get value;
  @JsonKey(ignore: true)
  _$$OkCopyWith<T, _$Ok<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoneCopyWith<T, $Res> {
  factory _$$NoneCopyWith(_$None<T> value, $Res Function(_$None<T>) then) =
      __$$NoneCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NoneCopyWithImpl<T, $Res> extends _$ResultCopyWithImpl<T, $Res>
    implements _$$NoneCopyWith<T, $Res> {
  __$$NoneCopyWithImpl(_$None<T> _value, $Res Function(_$None<T>) _then)
      : super(_value, (v) => _then(v as _$None<T>));

  @override
  _$None<T> get _value => super._value as _$None<T>;
}

/// @nodoc

class _$None<T> implements None<T> {
  const _$None();

  @override
  String toString() {
    return 'Result<$T>.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$None<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) ok,
    required TResult Function() none,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value)? ok,
    TResult Function()? none,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? ok,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ok<T> value) ok,
    required TResult Function(None<T> value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(None<T> value)? none,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ok<T> value)? ok,
    TResult Function(None<T> value)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class None<T> implements Result<T> {
  const factory None() = _$None<T>;
}
