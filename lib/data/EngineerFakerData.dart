import 'package:intl/intl.dart';
import 'package:haohsing_flutter/model/response/maintenance/engineerWorkOrder/EngineerWorkOrderResponse.dart';

import '../model/response/maintenance/getTaskInformation/GetTaskInformationResponse.dart';
import '../model/task/TaskStatus.dart';

final now = DateTime.now();
final dateFormat = DateFormat('yyyy-MM-dd HH:mm:ss');

final List<String> typeNames = ['維修', '安裝', '巡檢', '故障排除'];
final List<String> statusNames = ['待處理', '進行中', '已完成', '已取消', '草稿', '異常', '需重新排程'];
final List<String> names = ['新北中和廠', '桃園龍潭倉庫', '高雄小港場', '台南新營廠', '台中北屯倉', '基隆八斗子', '花蓮瑞穗場'];

TaskStatus getTaskStatus(int status, int continuance) {
  if (continuance == 1) {
    return TaskStatus.needReschedule;
  }

  switch (status) {
    case -1:
      return TaskStatus.draft;
    case 0:
      return TaskStatus.pending;
    case 1:
      return TaskStatus.scheduled;
    case 2:
      return TaskStatus.completed;
    case 3:
      return TaskStatus.cancelled;
    case 4:
      return TaskStatus.error;
    default:
      throw ArgumentError('無效的 status 值: $status');
  }
}

// 產生300筆，狀態和 continuance 輪流穿插、涵蓋全部情境
final List<EngineerWorkOrderResponse> mockEngineerWorkOrderList = List.generate(300, (index) {
  // -90 ~ +90天內，均勻分布
  final randomDays = -90 + (index * 180 ~/ 300);
  final appoint = now.add(Duration(days: randomDays, hours: index % 24));
  final add = now.add(Duration(days: randomDays - 1, hours: (index + 3) % 24));

  // status [-1,0,1,2,3,4]
  int status = [-1, 0, 1, 2, 3, 4][index % 6];

  // 讓 continuance 有 1（needReschedule）和正常值輪流出現
  int continuance = (index % 13 == 0) ? 1 : ((index % 2 == 0) ? 0 : (10 + (index % 40)));

  // 根據 status/continuance 決定顯示 statusName
  TaskStatus taskStatus = getTaskStatus(status, continuance);
  String statusName;
  switch (taskStatus) {
    case TaskStatus.draft:
      statusName = '草稿';
      break;
    case TaskStatus.pending:
      statusName = '待處理';
      break;
    case TaskStatus.scheduled:
      statusName = '進行中';
      break;
    case TaskStatus.completed:
      statusName = '已完成';
      break;
    case TaskStatus.cancelled:
      statusName = '已取消';
      break;
    case TaskStatus.error:
      statusName = '異常';
      break;
    case TaskStatus.needReschedule:
      statusName = '需重新排程';
      break;
  }

  final typeName = typeNames[index % typeNames.length];
  final name = names[index % names.length];

  return EngineerWorkOrderResponse(
    mId: 1000 + index,
    status: status,
    typeName: typeName,
    statusName: statusName,
    name: name,
    address: '$name ${100 + index}號',
    continuance: continuance,
    appointedDatetime: dateFormat.format(appoint),
    addedTime: dateFormat.format(add),
  );
});

final List<GetTaskInformationResponse> mockGetTaskInformationList = List.generate(
  mockEngineerWorkOrderList.length,
      (index) {
    final order = mockEngineerWorkOrderList[index];

    // 模擬部分資料
    int vendorId = 1;
    int customerId = 100 + (index % 10);
    int userId = 20 + (index % 5);
    int engineer = 160 + (index % 10);
    String engineerName = '工程師${['甲', '乙', '丙', '丁', '戊', '己', '庚', '辛', '壬', '癸'][index % 10]}';
    int type = index % 4 + 1;
    String tel = '09${(index % 10).toString().padLeft(2, '0')}${(8000000 + index).toString().substring(1)}';
    String vendorName = '霈龍實業有限公司';
    String vendorTel = '07-72777575';
    String customerName = ['一般家用', '新增測試', '王小明', '小美', '測試公司'][index % 5];
    String customerTel = tel;
    String customerAddress = ['台北市信義區', '新北市新莊區', '台中市西屯區', '高雄市鼓山區', '南投縣埔里鎮'][index % 5] + ' ${50 + index}號';

    // 部分欄位可根據範例填入預設
    return GetTaskInformationResponse(
      mId: order.mId,
      vendorId: vendorId,
      customerId: customerId,
      description: null,
      vendorDescription: [
        "熱水-不出水 ,溫水-溫度過高 ,冰水-不製冰",
        "HS-170：1台HS-N2：2台",
        "場刊的備註說明",
        null,
      ][index % 4],
      userId: userId,
      deviceId: null,
      status: order.status,
      statusName: order.statusName,
      continuance: order.continuance,
      engineer: engineer,
      engineerName: engineerName,
      type: type,
      typeName: order.typeName,
      expectedDaysOfWeek: null,
      signImage: null,
      expectedTimeOfWeek: '${(8 + index % 10).toString().padLeft(2, '0')}:${(40 + index % 20).toString().padLeft(2, '0')}-${(8 + index % 10).toString().padLeft(2, '0')}:${(40 + (index % 20)).toString().padLeft(2, '0')}',
      addedTime: order.addedTime,
      appointedDatetime: order.appointedDatetime,
      workStartDatetime: null,
      workEndDatetime: null,
      name: order.name,
      tel: tel,
      fee: [null, 88, 22, null][index % 4],
      work: null,
      errorReason: null,
      attachmentUrl: null,
      vendorName: vendorName,
      vendorTel: vendorTel,
      customerName: customerName,
      customerTel: customerTel,
      customerAddress: customerAddress,
      values: [],
      deviceValues: null,
      userImages: [],
      engineerImages: [],
      installations: [],
      addedType: 'web',
      sn: null,
    );
  },
);
