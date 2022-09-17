import 'package:freezed_annotation/freezed_annotation.dart';
part 'parser_combinator.freezed.dart';

@freezed
class Result<T> with _$Result {
  const factory Result.success(T value, String rest) = Success<T>;
  const factory Result.failure() = Failure<T>;
}

@freezed
class Token with _$Token {
  const factory Token.number(double value, [@Default("") String type]) =
      NumberToken;
  const factory Token.plus() = PlusToken;
  const factory Token.minus() = MinusToken;
  const factory Token.multiply() = MultiplyToken;
  const factory Token.divide() = DivideToken;
  const factory Token.leftParenthesis() = LeftParenthesisToken;
  const factory Token.rightParenthesis() = RightParenthesisToken;
  const factory Token.power() = PowerToken;
  const factory Token.variable(String name) = VariableToken;
  const factory Token.assignment() = AssignmentToken;
}

typedef Parser<T> = Result<T> Function(String input);

Parser<List<Token>> parseTokens = oneOf([assignment, expression]);

Parser<List<Token>> assignment = combine([
  lift(variable),
  lift(to(trim(char(":")), const Token.assignment())),
  expression
]);

Parser<List<Token>> operator = lift(oneOf([
  plus,
  minus,
  multiply,
  divide,
  power,
]));

Parser<List<Token>> value = oneOf([
  lift(number),
  lift(variable),
  combine([
    lift(leftParenthesis),
    // Recurstion needs to be lazy to avoid infinite recursion at build time
    (input) => expression(input),
    lift(rightParenthesis)
  ])
]);

Parser<List<Token>> expression = combine([
  value,
  zeroOrMore(combine([operator, value]))
]);

Parser<List<T>> zeroOrMore<T>(Parser<List<T>> parser) {
  return (input) {
    final results = <T>[];
    var rest = input;
    while (true) {
      final result = parser(rest);
      if (result is Success<List<T>>) {
        results.addAll(result.value);
        rest = result.rest;
      } else {
        break;
      }
    }
    return Success(results, rest);
  };
}

Parser<List<T>> lift<T>(Parser<T> parser) =>
    map(parser, (T value, rest) => Success([value], rest));

Parser<List<T>> combine<T>(List<Parser<List<T>>> parsers) {
  return (String input) {
    final results = <T>[];
    var rest = input;
    for (final parser in parsers) {
      final result = parser(rest);
      if (result is Success<List<T>>) {
        results.addAll(result.value);
        rest = result.rest;
      } else {
        return Failure<List<T>>();
      }
    }
    return Success<List<T>>(results, rest);
  };
}

Parser<U> map<T, U>(
    Parser<T> parser, Result<U> Function(T value, String rest) callback) {
  return (input) {
    final result = parser(input);
    return result.when(
      success: (value, rest) => callback(value, rest),
      failure: () => Failure<U>(),
    );
  };
}

bool isLetter(String char) {
  // Letter is upper- or lowercase letter, including upper- and lowercase latin extended characters
  return RegExp(r'^[a-zA-Z\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u00FF]')
      .hasMatch(char);
}

Parser<String> letter = (input) => input.isNotEmpty && isLetter(input[0])
    ? Success(input[0], input.substring(1))
    : const Failure<String>();

Parser<String> variableWord = repeat(oneOf([letter, digit]));

Parser<VariableToken> variable = map(
    trim(join([
      variableWord,
      maybeString(join([
        whitespace,
        repeat(variableWord),
      ])),
    ])),
    (String value, rest) => Success(VariableToken(value), rest));

Parser<NumberToken> number = map(
  trim(join([
    maybeString(oneOf([char("-"), char("+")])),
    repeat(digit),
    maybeString(join([
      oneOf([char("."), to(char(","), ".")]),
      repeat(digit)
    ])),
    maybeString(join([maybeString(char(' ')), repeat(letter)])),
  ])),
  (String numberTypeString, String rest) {
    final numberType = numberTypeString.split(' ').skip(1).join("");
    final numValue = double.tryParse(numberTypeString.split(' ').first);
    return numValue != null
        ? Success(NumberToken(numValue, numberType), rest)
        : const Failure();
  },
);

Parser<U> to<T, U>(Parser<T> parser, U value) {
  return map(parser, (T _, String rest) => Success(value, rest));
}

Parser<PlusToken> plus = to(trim(char("+")), const PlusToken());
Parser<MinusToken> minus = to(trim(char("-")), const MinusToken());
Parser<MultiplyToken> multiply = to(trim(char("*")), const MultiplyToken());
Parser<DivideToken> divide = to(trim(char("/")), const DivideToken());
Parser<LeftParenthesisToken> leftParenthesis =
    to(trim(char("(")), const LeftParenthesisToken());
Parser<RightParenthesisToken> rightParenthesis =
    to(trim(char(")")), const RightParenthesisToken());
Parser<PowerToken> power = to(trim(char("^")), const PowerToken());

Parser<String> char(String character) => (input) {
      if (input.startsWith(character)) {
        return Success(character, input.substring(character.length));
      } else {
        return const Failure();
      }
    };

Parser<String> whitespace = repeat(oneOf([
  char(" "),
  char("\t"),
]));

Parser<T> oneOf<T>(List<Parser<T>> parsers) => (input) {
      for (final parser in parsers) {
        final result = parser(input);
        if (result is Success) {
          return result;
        }
      }
      return Failure<T>();
    };

Parser<String> digit = oneOf([
  char("0"),
  char("1"),
  char("2"),
  char("3"),
  char("4"),
  char("5"),
  char("6"),
  char("7"),
  char("8"),
  char("9")
]);

Parser<String> repeat(Parser<String> parser) {
  return (input) {
    final result = listOf(parser)(input);
    if (result is Success<List<String>>) {
      return Success(result.value.join(), result.rest);
    } else {
      return const Failure();
    }
  };
}

Parser<String> join(List<Parser<String>> parsers) {
  return (input) {
    var value = "";
    var rest = input;
    for (final parser in parsers) {
      final result = parser(rest);
      if (result is Success<String>) {
        value += result.value;
        rest = result.rest;
      } else {
        return const Failure();
      }
    }
    return Success(value, rest);
  };
}

Parser<List<T>> maybe<T>(Parser<List<T>> parser) {
  return (input) {
    final result = parser(input);
    if (result is Success<List<T>>) {
      return result;
    } else {
      return Success<List<T>>([], input);
    }
  };
}

Parser<String> maybeString(Parser<String> parser) {
  return (input) {
    final result = parser(input);
    if (result is Success<String>) {
      return result;
    } else {
      return Success("", input);
    }
  };
}

Parser<String> skip(Parser<String> parser) => to(parser, "");

Parser<String> trim(Parser<String> parser) => join([
      skip(maybeString(whitespace)),
      parser,
      skip(maybeString(whitespace)),
    ]);

Parser<List<T>> listOf<T>(Parser<T> parser) {
  return (input) {
    List<T> values = [];
    var rest = input;
    var result = parser(rest);

    if (result is Failure<T>) {
      return const Failure();
    }

    while (result is Success<T>) {
      values.add(result.value);
      rest = result.rest;
      result = parser(result.rest);
    }

    return Success(values, rest);
  };
}
