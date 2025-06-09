import 'package:intl/intl.dart';
import 'package:haohsing_flutter/model/response/maintenance/engineerWorkOrder/EngineerWorkOrderResponse.dart';

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
