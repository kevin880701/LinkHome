import 'package:intl/intl.dart';

import '../model/response/device/getShares/GetSharesResponse.dart';
import '../model/response/msg/getMsgs/GetMsgResponse.dart';

final mockSharesResponse = [
  const GetSharesResponse(
    owner: '王小明',
    placeId: 101,
    placeName: '台北市信義區市府路45號',
    deviceId: 5001,
    names: '廚房溫控器、陽台監控器',
  ),
  const GetSharesResponse(
    owner: '林小白',
    placeId: 102,
    placeName: '新北市板橋區文化路100巷',
    deviceId: 5002,
    names: '客廳冷氣控制器',
  ),
  const GetSharesResponse(
    owner: '張大華',
    placeId: 103,
    placeName: '桃園市中壢區中正路88號',
    deviceId: 5003,
    names: '浴室除濕機、熱水器控制器',
  ),
  const GetSharesResponse(
    owner: '王小明',
    placeId: 104,
    placeName: '高雄市左營區自由三路321號',
    deviceId: 5004,
    names: '客廳電視、玄關電燈',
  ),
  const GetSharesResponse(
    owner: '林小白',
    placeId: 105,
    placeName: '台中市北區健行路150號',
    deviceId: 5005,
    names: '廚房油煙感測器、瓦斯警報器',
  ),
];

final mockMsgResponseList = [
  GetMsgResponse(
    msgId: 1001,
    userId: 1,
    type: 1,
    subject: '溫度過高警告',
    body: '廚房溫控器偵測到異常高溫，請立即檢查。',
    addedTime: DateFormat("yyyy-MM-dd HH:mm").format(DateTime.now().subtract(Duration(days: 3))),
    deviceId: 5001,
    mId: null,
    isRead: 0,
  ),
  GetMsgResponse(
    msgId: 1002,
    userId: 1,
    type: 2,
    subject: '設備連線成功',
    body: '您的陽台監控器已成功連線。',
    addedTime: DateFormat("yyyy-MM-dd HH:mm").format(DateTime.now().subtract(Duration(days: 10))),
    deviceId: 5002,
    mId: 20,
    isRead: 1,
  ),
  GetMsgResponse(
    msgId: 1003,
    userId: 1,
    type: 3,
    subject: '定期維護提醒',
    body: '建議您定期檢查浴室除濕機的濾網狀況。',
    addedTime: DateFormat("yyyy-MM-dd HH:mm").format(DateTime.now().subtract(Duration(days: 95))), // 超過 3 個月
    deviceId: null,
    mId: null,
    isRead: 0,
  ),
];
