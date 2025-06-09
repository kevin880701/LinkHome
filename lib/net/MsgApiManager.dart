
import "package:haohsing_flutter/net/NetworkInterface.dart";
import '../model/request/msg/ReadMsgRequestParams.dart';
import '../model/response/msg/getMsgs/GetMsgResponse.dart';
import 'ApiEndPoint.dart';

class MsgApiManager {
  MsgApiManager._();

  static final MsgApiManager instance = MsgApiManager._();

  final NetworkInterface _networkInterface = NetworkInterface();

  Future<List<GetMsgResponse>> getMsg({required String token}) async {
    final response = await _networkInterface.get(url: ApiEndPoint.msg, userToken: token);

    List<dynamic> jsonList = response.data;
    List<GetMsgResponse> messages = jsonList.map((json) => GetMsgResponse.fromJson(json as Map<String, dynamic>)).toList();

    return messages;
  }

  Future<bool> readMsg({required String token, required ReadMsgRequestParams params}) async {
    final response = await _networkInterface.put(url: ApiEndPoint.msgRead, userToken: token, query: params.toJson());

    return response.data;
  }
}
