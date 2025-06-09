import 'package:freezed_annotation/freezed_annotation.dart';

part 'UserExistRequestParams.freezed.dart';
part 'UserExistRequestParams.g.dart';

@freezed
class UserExistRequestParams with _$UserExistRequestParams {
  const factory UserExistRequestParams({
    required String account,
  }) = _UserExistRequestParams;

  factory UserExistRequestParams.fromJson(Map<String, dynamic> json) => _$UserExistRequestParamsFromJson(json);
}
