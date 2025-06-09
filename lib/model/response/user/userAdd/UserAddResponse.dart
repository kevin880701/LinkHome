import 'package:freezed_annotation/freezed_annotation.dart';

part 'UserAddResponse.freezed.dart';
part 'UserAddResponse.g.dart';

@freezed
class UserAddResponse with _$UserAddResponse {
  const factory UserAddResponse({
    @JsonKey(name: 'result') required int result,
  }) = _UserAddResponse;

  factory UserAddResponse.fromJson(Map<String, dynamic> json) => _$UserAddResponseFromJson(json);
}
