import 'dart:ui';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/model/response/maintenance/getTaskInformation/GetTaskInformationResponse.dart';
import 'package:haohsing_flutter/model/task/TaskStatus.dart';
import 'package:haohsing_flutter/net/ApiEndPoint.dart';
import 'package:haohsing_flutter/resources/AppColors.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/screen/engineerScreen/engineerHome/taskInformation/TaskInformationProvider.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/item/ItemImageWidget.dart';
import 'package:haohsing_flutter/widgets/item/ItemSubTitleWidget.dart';
import 'package:haohsing_flutter/widgets/item/ItemTextWidget.dart';
import 'package:haohsing_flutter/widgets/item/ItemVerticalEditWidget.dart';
import 'package:haohsing_flutter/widgets/item/ItemMediaWidget.dart';
import 'package:haohsing_flutter/widgets/taskInformation/ArrivalTimeWidget.dart';
import 'package:haohsing_flutter/widgets/taskInformation/EngineerImagesWidget.dart';
import 'package:haohsing_flutter/widgets/taskInformation/TaskInfoCustomerInfoWidget.dart';
import 'package:haohsing_flutter/widgets/taskInformation/TaskInfoFaultConditionWidget.dart';
import 'package:haohsing_flutter/widgets/taskInformation/EngineerRecordWidget.dart';
import 'package:haohsing_flutter/widgets/taskInformation/TaskInfoVendorInfoWidget.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class TaskInformationPage extends HookConsumerWidget {
  final int mId;

  const TaskInformationPage({
    super.key,
    required this.mId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskInformationState = ref.watch(taskInformationProvider);
    final taskInformationNotifier = ref.read(taskInformationProvider.notifier);

    final customerMedia = useState<List<String>>([]);
    final groupedValues = useState<Map<String, Map<String?, Map<String?, List<Value>>>>>({});
    final orderInfo = useState<TaskStatusInfo>(TaskStatusInfo(
      taskNumberStatus: '',
      taskNumberColor: AppColors.primaryYellow,
      taskStatus: TaskStatus.draft,
      isShowVendorInfo: false,
      titleText: '',
      isShowFillButton: false,
    ));

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        taskInformationNotifier.updateMId(mId);
        taskInformationNotifier.getTaskInformation(mId);
      });
      return () {
        Future(() {
          taskInformationNotifier.resetTaskInformation();
        });
      };
    }, []);

    useEffect(() {
      customerMedia.value = [];
      groupedValues.value = {};
      if (taskInformationState.taskInformation != null) {
        orderInfo.value = TaskStatusInfo.fromStatus(
          status: taskInformationState.taskInformation!.status,
          continuance: taskInformationState.taskInformation!.continuance,
        );
        customerMedia.value = taskInformationState.taskInformation!.userImages
            .map((userImage) => "${ApiEndPoint.serverUrl}/${userImage.imageUrl}")
            .toList();
      }

      // 根據 types 和 group2 將 values 分組
      for (var value in taskInformationState.taskInformation?.values ?? []) {
        if (value.group1 != "客戶反應內容") {
          groupedValues.value.putIfAbsent(value.types, () => {});
          if (value.group1?.isNotEmpty == true || value.group2?.isNotEmpty == true) {
            // 如果group1存在或group2存在
            groupedValues.value[value.types]?.putIfAbsent(value.group1, () => {});
            groupedValues.value[value.types]?[value.group1]?.putIfAbsent(value.group2, () => []);
            groupedValues.value[value.types]?[value.group1]?[value.group2]?.add(value);
          } else {
            // 如果group1和group2都不存在，直接放入group1為null的列表中
            groupedValues.value[value.types]?.putIfAbsent(null, () => {});
            groupedValues.value[value.types]?[null]?.putIfAbsent(null, () => []);
            groupedValues.value[value.types]?[null]?[null]?.add(value);
          }
        }
      }
      return null;
    }, [taskInformationState.taskInformation]);

    return BasePage(
      child: SafeArea(
        bottom: false,
        child: Container(
          height: double.infinity,
          child: Column(
            children: [
              MainTitleBar(
                title: orderInfo.value.titleText,
                buttonText: AppTexts.taskInformation,
                isBack: true,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(18.sp, 0.sp, 18.sp, 12.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ItemSubTitleWidget(title: AppTexts.basic),
                        ItemTextWidget(
                          fieldName: AppTexts.orderNumber,
                          value:
                              '${taskInformationState.taskInformation?.mId ?? ''}${orderInfo.value.taskNumberStatus}',
                          valueColor: orderInfo.value.taskNumberColor,
                        ),
                        ItemTextWidget(
                          fieldName: AppTexts.need,
                          value: taskInformationState.taskInformation?.typeName ?? "",
                        ),
                        if (orderInfo.value.isShowVendorInfo) ...[
                          TaskInfoVendorInfoWidget(
                            engineerName: taskInformationState.taskInformation?.engineerName,
                            vendorName: taskInformationState.taskInformation?.vendorName,
                            vendorTel: taskInformationState.taskInformation?.vendorTel,
                          )
                        ],
                        TaskInfoCustomerInfoWidget(
                          customerName: taskInformationState.taskInformation?.name ??
                              taskInformationState.taskInformation?.customerName ??
                              "",
                          phone: taskInformationState.taskInformation?.customerTel,
                          address: taskInformationState.taskInformation?.customerAddress,
                        ),
                        ArrivalTimeWidget(
                          appointedDatetime: taskInformationState.taskInformation?.appointedDatetime,
                          workEndDatetime: taskInformationState.taskInformation?.workEndDatetime,
                          statusName: taskInformationState.taskInformation?.statusName,
                        ),
                        if (taskInformationState.taskInformation?.addedType != null &&
                            taskInformationState.taskInformation!.addedType == "app") ...[
                          ItemSubTitleWidget(title: AppTexts.customerResponseContent),
                          TaskInfoFaultConditionWidget(
                            title: AppTexts.faultCondition,
                            values: taskInformationState.taskInformation?.values
                                    .where((value) => value.group1 == '客戶反應內容')
                                    .toList() ??
                                [],
                          ),
                          ItemMediaWidget(
                            fieldName: AppTexts.videosPhotos,
                            hintText: '${customerMedia.value.length}個項目',
                            mediaUrlList: customerMedia.value,
                            fontColor: AppColors.grey,
                            fileType: FileType.media,
                            padding: 48,
                            isClickable: false,
                            isDelete: false,
                          ),
                          ItemVerticalEditWidget(
                            fieldName: AppTexts.instructionManual,
                            value: taskInformationState.taskInformation?.description ?? AppTexts.notInstructionManual,
                            valueColor: AppColors.disableGrey,
                          ),
                        ],
                        ItemSubTitleWidget(title: AppTexts.vendorNotes),
                        ItemVerticalEditWidget(
                          fieldName: AppTexts.instructionManual,
                          value:
                              taskInformationState.taskInformation?.vendorDescription ?? AppTexts.notInstructionManual,
                          valueColor: AppColors.disableGrey,
                        ),
                        if (taskInformationState.taskInformation?.status != 0 &&
                            taskInformationState.taskInformation?.status != 1) ...[
                          EngineerRecordWidget(
                              groupedValues: groupedValues.value,
                              taskInformation: taskInformationState.taskInformation),
                          EngineerImagesWidget(
                            engineerImages: taskInformationState.taskInformation?.engineerImages,
                          ),
                          ItemSubTitleWidget(title: AppTexts.confirmItem),
                          if (taskInformationState.taskInformation?.attachmentUrl != null) ...[
                            ItemTextWidget(
                              fieldName: AppTexts.quotationForm,
                              value: 'PDF',
                              onTap: () async {
                                showPdfDialog(
                                  context,
                                  pdfUrl: taskInformationState.taskInformation?.attachmentUrl ?? '',
                                );
                              },
                              valueColor: AppColors.grey,
                            ),
                          ],
                          ItemTextWidget(
                            fieldName: AppTexts.cost,
                            value: taskInformationState.taskInformation?.fee != null
                                ? '${taskInformationState.taskInformation!.fee}'
                                : AppTexts.na,
                            valueColor: AppColors.grey,
                          ),
                          if (taskInformationState.taskInformation?.signImage != null) ...[
                            ItemImageWidget(
                              fieldName: AppTexts.customerSignature,
                              imageUrl: '${ApiEndPoint.serverUrl}${taskInformationState.taskInformation?.signImage}',
                            ),
                          ],
                          ItemTextWidget(
                            fieldName: AppTexts.technicianId,
                            value: '${taskInformationState.taskInformation?.engineer}',
                            valueColor: AppColors.grey,
                          ),
                          if (taskInformationState.taskInformation?.errorReason != null &&
                              taskInformationState.taskInformation!.errorReason!.isNotEmpty) ...[
                            ItemVerticalEditWidget(
                              fieldName: AppTexts.reportAbnormalReason,
                              fieldNameColor: AppColors.errorRed,
                              value: taskInformationState.taskInformation?.errorReason ?? '',
                              valueColor: AppColors.disableGrey,
                            )
                          ],
                        ],
                        SizedBox(
                          height: 16.sp,
                        ),
                        if (orderInfo.value.isShowFillButton) ...[
                          roundedButton(
                            radius: 12.sp,
                            text: '填寫${taskInformationState.taskInformation?.typeName ?? ""}單',
                            onTap: () {
                              AutoRouter.of(context).push(MaintenanceOrderRoute(
                                mId: mId,
                                taskInformation: taskInformationState.taskInformation!,
                              ));
                            },
                            bgColor: AppColors.primaryYellow,
                            fontColor: AppColors.white,
                          )
                        ]
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
