import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/data/Params.dart';
import 'package:haohsing_flutter/extensions/PageExtensions.dart';
import 'package:haohsing_flutter/model/response/device/deviceInfo/DeviceInfoResponse.dart';
import 'package:haohsing_flutter/model/response/maintenance/maintenanceForm/MaintenanceFormResponse.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/utils/Validators.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/item/ItemSubTitleWidget.dart';
import 'package:haohsing_flutter/widgets/item/ItemTextWidget.dart';
import 'package:haohsing_flutter/widgets/item/ItemMediaWidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'RepairAndMaintenanceProvider.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

@RoutePage()
class RepairAndMaintenancePage extends HookConsumerWidget {
  final DeviceInfoResponse? deviceInfo;
  final bool isErrorCode;

  const RepairAndMaintenancePage({
    super.key,
    required this.deviceInfo,
    this.isErrorCode = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repairAndMaintenanceNotifier = ref.read(repairAndMaintenanceProvider.notifier);
    final repairAndMaintenanceState = ref.watch(repairAndMaintenanceProvider);
    final userState = ref.watch(userProvider);
    final instructionManualController = useTextEditingController(
      text: isErrorCode ? "故障編碼 #${deviceInfo?.statistics?.h2eN}" : null,  // 如果是故障編碼，設置初始值
    );

    final _clientName = useState<String>(userState.userResponse?.name ?? "");
    final _phone = useState<String>(userState.userResponse?.tel ?? "");
    final _needIndex = useState<int?>(null);
    final _selectedFaults = useState<List<MaintenanceFormResponse>>([]);
    final _expectedTimeIndex = useState<int?>(null);
    final isButtonClick = useState<bool>(false);
    final _selectedMedia = useState<List<File>>([]);

    List<String> validateFormFields() {
      List<String> missingFields = [];

      if (_clientName.value.isEmpty) {
        missingFields.add(AppTexts.clientName);
      }
      if (_phone.value.isEmpty) {
        missingFields.add(AppTexts.phone);
      }
      if (_expectedTimeIndex.value == null) {
        missingFields.add(AppTexts.expectedContactTime);
      }
      if (_needIndex.value != null && repairAndMaintenanceState.taskTypeList[_needIndex.value!].id != 5) {
        if (_selectedFaults.value.isEmpty) {
          missingFields.add(AppTexts.faultCondition);
        }
      }

      if (_selectedMedia.value.isEmpty) {
        missingFields.add(AppTexts.imageOrVideo);
      }
      return missingFields;
    }

    useEffect(() {
      isButtonClick.value = validateFormFields().isEmpty;
      return null;
    }, [
      _clientName.value,
      _phone.value,
      _expectedTimeIndex.value,
      _needIndex.value,
      _selectedFaults.value,
      _selectedMedia.value
    ]);


    useEffect(() {
      repairAndMaintenanceNotifier.getTaskType();
      repairAndMaintenanceNotifier.getVendorInfo(deviceInfo?.vendorId ?? -1);
    },[]);

    return BasePage(
      child: SafeArea(
        child: Container(
          child: Column(
            children: [
              MainTitleBar(title: AppTexts.addRepairAndMaintenance, isBack: true),
              Expanded(
                  child: SingleChildScrollView(
                      child: Container(
                          padding: EdgeInsets.all(20.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ItemSubTitleWidget(title: AppTexts.information),
                              ItemTextWidget(
                                  fieldName: AppTexts.clientName,
                                  value: (_clientName.value.isNotEmpty)?_clientName.value:AppTexts.plsEnter,
                                  valueColor: AppColors.grey,
                                  onTap: () async {
                                    showBottomEditDialog(
                                      context,
                                      title: AppTexts.clientName,
                                      hintText: AppTexts.plsEnterClientName,
                                      defaultText: _clientName.value,
                                      buttonText: AppTexts.save,
                                      onTap: (text) {
                                        _clientName.value = text;
                                      },
                                    );
                                  }),
                              ItemTextWidget(
                                  fieldName: AppTexts.phone,
                                  value: (_phone.value.isNotEmpty)?_phone.value:AppTexts.plsEnter,
                                  valueColor: AppColors.grey,
                                  onTap: () async {
                                    showBottomEditDialog(
                                      context,
                                      title: AppTexts.phone,
                                      hintText: AppTexts.plsEnterPhone,
                                      defaultText: _phone.value,
                                      buttonText: AppTexts.save,
                                      onTap: (text) {
                                        _phone.value = text;
                                      },
                                      inputType: InputType.PHONENUMBER,
                                      isValid: (text) {
                                        return (text.isValidPhoneNumber());
                                      },
                                      invalidText: AppTexts.phoneFailed,
                                    );
                                  }),
                              ItemTextWidget(
                                  fieldName: AppTexts.need,
                                  value: _needIndex.value != null ? repairAndMaintenanceState.taskTypeList[_needIndex
                                      .value!].name : AppTexts.plsChoose,
                                  valueColor: AppColors.grey,
                                  onTap: () async {

                                    showBottomListDialog(
                                      context,
                                      title: AppTexts.need,
                                      list: (repairAndMaintenanceState.taskTypeList).map((taskType) => taskType.name)
                                          .toList(),
                                      defaultText: _needIndex.value != null ? repairAndMaintenanceState
                                          .taskTypeList[_needIndex.value!].name : repairAndMaintenanceState
                                          .taskTypeList[0].name,
                                      onFinishTap: (index) {
                                        _needIndex.value = index;
                                        _selectedFaults.value = [];
                                        AutoRouter.of(context).popForced();
                                      },
                                    );
                                  }),
                              ItemTextWidget(
                                  fieldName: AppTexts.expectedContactTime,
                                  value: _expectedTimeIndex.value != null ? expectedTimeList[_expectedTimeIndex.value!] : AppTexts.plsChoose,
                                  valueColor: AppColors.grey,
                                  onTap: () async {
                                    showBottomListDialog(
                                      context,
                                      title: AppTexts.timeZone,
                                      list: expectedTimeList,
                                      defaultText: (_expectedTimeIndex.value != null)
                                          ? expectedTimeList[_expectedTimeIndex.value!]
                                          : expectedTimeList[0],
                                      onFinishTap: (index) {
                                        _expectedTimeIndex.value = index;
                                        AutoRouter.of(context).popForced();
                                      },
                                    );
                                  }),
                              if (_needIndex.value != null &&
                                  repairAndMaintenanceState.taskTypeList[_needIndex.value!].id != 5) ...[
                                ItemTextWidget(
                                  fieldName: AppTexts.addFaultCondition,
                                  value: (_selectedFaults.value.isNotEmpty)?"${_selectedFaults.value.length}"
                                      "項異常":AppTexts.plsChoose,
                                  valueColor: (_selectedFaults.value.isNotEmpty)?AppColors.primaryYellow:AppColors.grey,
                                  onTap: () async {
                                    List<MaintenanceFormResponse> list =
                                        await repairAndMaintenanceNotifier.getMaintenanceForm(type: 3);
                                    List<MaintenanceFormResponse> filteredList = list
                                        .where((response) => response.group1 == '客戶反應內容')
                                        .toList();

                                    await showBottomFaultConditionDialog(
                                      context,
                                      title: AppTexts.faultCondition,
                                      list: filteredList,
                                      onFinishTap: (selectItem) {
                                        _selectedFaults.value = selectItem;
                                        AutoRouter.of(context).popForced();
                                      },
                                      selectItem: _selectedFaults.value,
                                    );
                                  },
                                ),
                              ],
                              ItemMediaWidget(
                                  fieldName: AppTexts.uploadVideosOrPhotos,
                                  hintText: AppTexts.photographingAbnormalConditions,
                                  fontColor: (_selectedMedia.value.isNotEmpty)?AppColors.primaryYellow:AppColors.grey,
                                  selectedMedias: _selectedMedia,
                                  fileType: FileType.media,
                                  padding: 48),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 6.sp),
                                padding: EdgeInsets.all(16.sp),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(8.sp),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    customText(
                                      AppTexts.instructionManual,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.sp,
                                    ),
                                    TextFormField(
                                      cursorColor: AppColors.primaryYellow,
                                      controller: instructionManualController,
                                      style: TextStyle(
                                        color: AppColors.primaryBlack,
                                        fontSize: 16.sp,
                                        fontFamily: 'PingFang TC',
                                        fontWeight: FontWeight.w400,
                                      ),
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: AppColors.white,
                                          border: InputBorder.none,
                                          hintText: AppTexts.plsEnterInstructionManual,
                                          hintStyle: TextStyle(
                                              fontSize: 14.sp,
                                              fontFamily: 'PingFang TC',
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.grey)),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 4.sp,
                              ),
                              Container(
                                padding: EdgeInsets.all(16.sp),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(16.sp),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    customText(AppTexts.vendorInformation, fontWeight: FontWeight.w500, fontSize: 16.sp),
                                    SizedBox(
                                      height: 4.sp,
                                    ),
                                    Row(
                                      children: [
                                        customText(AppTexts.place,
                                            fontWeight: FontWeight.w500, fontSize: 16.sp, color: AppColors.grey),
                                        Spacer(),
                                        customText(deviceInfo?.vendorName ?? "豪星總公司",
                                            fontWeight: FontWeight.w500, fontSize: 16.sp, color: AppColors.grey),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4.sp,
                                    ),
                                    Row(
                                      children: [
                                        customText(AppTexts.contactNumber,
                                            fontWeight: FontWeight.w500, fontSize: 16.sp, color: AppColors.grey),
                                        Spacer(),
                                        customText(repairAndMaintenanceState.vendorInfo?.tel ?? "04-42345678",
                                            fontWeight: FontWeight.w500, fontSize: 16.sp, color: AppColors.primaryYellow),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 4.sp,
                              ),
                              ItemTextWidget(
                                  fieldName: AppTexts.sn,
                                  value: deviceInfo?.sn ?? "",
                                  valueColor: AppColors.grey,),
                              SizedBox(
                                height: 16.sp,
                              ),
                              roundedButton(
                                radius: 12.sp,
                                text: AppTexts.notifyManufacturer,
                                onTap: () async {
                                  if (isButtonClick.value) {
                                    ref.showLoading();
                                    await repairAndMaintenanceNotifier
                                        .sendTaskInformation(
                                            deviceId: deviceInfo!.deviceId,
                                            description: instructionManualController.text,
                                            maintenanceFormResponses: _selectedFaults.value,
                                            expectedDaysOfWeek: '',
                                            expectedTimeOfWeek: expectedTimeList[_expectedTimeIndex.value!],
                                            name: _clientName.value,
                                            tel: _phone.value,
                                            type: repairAndMaintenanceState.taskTypeList[_needIndex.value!].id,
                                            medias: _selectedMedia.value,
                                            sn: deviceInfo!.sn ?? "")
                                        .then((isSuccess) async {
                                          if(isSuccess){
                                            ref.hideLoading();
                                            showDefaultDialog(context,
                                                icon: 'ic_done.png',
                                                iconColor: AppColors.yellow,
                                                title: AppTexts.sentSuccessfully,
                                                content: AppTexts.sentSuccessfullyMsg,
                                                firstButton: roundedButton(
                                                  radius: 12.sp,
                                                  text: AppTexts.confirm,
                                                  onTap: () {
                                                    AutoRouter.of(context).popUntilRouteWithName('DeviceInfoRoute');
                                                  },
                                                  bgColor: AppColors.primaryYellow,
                                                  fontColor: AppColors.white,
                                                ),
                                                barrierDismissible: false);
                                          }
                                    });
                                  } else {
                                    showErrorDialog(
                                      context,
                                      title: "欄位未填寫",
                                      content: '以下欄位未填寫:\n${validateFormFields().join("\n")}',
                                    );
                                  }
                                },
                                bgColor: isButtonClick.value ? AppColors.primaryYellow : AppColors.lightGrey,
                                fontColor: AppColors.white,
                              ),
                            ],
                          ))))
            ],
          ),
        ),
      ),
    );
  }
}
