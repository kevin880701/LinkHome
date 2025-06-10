import 'package:intl/intl.dart';
import 'package:haohsing_flutter/model/response/maintenance/engineerWorkOrder/EngineerWorkOrderResponse.dart';

import '../model/response/maintenance/getTaskInformation/GetTaskInformationResponse.dart';
import '../model/response/maintenance/maintenanceForm/MaintenanceFormResponse.dart';
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

final List<MaintenanceFormResponse> maintenanceFormType1 = [
  MaintenanceFormResponse(code: 'AA1', types: '安裝', group1: null, group2: '水源', item: 'TDS'),
  MaintenanceFormResponse(code: 'AA2', types: '安裝', group1: null, group2: '水源', item: '水壓'),
  MaintenanceFormResponse(code: 'AA3', types: '安裝', group1: null, group2: '水源', item: '安裝減壓閥'),
  MaintenanceFormResponse(code: 'AB1', types: '安裝', group1: null, group2: '電源', item: '電壓'),
  MaintenanceFormResponse(code: 'AB2', types: '安裝', group1: null, group2: '電源', item: '接地'),
  MaintenanceFormResponse(code: 'AC1', types: '安裝', group1: null, group2: '排水', item: '暢通'),
  MaintenanceFormResponse(code: 'AC2', types: '安裝', group1: null, group2: '排水', item: '積水'),
  MaintenanceFormResponse(code: 'AC3', types: '安裝', group1: null, group2: '排水', item: '溢水'),
  MaintenanceFormResponse(code: 'AD1', types: '安裝', group1: null, group2: 'RO機', item: '濾芯是否安裝'),
  MaintenanceFormResponse(code: 'AD2', types: '安裝', group1: null, group2: 'RO機', item: 'RO馬達正常啟動'),
  MaintenanceFormResponse(code: 'AE1', types: '安裝', group1: null, group2: '飲水機功能', item: '進水正常'),
  MaintenanceFormResponse(code: 'AE2', types: '安裝', group1: null, group2: '飲水機功能', item: '出水正常'),
  MaintenanceFormResponse(code: 'AE3', types: '安裝', group1: null, group2: '飲水機功能', item: '加熱正常'),
  MaintenanceFormResponse(code: 'AE4', types: '安裝', group1: null, group2: '飲水機功能', item: '製冷正常'),
  MaintenanceFormResponse(code: 'AE5', types: '安裝', group1: null, group2: '飲水機功能', item: '功能正常'),
  MaintenanceFormResponse(code: 'AF1', types: '安裝', group1: null, group2: '使用說明', item: '電源插座位置'),
  MaintenanceFormResponse(code: 'AF2', types: '安裝', group1: null, group2: '使用說明', item: '電源開關位置'),
  MaintenanceFormResponse(code: 'AF3', types: '安裝', group1: null, group2: '使用說明', item: '水源與水源開關位置'),
  MaintenanceFormResponse(code: 'AF4', types: '安裝', group1: null, group2: '使用說明', item: '產品基本功能說明'),
  MaintenanceFormResponse(code: 'AF5', types: '安裝', group1: null, group2: '使用說明', item: '產品基本保養說明'),
  MaintenanceFormResponse(code: 'AF6', types: '安裝', group1: null, group2: '使用說明', item: '保養維修聯絡方式'),
  MaintenanceFormResponse(code: 'AF7', types: '安裝', group1: null, group2: '使用說明', item: '交付說明書跟保證卡'),
];

final List<MaintenanceFormResponse> maintenanceFormType2 = [
  MaintenanceFormResponse(code: 'BA1', types: '保養', group1: null, group2: '', item: 'TDS'),
  MaintenanceFormResponse(code: 'BA2', types: '保養', group1: null, group2: '', item: '驗水'),
  MaintenanceFormResponse(code: 'BB1', types: '保養', group1: null, group2: '更換濾芯', item: '第一道'),
  MaintenanceFormResponse(code: 'BB2', types: '保養', group1: null, group2: '更換濾芯', item: '第二道'),
  MaintenanceFormResponse(code: 'BB3', types: '保養', group1: null, group2: '更換濾芯', item: '第三道'),
  MaintenanceFormResponse(code: 'BB4', types: '保養', group1: null, group2: '更換濾芯', item: 'RO膜'),
  MaintenanceFormResponse(code: 'BB5', types: '保養', group1: null, group2: '更換濾芯', item: '第五道'),
  MaintenanceFormResponse(code: 'BB6', types: '保養', group1: null, group2: '更換濾芯', item: '其它'),
  MaintenanceFormResponse(code: 'BC1', types: '保養', group1: null, group2: '基礎保養', item: '外觀清潔'),
  MaintenanceFormResponse(code: 'BC2', types: '保養', group1: null, group2: '基礎保養', item: '電路檢查'),
  MaintenanceFormResponse(code: 'BC3', types: '保養', group1: null, group2: '基礎保養', item: '進、排水管檢查'),
  MaintenanceFormResponse(code: 'BD1', types: '保養', group1: null, group2: '基礎保養', item: '清缸(一年一次)'),
  MaintenanceFormResponse(code: 'BD2', types: '保養', group1: null, group2: '基礎保養', item: '其它'),
];

final List<MaintenanceFormResponse> maintenanceFormType3 = [
  MaintenanceFormResponse(code: "CAA1", types: "維修", group1: "客戶反應內容", group2: "熱水", item: "不出水"),
  MaintenanceFormResponse(code: "CAA2", types: "維修", group1: "客戶反應內容", group2: "熱水", item: "不加熱"),
  MaintenanceFormResponse(code: "CAA3", types: "維修", group1: "客戶反應內容", group2: "熱水", item: "出水小"),
  MaintenanceFormResponse(code: "CAA4", types: "維修", group1: "客戶反應內容", group2: "熱水", item: "自行出水"),
  MaintenanceFormResponse(code: "CAB1", types: "維修", group1: "客戶反應內容", group2: "溫水", item: "不出水"),
  MaintenanceFormResponse(code: "CAB2", types: "維修", group1: "客戶反應內容", group2: "溫水", item: "溫度過高"),
  MaintenanceFormResponse(code: "CAB3", types: "維修", group1: "客戶反應內容", group2: "溫水", item: "出水小"),
  MaintenanceFormResponse(code: "CAB4", types: "維修", group1: "客戶反應內容", group2: "溫水", item: "自行出水"),
  MaintenanceFormResponse(code: "CAC1", types: "維修", group1: "客戶反應內容", group2: "冰水", item: "不出水"),
  MaintenanceFormResponse(code: "CAC2", types: "維修", group1: "客戶反應內容", group2: "冰水", item: "不製冷"),
  MaintenanceFormResponse(code: "CAC3", types: "維修", group1: "客戶反應內容", group2: "冰水", item: "出水小"),
  MaintenanceFormResponse(code: "CAC4", types: "維修", group1: "客戶反應內容", group2: "冰水", item: "自行出水"),
  MaintenanceFormResponse(code: "CAD1", types: "維修", group1: "客戶反應內容", group2: "電源", item: "無電源"),
  MaintenanceFormResponse(code: "CAD2", types: "維修", group1: "客戶反應內容", group2: "電源", item: "跳電"),
  MaintenanceFormResponse(code: "CAD3", types: "維修", group1: "客戶反應內容", group2: "電源", item: "顯示異常"),
  MaintenanceFormResponse(code: "CAE1", types: "維修", group1: "客戶反應內容", group2: "異音", item: "製冷系統"),
  MaintenanceFormResponse(code: "CAE2", types: "維修", group1: "客戶反應內容", group2: "異音", item: "RO系統"),
  MaintenanceFormResponse(code: "CAE3", types: "維修", group1: "客戶反應內容", group2: "異音", item: "加熱系統"),
  MaintenanceFormResponse(code: "CAF1", types: "維修", group1: "客戶反應內容", group2: "漏水", item: "大量漏水"),
  MaintenanceFormResponse(code: "CAF2", types: "維修", group1: "客戶反應內容", group2: "漏水", item: "少量漏水"),
  MaintenanceFormResponse(code: "CAF3", types: "維修", group1: "客戶反應內容", group2: "漏水", item: "輕微漏水"),
  MaintenanceFormResponse(code: "CAG1", types: "維修", group1: "客戶反應內容", group2: "功能異常", item: "再沸騰"),
  MaintenanceFormResponse(code: "CAG2", types: "維修", group1: "客戶反應內容", group2: "功能異常", item: "連續出水"),
  MaintenanceFormResponse(code: "CAG3", types: "維修", group1: "客戶反應內容", group2: "功能異常", item: "熱水鎖定"),
  MaintenanceFormResponse(code: "CAG4", types: "維修", group1: "客戶反應內容", group2: "功能異常", item: "燈號異常"),
  MaintenanceFormResponse(code: "CAH1", types: "維修", group1: "客戶反應內容", group2: "水質", item: "異味"),
  MaintenanceFormResponse(code: "CAH2", types: "維修", group1: "客戶反應內容", group2: "水質", item: "異色"),
  MaintenanceFormResponse(code: "CAH3", types: "維修", group1: "客戶反應內容", group2: "水質", item: "異物"),
  MaintenanceFormResponse(code: "CBA01", types: "維修", group1: "異常原因", group2: "故障代碼", item: "HA"),
  MaintenanceFormResponse(code: "CBA02", types: "維修", group1: "異常原因", group2: "故障代碼", item: "HI"),
  MaintenanceFormResponse(code: "CBA03", types: "維修", group1: "舊異常原因", group2: "舊故障代碼", item: "HE"),
  MaintenanceFormResponse(code: "CBA04", types: "維修", group1: "異常原因", group2: "故障代碼", item: "LA"),
  MaintenanceFormResponse(code: "CBA05", types: "維修", group1: "異常原因", group2: "故障代碼", item: "CA"),
  MaintenanceFormResponse(code: "CBA06", types: "維修", group1: "異常原因", group2: "故障代碼", item: "CB"),
  MaintenanceFormResponse(code: "CBA07", types: "維修", group1: "異常原因", group2: "故障代碼", item: "EP"),
  MaintenanceFormResponse(code: "CBA08", types: "維修", group1: "舊異常原因", group2: "舊故障代碼", item: "EA"),
  MaintenanceFormResponse(code: "CBA09", types: "維修", group1: "異常原因", group2: "故障代碼", item: "A1"),
  MaintenanceFormResponse(code: "CBA10", types: "維修", group1: "異常原因", group2: "故障代碼", item: "AO"),
  MaintenanceFormResponse(code: "CBA11", types: "維修", group1: "異常原因", group2: "故障代碼", item: "IC"),
  MaintenanceFormResponse(code: "CBA12", types: "維修", group1: "舊異常原因", group2: "舊故障代碼", item: "其它"),
  MaintenanceFormResponse(code: "CBA13", types: "維修", group1: "異常原因", group2: "故障代碼", item: "FL"),
  MaintenanceFormResponse(code: "CBA14", types: "維修", group1: "異常原因", group2: "故障代碼", item: "LS"),
  MaintenanceFormResponse(code: "CBA15", types: "維修", group1: "異常原因", group2: "故障代碼", item: "UA"),
  MaintenanceFormResponse(code: "CBA16", types: "維修", group1: "異常原因", group2: "故障代碼", item: "E1"),
  MaintenanceFormResponse(code: "CBA99", types: "維修", group1: "異常原因", group2: "其它", item: ""),
  MaintenanceFormResponse(code: "CCA1", types: "維修", group1: "維修內容", group2: "", item: "產品調試"),
  MaintenanceFormResponse(code: "CCA2", types: "維修", group1: "維修內容", group2: "", item: "故障維修"),
  MaintenanceFormResponse(code: "CCA3", types: "維修", group1: "維修內容", group2: "", item: "更換零件"),
  MaintenanceFormResponse(code: "CCA4", types: "維修", group1: "維修內容", group2: "", item: "返廠維修"),
  MaintenanceFormResponse(code: "CCA5", types: "維修", group1: "維修內容", group2: "", item: "非產品原因"),
  MaintenanceFormResponse(code: "CCA99", types: "維修", group1: "維修內容", group2: "其它", item: ""),
  MaintenanceFormResponse(code: "CDA1", types: "維修", group1: "更換零件", group2: "控制類", item: "微電腦板"),
  MaintenanceFormResponse(code: "CDA2", types: "維修", group1: "更換零件", group2: "控制類", item: "電源板"),
  MaintenanceFormResponse(code: "CDA3", types: "維修", group1: "更換零件", group2: "控制類", item: "按鍵板"),
  MaintenanceFormResponse(code: "CDA4", types: "維修", group1: "更換零件", group2: "控制類", item: "變壓器"),
  MaintenanceFormResponse(code: "CDA5", types: "維修", group1: "更換零件", group2: "控制類", item: "高水位棒"),
  MaintenanceFormResponse(code: "CDA6", types: "維修", group1: "更換零件", group2: "控制類", item: "低水位棒"),
  MaintenanceFormResponse(code: "CDA7", types: "維修", group1: "更換零件", group2: "控制類", item: "熱感溫棒"),
  MaintenanceFormResponse(code: "CDA8", types: "維修", group1: "更換零件", group2: "控制類", item: "冷感溫棒"),
  MaintenanceFormResponse(code: "CDB1", types: "維修", group1: "更換零件", group2: "加熱類", item: "熱捅"),
  MaintenanceFormResponse(code: "CDB2", types: "維修", group1: "更換零件", group2: "加熱類", item: "溫捅"),
  MaintenanceFormResponse(code: "CDB3", types: "維修", group1: "更換零件", group2: "加熱類", item: "電熱管"),
  MaintenanceFormResponse(code: "CDB4", types: "維修", group1: "更換零件", group2: "加熱類", item: "大熱控"),
  MaintenanceFormResponse(code: "CDB5", types: "維修", group1: "更換零件", group2: "加熱類", item: "小熱控"),
  MaintenanceFormResponse(code: "CDC1", types: "維修", group1: "更換零件", group2: "製冷類", item: "冰捅"),
  MaintenanceFormResponse(code: "CDC2", types: "維修", group1: "更換零件", group2: "製冷類", item: "冰控"),
  MaintenanceFormResponse(code: "CDC3", types: "維修", group1: "更換零件", group2: "製冷類", item: "壓縮機"),
  MaintenanceFormResponse(code: "CDC4", types: "維修", group1: "更換零件", group2: "製冷類", item: "繼電器"),
  MaintenanceFormResponse(code: "CDC5", types: "維修", group1: "更換零件", group2: "製冷類", item: "保護器"),
  MaintenanceFormResponse(code: "CDC6", types: "維修", group1: "更換零件", group2: "製冷類", item: "散熱風扇"),
  MaintenanceFormResponse(code: "CDC7", types: "維修", group1: "更換零件", group2: "製冷類", item: "冷凝器"),
  MaintenanceFormResponse(code: "CDC8", types: "維修", group1: "更換零件", group2: "製冷類", item: "乾燥劑"),
  MaintenanceFormResponse(code: "CDD1", types: "維修", group1: "更換零件", group2: "管路類", item: "出水電磁閥"),
  MaintenanceFormResponse(code: "CDD2", types: "維修", group1: "更換零件", group2: "管路類", item: "逆止閥"),
  MaintenanceFormResponse(code: "CDD3", types: "維修", group1: "更換零件", group2: "管路類", item: "抽水馬達"),
  MaintenanceFormResponse(code: "CDD4", types: "維修", group1: "更換零件", group2: "管路類", item: "矽膠管"),
  MaintenanceFormResponse(code: "CDE01", types: "維修", group1: "更換零件", group2: "RO機類", item: "透明濾殼"),
  MaintenanceFormResponse(code: "CDE02", types: "維修", group1: "更換零件", group2: "RO機類", item: "白色濾殼"),
  MaintenanceFormResponse(code: "CDE03", types: "維修", group1: "更換零件", group2: "RO機類", item: "電磁閥"),
  MaintenanceFormResponse(code: "CDE04", types: "維修", group1: "更換零件", group2: "RO機類", item: "馬達"),
  MaintenanceFormResponse(code: "CDE05", types: "維修", group1: "更換零件", group2: "RO機類", item: "高壓開關"),
  MaintenanceFormResponse(code: "CDE06", types: "維修", group1: "更換零件", group2: "RO機類", item: "低壓開關"),
  MaintenanceFormResponse(code: "CDE07", types: "維修", group1: "更換零件", group2: "RO機類", item: "廢水比"),
  MaintenanceFormResponse(code: "CDE08", types: "維修", group1: "更換零件", group2: "RO機類", item: "壓力捅"),
  MaintenanceFormResponse(code: "CDE09", types: "維修", group1: "更換零件", group2: "RO機類", item: "沖洗閥"),
  MaintenanceFormResponse(code: "CDE10", types: "維修", group1: "更換零件", group2: "RO機類", item: "RO膜殼"),
  MaintenanceFormResponse(code: "CDE11", types: "維修", group1: "更換零件", group2: "RO機類", item: "接頭"),
  MaintenanceFormResponse(code: "CDF1", types: "維修", group1: "更換零件", group2: "其它", item: ""),
];
