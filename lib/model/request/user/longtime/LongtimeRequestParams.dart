import 'package:freezed_annotation/freezed_annotation.dart';

part 'LongtimeRequestParams.freezed.dart';
part 'LongtimeRequestParams.g.dart';

@freezed
class LongtimeRequestParams with _$LongtimeRequestParams {
  const factory LongtimeRequestParams({
    @JsonKey(name: 'loginType') required String loginType,
  }) = _LongtimeRequestParams;

  factory LongtimeRequestParams.fromJson(Map<String, dynamic> json) =>
      _$LongtimeRequestParamsFromJson(json);
}
