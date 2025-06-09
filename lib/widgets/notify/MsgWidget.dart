import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:haohsing_flutter/data/Params.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/model/response/msg/getMsgs/GetMsgResponse.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/screen/userScreen/notify/NotifyProvider.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/utils/ToastHelper.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

class MsgListWidget extends HookConsumerWidget {
  final List<GetMsgResponse> msgList;

  const MsgListWidget({
    super.key,
    required this.msgList,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);
    final notifyNotifier = ref.read(notifyProvider.notifier);
    final notifyState = ref.watch(notifyProvider);
    final filterTimeIndex = useState(0);
    final groupedMessages = useState<Map<String, List<GetMsgResponse>>>({});
    final filteredMsgList = useState<List<GetMsgResponse>>([]);

    DateTime currentTime = DateTime.now();
    DateTime filterDate;

    switch (filterTimeIndex.value) {
      case 0:
        filterDate = currentTime.subtract(Duration(days: 30));
        break;
      case 1:
        filterDate = currentTime.subtract(Duration(days: 60));
        break;
      case 2:
        filterDate = currentTime.subtract(Duration(days: 90));
        break;
      default:
        filterDate = DateTime(1970);
    }

    useEffect(() {
      filteredMsgList.value = notifyState.msgList.where((msg) {
        DateTime msgDate = DateTime.parse(msg.addedTime);
        return msgDate.isAfter(filterDate);
      }).toList();

      // 按日分组
      groupedMessages.value = groupBy<GetMsgResponse, String>(
        filteredMsgList.value,
        (msg) => DateFormat('yyyy年MM月dd日').format(DateTime.parse(msg.addedTime)),
      );
      return null;
    }, [notifyState.msgList, filterTimeIndex.value]);

    return Container(
        constraints: BoxConstraints(
          minHeight: 96,
        ),width: double.infinity,child: Stack(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var entry in groupedMessages.value.entries.toList().asMap().entries) ...[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.sp),
              child: customText(entry.value.key, fontWeight: FontWeight.w500, fontSize: 16.sp),
            ),
            for (var msg in entry.value.value)
              GestureDetector(
                  onTap: () {
                    if (msg.isRead == 0) {
                      notifyNotifier.readMsg(msg.msgId);
                    }
                    if (userState?.userResponse?.rolesName == "一般使用者") {
                      if (msg.deviceId != null) {
                        AutoRouter.of(context).push(DeviceInfoRoute(
                          deviceId: msg.deviceId!,
                        ));
                      } else {
                        showToast(context: context, text: "查無裝置");
                      }
                    } else {
                      if (msg.mId != null) {
                        AutoRouter.of(context).push(TaskInformationRoute(
                          mId: msg.mId!,
                        ));
                      }
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(8.sp, 16.sp, 16.sp, 16.sp),
                    margin: EdgeInsets.only(bottom: 8.sp),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(16.sp),
                    ),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 12.sp),
                              alignment: Alignment.center,
                              width: 28.sp,
                              height: 28.sp,
                              padding: EdgeInsets.all(6.sp),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (msg.type == 1) ? AppColors.errorBgRed : AppColors.bgColor,
                              ),
                              child: assetImage(
                                (msg.type == 1)
                                    ? 'ic_fault.png'
                                    : (msg.type == 2)
                                        ? 'ic_tool.png'
                                        : (msg.type == 4)
                                            ? 'ic_flash.png'
                                            : 'ic_invite.png',
                                width: 12.sp,
                                height: 12.sp,
                                color: (msg.type == 1) ? AppColors.errorRed : AppColors.black,
                              ),
                            ),
                            if (msg.isRead == 0) ...[
                              Positioned(
                                right: 12.sp,
                                top: 0.sp,
                                child: CircleAvatar(
                                  radius: 4.sp,
                                  backgroundColor: AppColors.errorRed,
                                ),
                              ),
                            ]
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customText(
                                msg.subject,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: AppColors.black,
                              ),
                              customText(
                                "${DateFormat('HH:mm').format(DateTime.parse(msg.addedTime))} | ${msg.body}",
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: AppColors.grey,
                              ),
                            ],
                          ),
                        ),
                        assetImage('ic_arrow_right.png', width: 24.sp)
                      ],
                    ),
                  )),
          ],
        ],
      ),
      Positioned(
          right: 0,
          child: IntrinsicWidth(
            child: GestureDetector(
              onTap: () {
                showBottomListDialog(
                  context,
                  title: AppTexts.time,
                  list: notifyFilterTime,
                  defaultText: notifyFilterTime[filterTimeIndex.value],
                  onFinishTap: (index) {
                    filterTimeIndex.value = index;
                    AutoRouter.of(context).popForced();
                  },
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 6.sp, horizontal: 10.sp),
                decoration: BoxDecoration(
                  color: AppColors.black,
                  borderRadius: BorderRadius.circular(96.sp),
                ),
                child: Row(
                  children: [
                    customText(
                      notifyFilterTime[filterTimeIndex.value],
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: AppColors.white,
                    ),
                    SizedBox(
                      width: 4.sp,
                    ),
                    assetImage('ic_triangle.png', width: 8.sp, height: 8.sp, color: AppColors.white)
                  ],
                ),
              ),
            ),
          ))
    ]));
  }
}
