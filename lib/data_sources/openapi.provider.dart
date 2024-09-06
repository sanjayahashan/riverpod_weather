import 'package:openapi/openapi.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'openapi.provider.g.dart';

@riverpod
Openapi openapi(OpenapiRef ref) {
  return Openapi();
}
