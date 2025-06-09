import 'package:freezed_annotation/freezed_annotation.dart';

part 'DeleteAccountResponse.freezed.dart';
part 'DeleteAccountResponse.g.dart';

@freezed
class DeleteAccountResponse with _$DeleteAccountResponse {
  const factory DeleteAccountResponse({
    @JsonKey(name: 'result') required String result,
  }) = _DeleteAccountResponse;

  factory DeleteAccountResponse.fromJson(Map<String, dynamic> json) => _$DeleteAccountResponseFromJson(json);
}
