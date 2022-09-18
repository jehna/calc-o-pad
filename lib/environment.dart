import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:calc_o_pad/parse.dart';
part 'environment.freezed.dart';

@freezed
class Environment with _$Environment {
  const factory Environment(List<AST> items) = _Environment;

  factory Environment.fromString(String input) => Environment(input
      .split('\n')
      .where((line) => line.isNotEmpty)
      .expand(tryParse)
      .toList());
}

List<AST> tryParse(String line) {
  try {
    return [parse(line)];
  } catch (e) {
    return [];
  }
}
