import 'package:freezed_annotation/freezed_annotation.dart';

part 'DeleteAccountRequestParams.freezed.dart';
part 'DeleteAccountRequestParams.g.dart';

@freezed
class DeleteAccountRequestParams with _$DeleteAccountRequestParams {
  const factory DeleteAccountRequestParams({
    @JsonKey(name: 'account') required String account,
  }) = _DeleteAccountRequestParams;

  factory DeleteAccountRequestParams.fromJson(Map<String, dynamic> json) => _$DeleteAccountRequestParamsFromJson(json);
}
