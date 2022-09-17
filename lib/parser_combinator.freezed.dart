// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parser_combinator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Result<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value, String rest) success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value, String rest)? success,
    TResult Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value, String rest)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) success,
    required TResult Function(Failure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(Failure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(Failure<T> value)? failure,
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
abstract class _$$SuccessCopyWith<T, $Res> {
  factory _$$SuccessCopyWith(
          _$Success<T> value, $Res Function(_$Success<T>) then) =
      __$$SuccessCopyWithImpl<T, $Res>;
  $Res call({T value, String rest});
}

/// @nodoc
class __$$SuccessCopyWithImpl<T, $Res> extends _$ResultCopyWithImpl<T, $Res>
    implements _$$SuccessCopyWith<T, $Res> {
  __$$SuccessCopyWithImpl(
      _$Success<T> _value, $Res Function(_$Success<T>) _then)
      : super(_value, (v) => _then(v as _$Success<T>));

  @override
  _$Success<T> get _value => super._value as _$Success<T>;

  @override
  $Res call({
    Object? value = freezed,
    Object? rest = freezed,
  }) {
    return _then(_$Success<T>(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      rest == freezed
          ? _value.rest
          : rest // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Success<T> implements Success<T> {
  const _$Success(this.value, this.rest);

  @override
  final T value;
  @override
  final String rest;

  @override
  String toString() {
    return 'Result<$T>.success(value: $value, rest: $rest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Success<T> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.rest, rest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(rest));

  @JsonKey(ignore: true)
  @override
  _$$SuccessCopyWith<T, _$Success<T>> get copyWith =>
      __$$SuccessCopyWithImpl<T, _$Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value, String rest) success,
    required TResult Function() failure,
  }) {
    return success(value, rest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value, String rest)? success,
    TResult Function()? failure,
  }) {
    return success?.call(value, rest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value, String rest)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(value, rest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) success,
    required TResult Function(Failure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(Failure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> implements Result<T> {
  const factory Success(final T value, final String rest) = _$Success<T>;

  T get value;
  String get rest;
  @JsonKey(ignore: true)
  _$$SuccessCopyWith<T, _$Success<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureCopyWith<T, $Res> {
  factory _$$FailureCopyWith(
          _$Failure<T> value, $Res Function(_$Failure<T>) then) =
      __$$FailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$FailureCopyWithImpl<T, $Res> extends _$ResultCopyWithImpl<T, $Res>
    implements _$$FailureCopyWith<T, $Res> {
  __$$FailureCopyWithImpl(
      _$Failure<T> _value, $Res Function(_$Failure<T>) _then)
      : super(_value, (v) => _then(v as _$Failure<T>));

  @override
  _$Failure<T> get _value => super._value as _$Failure<T>;
}

/// @nodoc

class _$Failure<T> implements Failure<T> {
  const _$Failure();

  @override
  String toString() {
    return 'Result<$T>.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Failure<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value, String rest) success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value, String rest)? success,
    TResult Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value, String rest)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) success,
    required TResult Function(Failure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(Failure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<T> implements Result<T> {
  const factory Failure() = _$Failure<T>;
}

/// @nodoc
mixin _$Token {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value, String type) number,
    required TResult Function() plus,
    required TResult Function() minus,
    required TResult Function() multiply,
    required TResult Function() divide,
    required TResult Function() leftParenthesis,
    required TResult Function() rightParenthesis,
    required TResult Function() power,
    required TResult Function(String name) variable,
    required TResult Function() assignment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberToken value) number,
    required TResult Function(PlusToken value) plus,
    required TResult Function(MinusToken value) minus,
    required TResult Function(MultiplyToken value) multiply,
    required TResult Function(DivideToken value) divide,
    required TResult Function(LeftParenthesisToken value) leftParenthesis,
    required TResult Function(RightParenthesisToken value) rightParenthesis,
    required TResult Function(PowerToken value) power,
    required TResult Function(VariableToken value) variable,
    required TResult Function(AssignmentToken value) assignment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenCopyWith<$Res> {
  factory $TokenCopyWith(Token value, $Res Function(Token) then) =
      _$TokenCopyWithImpl<$Res>;
}

/// @nodoc
class _$TokenCopyWithImpl<$Res> implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._value, this._then);

  final Token _value;
  // ignore: unused_field
  final $Res Function(Token) _then;
}

/// @nodoc
abstract class _$$NumberTokenCopyWith<$Res> {
  factory _$$NumberTokenCopyWith(
          _$NumberToken value, $Res Function(_$NumberToken) then) =
      __$$NumberTokenCopyWithImpl<$Res>;
  $Res call({double value, String type});
}

/// @nodoc
class __$$NumberTokenCopyWithImpl<$Res> extends _$TokenCopyWithImpl<$Res>
    implements _$$NumberTokenCopyWith<$Res> {
  __$$NumberTokenCopyWithImpl(
      _$NumberToken _value, $Res Function(_$NumberToken) _then)
      : super(_value, (v) => _then(v as _$NumberToken));

  @override
  _$NumberToken get _value => super._value as _$NumberToken;

  @override
  $Res call({
    Object? value = freezed,
    Object? type = freezed,
  }) {
    return _then(_$NumberToken(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NumberToken implements NumberToken {
  const _$NumberToken(this.value, [this.type = ""]);

  @override
  final double value;
  @override
  @JsonKey()
  final String type;

  @override
  String toString() {
    return 'Token.number(value: $value, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberToken &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$NumberTokenCopyWith<_$NumberToken> get copyWith =>
      __$$NumberTokenCopyWithImpl<_$NumberToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value, String type) number,
    required TResult Function() plus,
    required TResult Function() minus,
    required TResult Function() multiply,
    required TResult Function() divide,
    required TResult Function() leftParenthesis,
    required TResult Function() rightParenthesis,
    required TResult Function() power,
    required TResult Function(String name) variable,
    required TResult Function() assignment,
  }) {
    return number(value, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
  }) {
    return number?.call(value, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(value, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberToken value) number,
    required TResult Function(PlusToken value) plus,
    required TResult Function(MinusToken value) minus,
    required TResult Function(MultiplyToken value) multiply,
    required TResult Function(DivideToken value) divide,
    required TResult Function(LeftParenthesisToken value) leftParenthesis,
    required TResult Function(RightParenthesisToken value) rightParenthesis,
    required TResult Function(PowerToken value) power,
    required TResult Function(VariableToken value) variable,
    required TResult Function(AssignmentToken value) assignment,
  }) {
    return number(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
  }) {
    return number?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(this);
    }
    return orElse();
  }
}

abstract class NumberToken implements Token {
  const factory NumberToken(final double value, [final String type]) =
      _$NumberToken;

  double get value;
  String get type;
  @JsonKey(ignore: true)
  _$$NumberTokenCopyWith<_$NumberToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlusTokenCopyWith<$Res> {
  factory _$$PlusTokenCopyWith(
          _$PlusToken value, $Res Function(_$PlusToken) then) =
      __$$PlusTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlusTokenCopyWithImpl<$Res> extends _$TokenCopyWithImpl<$Res>
    implements _$$PlusTokenCopyWith<$Res> {
  __$$PlusTokenCopyWithImpl(
      _$PlusToken _value, $Res Function(_$PlusToken) _then)
      : super(_value, (v) => _then(v as _$PlusToken));

  @override
  _$PlusToken get _value => super._value as _$PlusToken;
}

/// @nodoc

class _$PlusToken implements PlusToken {
  const _$PlusToken();

  @override
  String toString() {
    return 'Token.plus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlusToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value, String type) number,
    required TResult Function() plus,
    required TResult Function() minus,
    required TResult Function() multiply,
    required TResult Function() divide,
    required TResult Function() leftParenthesis,
    required TResult Function() rightParenthesis,
    required TResult Function() power,
    required TResult Function(String name) variable,
    required TResult Function() assignment,
  }) {
    return plus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
  }) {
    return plus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
    required TResult orElse(),
  }) {
    if (plus != null) {
      return plus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberToken value) number,
    required TResult Function(PlusToken value) plus,
    required TResult Function(MinusToken value) minus,
    required TResult Function(MultiplyToken value) multiply,
    required TResult Function(DivideToken value) divide,
    required TResult Function(LeftParenthesisToken value) leftParenthesis,
    required TResult Function(RightParenthesisToken value) rightParenthesis,
    required TResult Function(PowerToken value) power,
    required TResult Function(VariableToken value) variable,
    required TResult Function(AssignmentToken value) assignment,
  }) {
    return plus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
  }) {
    return plus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
    required TResult orElse(),
  }) {
    if (plus != null) {
      return plus(this);
    }
    return orElse();
  }
}

abstract class PlusToken implements Token {
  const factory PlusToken() = _$PlusToken;
}

/// @nodoc
abstract class _$$MinusTokenCopyWith<$Res> {
  factory _$$MinusTokenCopyWith(
          _$MinusToken value, $Res Function(_$MinusToken) then) =
      __$$MinusTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MinusTokenCopyWithImpl<$Res> extends _$TokenCopyWithImpl<$Res>
    implements _$$MinusTokenCopyWith<$Res> {
  __$$MinusTokenCopyWithImpl(
      _$MinusToken _value, $Res Function(_$MinusToken) _then)
      : super(_value, (v) => _then(v as _$MinusToken));

  @override
  _$MinusToken get _value => super._value as _$MinusToken;
}

/// @nodoc

class _$MinusToken implements MinusToken {
  const _$MinusToken();

  @override
  String toString() {
    return 'Token.minus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MinusToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value, String type) number,
    required TResult Function() plus,
    required TResult Function() minus,
    required TResult Function() multiply,
    required TResult Function() divide,
    required TResult Function() leftParenthesis,
    required TResult Function() rightParenthesis,
    required TResult Function() power,
    required TResult Function(String name) variable,
    required TResult Function() assignment,
  }) {
    return minus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
  }) {
    return minus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
    required TResult orElse(),
  }) {
    if (minus != null) {
      return minus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberToken value) number,
    required TResult Function(PlusToken value) plus,
    required TResult Function(MinusToken value) minus,
    required TResult Function(MultiplyToken value) multiply,
    required TResult Function(DivideToken value) divide,
    required TResult Function(LeftParenthesisToken value) leftParenthesis,
    required TResult Function(RightParenthesisToken value) rightParenthesis,
    required TResult Function(PowerToken value) power,
    required TResult Function(VariableToken value) variable,
    required TResult Function(AssignmentToken value) assignment,
  }) {
    return minus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
  }) {
    return minus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
    required TResult orElse(),
  }) {
    if (minus != null) {
      return minus(this);
    }
    return orElse();
  }
}

abstract class MinusToken implements Token {
  const factory MinusToken() = _$MinusToken;
}

/// @nodoc
abstract class _$$MultiplyTokenCopyWith<$Res> {
  factory _$$MultiplyTokenCopyWith(
          _$MultiplyToken value, $Res Function(_$MultiplyToken) then) =
      __$$MultiplyTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MultiplyTokenCopyWithImpl<$Res> extends _$TokenCopyWithImpl<$Res>
    implements _$$MultiplyTokenCopyWith<$Res> {
  __$$MultiplyTokenCopyWithImpl(
      _$MultiplyToken _value, $Res Function(_$MultiplyToken) _then)
      : super(_value, (v) => _then(v as _$MultiplyToken));

  @override
  _$MultiplyToken get _value => super._value as _$MultiplyToken;
}

/// @nodoc

class _$MultiplyToken implements MultiplyToken {
  const _$MultiplyToken();

  @override
  String toString() {
    return 'Token.multiply()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MultiplyToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value, String type) number,
    required TResult Function() plus,
    required TResult Function() minus,
    required TResult Function() multiply,
    required TResult Function() divide,
    required TResult Function() leftParenthesis,
    required TResult Function() rightParenthesis,
    required TResult Function() power,
    required TResult Function(String name) variable,
    required TResult Function() assignment,
  }) {
    return multiply();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
  }) {
    return multiply?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
    required TResult orElse(),
  }) {
    if (multiply != null) {
      return multiply();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberToken value) number,
    required TResult Function(PlusToken value) plus,
    required TResult Function(MinusToken value) minus,
    required TResult Function(MultiplyToken value) multiply,
    required TResult Function(DivideToken value) divide,
    required TResult Function(LeftParenthesisToken value) leftParenthesis,
    required TResult Function(RightParenthesisToken value) rightParenthesis,
    required TResult Function(PowerToken value) power,
    required TResult Function(VariableToken value) variable,
    required TResult Function(AssignmentToken value) assignment,
  }) {
    return multiply(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
  }) {
    return multiply?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
    required TResult orElse(),
  }) {
    if (multiply != null) {
      return multiply(this);
    }
    return orElse();
  }
}

abstract class MultiplyToken implements Token {
  const factory MultiplyToken() = _$MultiplyToken;
}

/// @nodoc
abstract class _$$DivideTokenCopyWith<$Res> {
  factory _$$DivideTokenCopyWith(
          _$DivideToken value, $Res Function(_$DivideToken) then) =
      __$$DivideTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DivideTokenCopyWithImpl<$Res> extends _$TokenCopyWithImpl<$Res>
    implements _$$DivideTokenCopyWith<$Res> {
  __$$DivideTokenCopyWithImpl(
      _$DivideToken _value, $Res Function(_$DivideToken) _then)
      : super(_value, (v) => _then(v as _$DivideToken));

  @override
  _$DivideToken get _value => super._value as _$DivideToken;
}

/// @nodoc

class _$DivideToken implements DivideToken {
  const _$DivideToken();

  @override
  String toString() {
    return 'Token.divide()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DivideToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value, String type) number,
    required TResult Function() plus,
    required TResult Function() minus,
    required TResult Function() multiply,
    required TResult Function() divide,
    required TResult Function() leftParenthesis,
    required TResult Function() rightParenthesis,
    required TResult Function() power,
    required TResult Function(String name) variable,
    required TResult Function() assignment,
  }) {
    return divide();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
  }) {
    return divide?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
    required TResult orElse(),
  }) {
    if (divide != null) {
      return divide();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberToken value) number,
    required TResult Function(PlusToken value) plus,
    required TResult Function(MinusToken value) minus,
    required TResult Function(MultiplyToken value) multiply,
    required TResult Function(DivideToken value) divide,
    required TResult Function(LeftParenthesisToken value) leftParenthesis,
    required TResult Function(RightParenthesisToken value) rightParenthesis,
    required TResult Function(PowerToken value) power,
    required TResult Function(VariableToken value) variable,
    required TResult Function(AssignmentToken value) assignment,
  }) {
    return divide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
  }) {
    return divide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
    required TResult orElse(),
  }) {
    if (divide != null) {
      return divide(this);
    }
    return orElse();
  }
}

abstract class DivideToken implements Token {
  const factory DivideToken() = _$DivideToken;
}

/// @nodoc
abstract class _$$LeftParenthesisTokenCopyWith<$Res> {
  factory _$$LeftParenthesisTokenCopyWith(_$LeftParenthesisToken value,
          $Res Function(_$LeftParenthesisToken) then) =
      __$$LeftParenthesisTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LeftParenthesisTokenCopyWithImpl<$Res>
    extends _$TokenCopyWithImpl<$Res>
    implements _$$LeftParenthesisTokenCopyWith<$Res> {
  __$$LeftParenthesisTokenCopyWithImpl(_$LeftParenthesisToken _value,
      $Res Function(_$LeftParenthesisToken) _then)
      : super(_value, (v) => _then(v as _$LeftParenthesisToken));

  @override
  _$LeftParenthesisToken get _value => super._value as _$LeftParenthesisToken;
}

/// @nodoc

class _$LeftParenthesisToken implements LeftParenthesisToken {
  const _$LeftParenthesisToken();

  @override
  String toString() {
    return 'Token.leftParenthesis()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LeftParenthesisToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value, String type) number,
    required TResult Function() plus,
    required TResult Function() minus,
    required TResult Function() multiply,
    required TResult Function() divide,
    required TResult Function() leftParenthesis,
    required TResult Function() rightParenthesis,
    required TResult Function() power,
    required TResult Function(String name) variable,
    required TResult Function() assignment,
  }) {
    return leftParenthesis();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
  }) {
    return leftParenthesis?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
    required TResult orElse(),
  }) {
    if (leftParenthesis != null) {
      return leftParenthesis();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberToken value) number,
    required TResult Function(PlusToken value) plus,
    required TResult Function(MinusToken value) minus,
    required TResult Function(MultiplyToken value) multiply,
    required TResult Function(DivideToken value) divide,
    required TResult Function(LeftParenthesisToken value) leftParenthesis,
    required TResult Function(RightParenthesisToken value) rightParenthesis,
    required TResult Function(PowerToken value) power,
    required TResult Function(VariableToken value) variable,
    required TResult Function(AssignmentToken value) assignment,
  }) {
    return leftParenthesis(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
  }) {
    return leftParenthesis?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
    required TResult orElse(),
  }) {
    if (leftParenthesis != null) {
      return leftParenthesis(this);
    }
    return orElse();
  }
}

abstract class LeftParenthesisToken implements Token {
  const factory LeftParenthesisToken() = _$LeftParenthesisToken;
}

/// @nodoc
abstract class _$$RightParenthesisTokenCopyWith<$Res> {
  factory _$$RightParenthesisTokenCopyWith(_$RightParenthesisToken value,
          $Res Function(_$RightParenthesisToken) then) =
      __$$RightParenthesisTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RightParenthesisTokenCopyWithImpl<$Res>
    extends _$TokenCopyWithImpl<$Res>
    implements _$$RightParenthesisTokenCopyWith<$Res> {
  __$$RightParenthesisTokenCopyWithImpl(_$RightParenthesisToken _value,
      $Res Function(_$RightParenthesisToken) _then)
      : super(_value, (v) => _then(v as _$RightParenthesisToken));

  @override
  _$RightParenthesisToken get _value => super._value as _$RightParenthesisToken;
}

/// @nodoc

class _$RightParenthesisToken implements RightParenthesisToken {
  const _$RightParenthesisToken();

  @override
  String toString() {
    return 'Token.rightParenthesis()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RightParenthesisToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value, String type) number,
    required TResult Function() plus,
    required TResult Function() minus,
    required TResult Function() multiply,
    required TResult Function() divide,
    required TResult Function() leftParenthesis,
    required TResult Function() rightParenthesis,
    required TResult Function() power,
    required TResult Function(String name) variable,
    required TResult Function() assignment,
  }) {
    return rightParenthesis();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
  }) {
    return rightParenthesis?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
    required TResult orElse(),
  }) {
    if (rightParenthesis != null) {
      return rightParenthesis();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberToken value) number,
    required TResult Function(PlusToken value) plus,
    required TResult Function(MinusToken value) minus,
    required TResult Function(MultiplyToken value) multiply,
    required TResult Function(DivideToken value) divide,
    required TResult Function(LeftParenthesisToken value) leftParenthesis,
    required TResult Function(RightParenthesisToken value) rightParenthesis,
    required TResult Function(PowerToken value) power,
    required TResult Function(VariableToken value) variable,
    required TResult Function(AssignmentToken value) assignment,
  }) {
    return rightParenthesis(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
  }) {
    return rightParenthesis?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
    required TResult orElse(),
  }) {
    if (rightParenthesis != null) {
      return rightParenthesis(this);
    }
    return orElse();
  }
}

abstract class RightParenthesisToken implements Token {
  const factory RightParenthesisToken() = _$RightParenthesisToken;
}

/// @nodoc
abstract class _$$PowerTokenCopyWith<$Res> {
  factory _$$PowerTokenCopyWith(
          _$PowerToken value, $Res Function(_$PowerToken) then) =
      __$$PowerTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PowerTokenCopyWithImpl<$Res> extends _$TokenCopyWithImpl<$Res>
    implements _$$PowerTokenCopyWith<$Res> {
  __$$PowerTokenCopyWithImpl(
      _$PowerToken _value, $Res Function(_$PowerToken) _then)
      : super(_value, (v) => _then(v as _$PowerToken));

  @override
  _$PowerToken get _value => super._value as _$PowerToken;
}

/// @nodoc

class _$PowerToken implements PowerToken {
  const _$PowerToken();

  @override
  String toString() {
    return 'Token.power()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PowerToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value, String type) number,
    required TResult Function() plus,
    required TResult Function() minus,
    required TResult Function() multiply,
    required TResult Function() divide,
    required TResult Function() leftParenthesis,
    required TResult Function() rightParenthesis,
    required TResult Function() power,
    required TResult Function(String name) variable,
    required TResult Function() assignment,
  }) {
    return power();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
  }) {
    return power?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
    required TResult orElse(),
  }) {
    if (power != null) {
      return power();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberToken value) number,
    required TResult Function(PlusToken value) plus,
    required TResult Function(MinusToken value) minus,
    required TResult Function(MultiplyToken value) multiply,
    required TResult Function(DivideToken value) divide,
    required TResult Function(LeftParenthesisToken value) leftParenthesis,
    required TResult Function(RightParenthesisToken value) rightParenthesis,
    required TResult Function(PowerToken value) power,
    required TResult Function(VariableToken value) variable,
    required TResult Function(AssignmentToken value) assignment,
  }) {
    return power(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
  }) {
    return power?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
    required TResult orElse(),
  }) {
    if (power != null) {
      return power(this);
    }
    return orElse();
  }
}

abstract class PowerToken implements Token {
  const factory PowerToken() = _$PowerToken;
}

/// @nodoc
abstract class _$$VariableTokenCopyWith<$Res> {
  factory _$$VariableTokenCopyWith(
          _$VariableToken value, $Res Function(_$VariableToken) then) =
      __$$VariableTokenCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$$VariableTokenCopyWithImpl<$Res> extends _$TokenCopyWithImpl<$Res>
    implements _$$VariableTokenCopyWith<$Res> {
  __$$VariableTokenCopyWithImpl(
      _$VariableToken _value, $Res Function(_$VariableToken) _then)
      : super(_value, (v) => _then(v as _$VariableToken));

  @override
  _$VariableToken get _value => super._value as _$VariableToken;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$VariableToken(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VariableToken implements VariableToken {
  const _$VariableToken(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'Token.variable(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariableToken &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$VariableTokenCopyWith<_$VariableToken> get copyWith =>
      __$$VariableTokenCopyWithImpl<_$VariableToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value, String type) number,
    required TResult Function() plus,
    required TResult Function() minus,
    required TResult Function() multiply,
    required TResult Function() divide,
    required TResult Function() leftParenthesis,
    required TResult Function() rightParenthesis,
    required TResult Function() power,
    required TResult Function(String name) variable,
    required TResult Function() assignment,
  }) {
    return variable(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
  }) {
    return variable?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
    required TResult orElse(),
  }) {
    if (variable != null) {
      return variable(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberToken value) number,
    required TResult Function(PlusToken value) plus,
    required TResult Function(MinusToken value) minus,
    required TResult Function(MultiplyToken value) multiply,
    required TResult Function(DivideToken value) divide,
    required TResult Function(LeftParenthesisToken value) leftParenthesis,
    required TResult Function(RightParenthesisToken value) rightParenthesis,
    required TResult Function(PowerToken value) power,
    required TResult Function(VariableToken value) variable,
    required TResult Function(AssignmentToken value) assignment,
  }) {
    return variable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
  }) {
    return variable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
    required TResult orElse(),
  }) {
    if (variable != null) {
      return variable(this);
    }
    return orElse();
  }
}

abstract class VariableToken implements Token {
  const factory VariableToken(final String name) = _$VariableToken;

  String get name;
  @JsonKey(ignore: true)
  _$$VariableTokenCopyWith<_$VariableToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssignmentTokenCopyWith<$Res> {
  factory _$$AssignmentTokenCopyWith(
          _$AssignmentToken value, $Res Function(_$AssignmentToken) then) =
      __$$AssignmentTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssignmentTokenCopyWithImpl<$Res> extends _$TokenCopyWithImpl<$Res>
    implements _$$AssignmentTokenCopyWith<$Res> {
  __$$AssignmentTokenCopyWithImpl(
      _$AssignmentToken _value, $Res Function(_$AssignmentToken) _then)
      : super(_value, (v) => _then(v as _$AssignmentToken));

  @override
  _$AssignmentToken get _value => super._value as _$AssignmentToken;
}

/// @nodoc

class _$AssignmentToken implements AssignmentToken {
  const _$AssignmentToken();

  @override
  String toString() {
    return 'Token.assignment()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AssignmentToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value, String type) number,
    required TResult Function() plus,
    required TResult Function() minus,
    required TResult Function() multiply,
    required TResult Function() divide,
    required TResult Function() leftParenthesis,
    required TResult Function() rightParenthesis,
    required TResult Function() power,
    required TResult Function(String name) variable,
    required TResult Function() assignment,
  }) {
    return assignment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
  }) {
    return assignment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value, String type)? number,
    TResult Function()? plus,
    TResult Function()? minus,
    TResult Function()? multiply,
    TResult Function()? divide,
    TResult Function()? leftParenthesis,
    TResult Function()? rightParenthesis,
    TResult Function()? power,
    TResult Function(String name)? variable,
    TResult Function()? assignment,
    required TResult orElse(),
  }) {
    if (assignment != null) {
      return assignment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberToken value) number,
    required TResult Function(PlusToken value) plus,
    required TResult Function(MinusToken value) minus,
    required TResult Function(MultiplyToken value) multiply,
    required TResult Function(DivideToken value) divide,
    required TResult Function(LeftParenthesisToken value) leftParenthesis,
    required TResult Function(RightParenthesisToken value) rightParenthesis,
    required TResult Function(PowerToken value) power,
    required TResult Function(VariableToken value) variable,
    required TResult Function(AssignmentToken value) assignment,
  }) {
    return assignment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
  }) {
    return assignment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberToken value)? number,
    TResult Function(PlusToken value)? plus,
    TResult Function(MinusToken value)? minus,
    TResult Function(MultiplyToken value)? multiply,
    TResult Function(DivideToken value)? divide,
    TResult Function(LeftParenthesisToken value)? leftParenthesis,
    TResult Function(RightParenthesisToken value)? rightParenthesis,
    TResult Function(PowerToken value)? power,
    TResult Function(VariableToken value)? variable,
    TResult Function(AssignmentToken value)? assignment,
    required TResult orElse(),
  }) {
    if (assignment != null) {
      return assignment(this);
    }
    return orElse();
  }
}

abstract class AssignmentToken implements Token {
  const factory AssignmentToken() = _$AssignmentToken;
}
