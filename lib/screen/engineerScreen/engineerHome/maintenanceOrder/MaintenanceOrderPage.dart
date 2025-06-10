import 'dart:io';
import 'dart:ui';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/model/response/maintenance/getTaskInformation/GetTaskInformationResponse.dart';
import 'package:haohsing_flutter/model/response/maintenance/maintenanceForm/MaintenanceFormResponse.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/screen/engineerScreen/engineerHome/maintenanceOrder/MaintenanceOrderProvider.dart';
import 'package:haohsing_flutter/utils/ToastHelper.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/engineerHome/FilterElementListWidget.dart';
import 'package:haohsing_flutter/widgets/item/ItemTextWidget.dart';
import 'package:haohsing_flutter/widgets/item/ItemMediaWidget.dart';
import 'package:haohsing_flutter/widgets/maintenanceOrder/MaintenanceFormWidget.dart';
import 'package:haohsing_flutter/widgets/maintenanceOrder/RepairListWidget.dart';
import 'package:haohsing_flutter/widgets/maintenanceOrder/SignatureWidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:signature/signature.dart';
import 'package:auto_route/auto_route.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

import '../../../../provider/UserProvider.dart';
import 'FakerMaintenanceOrderProvider.dart';

@RoutePage()
class MaintenanceOrderPage extends HookConsumerWidget {
  final int mId;
  final GetTaskInformationResponse taskInformation;

  const MaintenanceOrderPage({
    super.key,
    required this.mId,
    required this.taskInformation,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final token = ref.read(userProvider).loginResponse?.token ?? "";
    final provider = (token == '@@@user@@@' || token == '@@@engineer@@@')
        ? fakerMaintenanceOrderProvider
        : maintenanceOrderProvider;

    final maintenanceOrderNotifier = ref.read(provider.notifier);
    final maintenanceOrderState = ref.watch(provider);

    final tds = useState<String>('');
    final waterTesting = useState<String>('');
    final fee = useState<String>(taskInformation.fee?.toString() ?? '');
    final selectReplaceFilter = useState<List<MaintenanceFormResponse>>([]);
    final selectBasicMaintenanceFilter = useState<List<MaintenanceFormResponse>>([]);
    final selectAbnormalReasonFilter = useState<List<MaintenanceFormResponse>>([]);
    final selectRepairContentFilter = useState<List<MaintenanceFormResponse>>([]);
    final selectReplacePartFilter = useState<List<MaintenanceFormResponse>>([]);
    final filterController = useTextEditingController();
    final basicMaintenanceController = useTextEditingController();
    final abnormalReasonController = useTextEditingController();
    final repairContentController = useTextEditingController();
    final replacePartController = useTextEditingController();
    final oldFilterCorePhoto = useState<List<File>>([]);
    final newFilterCorePhoto = useState<List<File>>([]);
    final equipmentPhoto = useState<List<File>>([]);
    final replacedPartPhoto = useState<List<File>>([]);
    final currentRepairIndex = useState(0);
    final sn = useState<String?>(taskInformation.sn);

    final signatureController = useState(
      SignatureController(
        penStrokeWidth: 5,
        penColor: Colors.black,
        exportBackgroundColor: Colors.white,
      ),
    );

    void sendWorkForm({int continuance = 0, required int status, String errorReason = ''}) async {
      List<MaintenanceFormResponse> mergedList = [];
      if (taskInformation.type == 2) {
        mergedList = selectBasicMaintenanceFilter.value + selectReplaceFilter.value;
      } else if (taskInformation.type == 3) {
        mergedList = selectAbnormalReasonFilter.value + selectRepairContentFilter.value + selectReplacePartFilter.value;
      }

      await maintenanceOrderNotifier.setFilterLife(
        deviceId: taskInformation.deviceId ?? 0,
        filterLife: maintenanceOrderState.filterLife,
        selectReplaceFilter: selectReplaceFilter.value,
      );
      await maintenanceOrderNotifier
          .maintenanceFormDone(
        errorReason: errorReason,
        continuance: continuance,
        status: status,
        fee: fee.value,
        mId: mId,
        tds: tds.value,
        waterTesting: waterTesting.value,
        selectReplaceFilter: selectReplaceFilter.value,
        selectValues: mergedList,
        filterController: filterController.text,
        basicMaintenanceController: basicMaintenanceController.text,
        abnormalReasonOther: abnormalReasonController.text,
        repairContentOther: repairContentController.text,
        replacePartOther: replacePartController.text,
        oldFilterCorePhoto: oldFilterCorePhoto.value,
        newFilterCorePhoto: newFilterCorePhoto.value,
        equipmentPhoto: equipmentPhoto.value,
        replacedPartPhoto: replacedPartPhoto.value,
        signatureController: signatureController.value,
        sn: sn.value,
      ).then((taskDoneResponse) {
        if (taskDoneResponse != null) {
          AutoRouter.of(context).popUntil((route) => route.settings.name == TaskInformationRoute.name);
        }
      });
    }

    bool validateFormFields() {
      List<String> missingFields = [];
      if (taskInformation.type == 1 || taskInformation.type == 5) {
        if (sn.value == null || sn.value!.isEmpty) {
          missingFields.add('${AppTexts.sn}\n');
        }
      }else if (taskInformation.type == 2) {
        if (tds.value.isEmpty) {
          missingFields.add('${AppTexts.tds}\n');
        }
        if (waterTesting.value.isEmpty) {
          missingFields.add('${AppTexts.waterTesting}\n');
        }
        if (oldFilterCorePhoto.value.isEmpty) {
          missingFields.add('${AppTexts.oldFilterCorePhoto}\n');
        }
        if (newFilterCorePhoto.value.isEmpty) {
          missingFields.add('${AppTexts.newFilterCorePhoto}\n');
        }
      } else if (taskInformation.type == 3) {
        if (equipmentPhoto.value.isEmpty) {
          missingFields.add('${AppTexts.equipmentPhoto}\n');
        }
        if (replacedPartPhoto.value.isEmpty) {
          missingFields.add('${AppTexts.replacedPartPhoto}\n');
        }
      }
      if (fee.value.isEmpty) {
        missingFields.add('${AppTexts.cost}\n');
      }
      if (signatureController.value.isEmpty) {
        missingFields.add('${AppTexts.customerSignature}\n');
      }

      if (missingFields.isNotEmpty) {
        showErrorDialog(context, title: AppTexts.fieldNotEntered, content: '以下欄位未填寫:\n ${missingFields.join('')}');
        return false;
      } else {
        return true;
      }
    }

    useEffect(() {

      SchedulerBinding.instance.addPostFrameCallback((_) async {
        await maintenanceOrderNotifier.updateMId(mId: mId);
        await maintenanceOrderNotifier.getMaintenanceForm(type: taskInformation.type);
      });
      return null;
    }, []);

    return BasePage(
      child: SafeArea(
        bottom: false,
        child: Container(
          height: double.infinity,
          child: Column(
            children: [
              MainTitleBar(
                title: '${taskInformation.typeName}單',
                isBack: true,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(18.sp, 24.sp, 18.sp, 12.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (taskInformation.type == 1 || taskInformation.type == 5) ...[
                          ExpansionTile(
                            title: customText((taskInformation.type == 1)?AppTexts.install:AppTexts.returnTask,
                                fontWeight: FontWeight
                                .w500, fontSize: 18.sp),
                            iconColor: AppColors.black,
                            collapsedIconColor: AppColors.black,
                            tilePadding: EdgeInsets.zero,
                            childrenPadding: EdgeInsets.zero,
                            shape: Border(),
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                ItemTextWidget(
                                  fieldName: AppTexts.sn,
                                  value: (sn.value != null && sn.value!.isNotEmpty)?sn.value!:AppTexts.plsEnter,
                                  onTap: () async {
                                    showBottomEditDialog(
                                      context,
                                      title: AppTexts.sn,
                                      hintText: AppTexts.plsEnterSn,
                                      defaultText: sn.value,
                                      buttonText: AppTexts.save,
                                      inputType: InputType.ALPHANUMERIC,
                                      onTap: (text) {
                                        sn.value = text;
                                      },
                                    );
                                  },
                                  valueColor: AppColors.grey,
                                ),
                              ])
                            ],
                          )
                        ],
                        if (taskInformation.type == 2) ...[
                          ExpansionTile(
                            title: customText(AppTexts.maintenance, fontWeight: FontWeight.w500, fontSize: 18.sp),
                            iconColor: AppColors.black,
                            collapsedIconColor: AppColors.black,
                            tilePadding: EdgeInsets.zero,
                            childrenPadding: EdgeInsets.zero,
                            shape: Border(),
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                ItemTextWidget(
                                  fieldName: AppTexts.tds,
                                  value: '${(tds.value.isNotEmpty) ? tds.value : "--"} ${AppTexts.tds}',
                                  onTap: () async {
                                    showBottomEditDialog(
                                      context,
                                      title: AppTexts.tds,
                                      hintText: AppTexts.plsEnterTds,
                                      defaultText: tds.value,
                                      buttonText: AppTexts.save,
                                      onTap: (text) {
                                        tds.value = text;
                                      },
                                      inputType: InputType.NUMBER,
                                    );
                                  },
                                  valueColor: AppColors.grey,
                                ),
                                ItemTextWidget(
                                  fieldName: AppTexts.waterTesting,
                                  value:
                                      '${(waterTesting.value.isNotEmpty) ? waterTesting.value : "--"} ${AppTexts.tds}',
                                  onTap: () async {
                                    showBottomEditDialog(
                                      context,
                                      title: AppTexts.waterTesting,
                                      hintText: AppTexts.plsEnterTds,
                                      defaultText: waterTesting.value,
                                      buttonText: AppTexts.save,
                                      onTap: (text) {
                                        waterTesting.value = text;
                                      },
                                      inputType: InputType.NUMBER,
                                    );
                                  },
                                  valueColor: AppColors.grey,
                                ),
                                MaintenanceFormsWidget(
                                  fieldName: AppTexts.replaceFilter,
                                  maintenanceForms: maintenanceOrderState.replaceFilterList,
                                  selectItem: selectReplaceFilter,
                                  textController: filterController,
                                ),
                                FilterElementListWidget(
                                  filterList: maintenanceOrderState.replaceFilterList,
                                  selectItem: selectReplaceFilter,
                                  filterLife: maintenanceOrderState.filterLife,
                                ),
                                MaintenanceFormsWidget(
                                  fieldName: AppTexts.basicMaintenance,
                                  maintenanceForms: maintenanceOrderState.basicMaintenanceList,
                                  selectItem: selectBasicMaintenanceFilter,
                                  textController: basicMaintenanceController,
                                ),
                                customText(AppTexts.uploadPhoto, fontWeight: FontWeight.w500, fontSize: 18.sp),
                                customText(AppTexts.uploadPhotoInstruction,
                                    fontWeight: FontWeight.w500, fontSize: 16.sp, color: AppColors.grey),
                                ItemMediaWidget(
                                    fieldName: AppTexts.oldFilterCorePhoto,
                                    selectedMedias: oldFilterCorePhoto,
                                    sizeLimit: 10,
                                    fileLimit: 1,
                                    fileType: FileType.image),
                                ItemMediaWidget(
                                    fieldName: AppTexts.newFilterCorePhoto,
                                    selectedMedias: newFilterCorePhoto,
                                    sizeLimit: 10,
                                    fileLimit: 1,
                                    fileType: FileType.image),
                              ])
                            ],
                          )
                        ],
                        if (taskInformation.type == 3) ...[
                          ExpansionTile(
                            title: customText(AppTexts.repair, fontWeight: FontWeight.w500, fontSize: 18.sp),
                            iconColor: AppColors.black,
                            collapsedIconColor: AppColors.black,
                            tilePadding: EdgeInsets.zero,
                            childrenPadding: EdgeInsets.zero,
                            shape: Border(),
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RepairListWidget(
                                    repairList: const [
                                      AppTexts.abnormalReason,
                                      AppTexts.repairContent,
                                      AppTexts.replacePart
                                    ],
                                    currentRepairIndex: currentRepairIndex,
                                  ),
                                  if (currentRepairIndex.value == 0) ...[
                                    MaintenanceFormsWidget(
                                      fieldName: AppTexts.abnormalReasonCode,
                                      maintenanceForms: maintenanceOrderState.abnormalReasonList,
                                      selectItem: selectAbnormalReasonFilter,
                                      textController: abnormalReasonController,
                                    )
                                  ] else if (currentRepairIndex.value == 1) ...[
                                    MaintenanceFormsWidget(
                                      fieldName: AppTexts.repairContent,
                                      maintenanceForms: maintenanceOrderState.repairContentList,
                                      selectItem: selectRepairContentFilter,
                                      textController: repairContentController,
                                    )
                                  ] else if (currentRepairIndex.value == 2) ...[
                                    MaintenanceFormsWidget(
                                      fieldName: AppTexts.replacePart,
                                      maintenanceForms: maintenanceOrderState.replacePartList,
                                      selectItem: selectReplacePartFilter,
                                      textController: replacePartController,
                                    )
                                  ],
                                  customText(AppTexts.uploadPhoto, fontWeight: FontWeight.w500, fontSize: 18.sp),
                                  customText(AppTexts.uploadPhotoInstruction,
                                      fontWeight: FontWeight.w500, fontSize: 16.sp, color: AppColors.grey),
                                  ItemMediaWidget(
                                      fieldName: AppTexts.equipmentPhoto,
                                      selectedMedias: equipmentPhoto,
                                      sizeLimit: 10,
                                      fileLimit: 1,
                                      fileType: FileType.image),
                                  ItemMediaWidget(
                                    fieldName: AppTexts.replacedPartPhoto,
                                    selectedMedias: replacedPartPhoto,
                                    sizeLimit: 10,
                                    fileLimit: 1,
                                    fileType: FileType.image,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                        if (taskInformation.type == 2 || taskInformation.type == 3) ...[
                          SizedBox(
                            height: 8.sp,
                          ),
                          Divider(
                            height: 1.sp,
                            color: AppColors.lightGrey,
                          ),
                        ],
                        SizedBox(
                          height: 16.sp,
                        ),
                        customText(AppTexts.confirmItem, fontWeight: FontWeight.w500, fontSize: 18.sp),
                        ItemTextWidget(
                          fieldName: AppTexts.quotationForm,
                          value: (taskInformation.attachmentUrl != null) ? 'PDF' : AppTexts.needQuotation,
                          onTap: (taskInformation.attachmentUrl != null) ?() async {
                            showPdfDialog(
                              context,
                              pdfUrl: taskInformation.attachmentUrl ?? "",
                            );
                          }:null,
                          valueColor: (taskInformation.attachmentUrl != null) ? AppColors.grey: AppColors.errorRed,
                        ),
                        ItemTextWidget(
                          fieldName: AppTexts.cost,
                          value: fee.value,
                          onTap: (signatureController.value.isNotEmpty)
                              ? null
                              : () async {
                                  showBottomEditDialog(
                                    context,
                                    title: AppTexts.cost,
                                    hintText: AppTexts.plsEnterFee,
                                    defaultText: fee.value,
                                    buttonText: AppTexts.save,
                                    onTap: (text) {
                                      fee.value = text;
                                    },
                                    inputType: InputType.NUMBER,
                                  );
                                },
                          valueColor: AppColors.grey,
                        ),
                        SignatureWidget(
                          fieldName: AppTexts.customerSignature,
                          value: AppTexts.customerSignature,
                          onTap: () async {
                            if(fee.value.isNotEmpty) {
                              await showDefaultDialog(
                                context,
                                title: AppTexts.confirmCost,
                                content: AppTexts.confirmCostMsg,
                                firstButton: roundedButton(
                                    radius: 12.sp,
                                    text: AppTexts.cancel,
                                    onTap: () {
                                      AutoRouter.of(context).popForced();
                                    },
                                    bgColor: AppColors.white,
                                    fontColor: AppColors.primaryYellow,
                                    borderColor: AppColors.primaryYellow),
                                secondButton: roundedButton(
                                    radius: 12.sp,
                                    text: AppTexts.confirm,
                                    onTap: () {
                                      AutoRouter.of(context).popForced();
                                      showSignatureDialog(
                                        context,
                                        fee: fee.value,
                                        controller: signatureController,
                                      );
                                    },
                                    bgColor: AppColors.primaryYellow,
                                    fontColor: AppColors.white,
                                    borderColor: AppColors.primaryYellow),
                              );
                            }else{
                              showErrorToast(context: context,text:'費用未填寫');
                            }
                          },
                          fontColor: AppColors.grey,
                          controller: signatureController,
                        ),
                        ItemTextWidget(
                          fieldName: AppTexts.technicianId,
                          value: taskInformation.engineer.toString(),
                          valueColor: AppColors.grey,
                        ),
                        SizedBox(
                          height: 24.sp,
                        ),
                        roundedButton(
                          radius: 12.sp,
                          text: AppTexts.taskFinish,
                          onTap: () async {
                            if (validateFormFields()) {
                              await showDefaultDialog(
                                context,
                                title: AppTexts.confirmReport,
                                content: AppTexts.confirmReportMsg,
                                firstButton: roundedButton(
                                    radius: 12.sp,
                                    text: AppTexts.cancel,
                                    onTap: () {
                                      AutoRouter.of(context).popForced();
                                    },
                                    bgColor: AppColors.white,
                                    fontColor: AppColors.primaryYellow,
                                    borderColor: AppColors.primaryYellow),
                                secondButton: roundedButton(
                                    radius: 12.sp,
                                    text: AppTexts.confirm,
                                    onTap: () {
                                      AutoRouter.of(context).popForced();
                                      sendWorkForm(
                                        continuance: 0,
                                        status: 2,
                                      );
                                    },
                                    bgColor: AppColors.primaryYellow,
                                    fontColor: AppColors.white,
                                    borderColor: AppColors.primaryYellow),
                              );
                            }
                          },
                          bgColor: AppColors.primaryYellow,
                          fontColor: AppColors.white,
                        ),
                        SizedBox(
                          height: 12.sp,
                        ),
                        roundedButton(
                          radius: 12.sp,
                          text: AppTexts.taskNotFinish,
                          onTap: () async {
                            if (validateFormFields()) {
                              await showDefaultDialog(
                              context,
                              title: AppTexts.reportRedispatchRequest,
                              content: AppTexts.reportRedispatchRequestMsg,
                              firstButton: roundedButton(
                                  radius: 12.sp,
                                  text: AppTexts.cancel,
                                  onTap: () {
                                    AutoRouter.of(context).popForced();
                                  },
                                  bgColor: AppColors.white,
                                  fontColor: AppColors.primaryYellow,
                                  borderColor: AppColors.primaryYellow),
                              secondButton: roundedButton(
                                  radius: 12.sp,
                                  text: AppTexts.confirm,
                                  onTap: () {
                                    AutoRouter.of(context).popForced();
                                    sendWorkForm(
                                      continuance: 1,
                                      status: 2,
                                    );
                                  },
                                  bgColor: AppColors.primaryYellow,
                                  fontColor: AppColors.white,
                                  borderColor: AppColors.primaryYellow),
                              );
                            }
                          },
                          bgColor: AppColors.black,
                          fontColor: AppColors.white,
                        ),
                        SizedBox(
                          height: 12.sp,
                        ),
                        roundedButton(
                            radius: 12.sp,
                            text: AppTexts.reportAbnormal,
                            onTap: () {
                              if (validateFormFields()) {
                                showBottomEditDialog(
                                  context,
                                  title: AppTexts.abnormalReason,
                                  hintText: AppTexts.plsEnterAbnormalReason,
                                  buttonText: AppTexts.save,
                                  onTap: (text) {
                                    sendWorkForm(
                                      errorReason: text,
                                      status: 4,
                                    );
                                  },
                                );
                              }
                            },
                            bgColor: Colors.transparent,
                            fontColor: AppColors.errorRed,
                            borderColor: AppColors.errorRed)
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
