import 'package:email_validator/email_validator.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/model/response/device/deviceInfo/DeviceInfoResponse.dart';
import 'package:haohsing_flutter/net/ApiEndPoint.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/screen/userScreen/deviceInfo/warrantyInformation/WarrantyInformationProvider.dart';
import 'package:haohsing_flutter/utils/Validators.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/addDevice/WarrantyOptionWidget.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/widgets/item/ItemMediaWidget.dart';
import 'package:haohsing_flutter/widgets/item/ItemSubTitleWidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:intl/intl.dart';

@RoutePage()
class WarrantyInformationPage extends HookConsumerWidget {
  final DeviceInfoResponse deviceInfo;

  const WarrantyInformationPage({
    super.key,
    required this.deviceInfo,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final warrantyInformationNotifier = ref.read(warrantyInformationProvider.notifier);
    final warrantyInformationState = ref.watch(warrantyInformationProvider);
    final userState = ref.watch(userProvider);

    final _warrantyOwner = useState<String?>(null);
    final _warrantyEmail = useState<String?>(null);
    final _warrantyPhone = useState<String?>(null);
    final _warrantyPurchaseDate = useState<DateTime?>(null);
    final _warrantySn = useState<String?>(null);
    final _warrantyWorkNumber = useState<String?>(null);
    final media = useState<List<String>>([]);
    final isEdit = useState<bool>(false);
    final isButtonClick = useState<bool>(false);

    void bringRegistrationInfo() {
      _warrantyOwner.value = userState.userResponse?.name;
      _warrantyEmail.value = userState.userResponse?.account;
      _warrantyPhone.value = userState.userResponse?.tel;
    }

    List<String> validateFormFields() {
      List<String> missingFields = [];

      if (_warrantyOwner.value == null || _warrantyOwner.value!.isEmpty) {
        missingFields.add(AppTexts.owner);
      }
      if (_warrantyEmail.value == null || _warrantyEmail.value!.isEmpty) {
        missingFields.add(AppTexts.email);
      }
      if (_warrantyPhone.value == null || _warrantyPhone.value!.isEmpty) {
        missingFields.add(AppTexts.contactNumber);
      }
      if (_warrantyPurchaseDate.value == null) {
        missingFields.add(AppTexts.purchaseDate);
      }
      if (_warrantySn.value == null || _warrantySn.value!.isEmpty) {
        missingFields.add(AppTexts.sn);
      }
      if (_warrantyWorkNumber.value == null || _warrantyWorkNumber.value!.isEmpty) {
        missingFields.add(AppTexts.workOrderNumber);
      }

      return missingFields;
    }

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        warrantyInformationNotifier.getWarranty(deviceId: deviceInfo.deviceId);
      });
      return null;
    }, []);

    useEffect(() {
      final warrantyInfo = warrantyInformationState.warrantyResponse;
      _warrantyOwner.value = warrantyInfo?.owner;
      _warrantyEmail.value = warrantyInfo?.warrantyEmail;
      _warrantyPhone.value = warrantyInfo?.warrantyTel;
      _warrantyPurchaseDate.value = DateTime.tryParse(warrantyInfo?.invDate ?? '');
      _warrantySn.value = deviceInfo.sn;
      _warrantyWorkNumber.value = warrantyInfo?.workOrderNumber;
      media.value = warrantyInfo?.deviceImages
          ?.split(',')
          .map((image) => '${ApiEndPoint.serverUrl}/$image')
          .toList()
          ?? [];

      isEdit.value = warrantyInfo?.owner == null ||
          warrantyInfo?.warrantyEmail == null ||
          warrantyInfo?.warrantyTel == null ||
          warrantyInfo?.invDate == null ||
          warrantyInfo?.workOrderNumber == null ||
          warrantyInfo?.deviceImages == null;

      return null;
    }, [warrantyInformationState.warrantyResponse]);

    useEffect(() {
      isButtonClick.value = validateFormFields().isEmpty;

      return null;
    }, [
      _warrantyOwner.value,
      _warrantyEmail.value,
      _warrantyPhone.value,
      _warrantyPurchaseDate.value,
      _warrantySn.value,
      _warrantyWorkNumber.value,
     ]);

    return BasePage(
      child: SafeArea(
        child: Container(
          child: Column(
            children: [
              MainTitleBar(title: AppTexts.warranty, isBack: true),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ItemSubTitleWidget(title: AppTexts.information),
                            if(isEdit.value)...[
                            customText(
                                AppTexts.bringRegistrationInformation,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: AppColors.primaryYellow,
                                onTap: (){
                                  bringRegistrationInfo();
                                }
                            ),]
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 4),
                          padding: EdgeInsets.symmetric(horizontal: 8.sp),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(8.sp),
                          ),
                          child: Column(
                            children: [
                              WarrantyOptionWidget(
                                title: AppTexts.owner,
                                onTap: (isEdit.value)?() {
                                  showBottomEditDialog(
                                    context,
                                    title: AppTexts.owner,
                                    hintText: AppTexts.plsEnterName,
                                    defaultText: _warrantyOwner.value,
                                    buttonText: AppTexts.save,
                                    onTap: (text) {
                                      _warrantyOwner.value = text;
                                    },
                                  );
                                }:null,
                                optionValue: (_warrantyOwner.value != null) ? _warrantyOwner.value! : AppTexts.plsEnter,
                                fontColor: (_warrantyOwner.value != null) ? AppColors.primaryYellow : AppColors.grey,
                              ),
                              Divider(
                                height: 1.sp,
                                color: AppColors.borderGrey,
                              ),
                              WarrantyOptionWidget(
                                title: AppTexts.email,
                                onTap: (isEdit.value)?() {
                                  showBottomEditDialog(context,
                                      title: AppTexts.email,
                                      hintText: AppTexts.plsEnterEmail,
                                      defaultText: _warrantyEmail.value,
                                      buttonText: AppTexts.save, onTap: (text) {
                                    _warrantyEmail.value = text;
                                  }, isValid: (text) {
                                    return EmailValidator.validate(text);
                                  }, invalidText: AppTexts.emailFailed, wordLimit: null,
                                    inputType: InputType.EMAIL,);
                                }:null,
                                optionValue: (_warrantyEmail.value != null) ? _warrantyEmail.value! : AppTexts.plsEnter,
                                fontColor: (_warrantyEmail.value != null) ? AppColors.primaryYellow : AppColors.grey,
                              ),
                              Divider(
                                height: 0.5.sp,
                                color: AppColors.borderGrey,
                              ),
                              WarrantyOptionWidget(
                                title: AppTexts.contactNumber,
                                onTap: (isEdit.value)?() {
                                  showBottomEditDialog(
                                    context,
                                    title: AppTexts.contactNumber,
                                    hintText: AppTexts.plsEnterPhone,
                                    defaultText: _warrantyPhone.value,
                                    buttonText: AppTexts.save,
                                    onTap: (text) {
                                      _warrantyPhone.value = text;
                                    },
                                    isValid: (text) {
                                      return (text.isValidPhoneNumber());
                                    },
                                    invalidText: AppTexts.phoneFailed,
                                    inputType: InputType.PHONENUMBER
                                  );
                                }:null,
                                optionValue: (_warrantyPhone.value != null) ? formatPhoneNumber(_warrantyPhone.value!) : AppTexts.plsEnter,
                                fontColor: (_warrantyPhone.value != null) ? AppColors.primaryYellow : AppColors.grey,
                              ),
                              Divider(
                                height: 1.sp,
                                color: AppColors.borderGrey,
                              ),
                              WarrantyOptionWidget(
                                title: AppTexts.purchaseDate,
                                onTap: (_warrantyPurchaseDate.value == null) ?() async {
                                  DateTime? selectedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now().subtract(Duration(days: 365 * 10)),
                                    // 過去10年
                                    lastDate: DateTime.now(),
                                    builder: (BuildContext context, Widget? child) {
                                      return Theme(
                                        data: ThemeData.light().copyWith(
                                          colorScheme: ColorScheme.light(
                                            primary: AppColors.primaryYellow,
                                            onPrimary: AppColors.white,
                                            onSurface: AppColors.primaryBlack,
                                          ),
                                          dialogBackgroundColor: AppColors.primaryYellow,
                                        ),
                                        child: child!,
                                      );
                                    },
                                    selectableDayPredicate: (DateTime day) {
                                      return day.difference(DateTime.now()).inDays < 2;
                                    },
                                  );

                                  if (selectedDate != null) {
                                    _warrantyPurchaseDate.value = selectedDate;
                                  }
                                }:null,
                                optionValue: (_warrantyPurchaseDate.value != null)
                                    ? DateFormat('yyyy年MM月dd日').format(_warrantyPurchaseDate.value!)
                                    : '--年--月--日',
                                fontColor: AppColors.grey,
                              ),
                              Divider(
                                height: 1.sp,
                                color: AppColors.borderGrey,
                              ),
                              WarrantyOptionWidget(
                                title: AppTexts.sn,
                                onTap: (_warrantySn.value == null) ?() {
                                  showBottomEditDialog(
                                    context,
                                    title: AppTexts.sn,
                                    hintText: AppTexts.plsEnterSn,
                                    defaultText: _warrantySn.value,
                                    buttonText: AppTexts.save,
                                    inputType: InputType.ALPHANUMERIC,
                                    onTap: (text) {
                                      _warrantySn.value = text;
                                    },
                                  );
                                }:null,
                                optionValue: (_warrantySn.value != null) ? _warrantySn.value! : AppTexts.plsEnter,
                                fontColor: AppColors.grey,
                              ),
                              Divider(
                                height: 1.sp,
                                color: AppColors.borderGrey,
                              ),
                              WarrantyOptionWidget(
                                title: AppTexts.workOrderNumber,
                                onTap: (_warrantyWorkNumber.value == null)?() {
                                  showBottomEditDialog(
                                    context,
                                    title: AppTexts.workOrderNumber,
                                    hintText: AppTexts.plsEnterWorkOrderNumber,
                                    defaultText: _warrantyWorkNumber.value,
                                    buttonText: AppTexts.save,
                                    inputType: InputType.ALPHANUMERIC,
                                    onTap: (text) {
                                      _warrantyWorkNumber.value = text;
                                    },
                                  );
                                }:null,
                                optionValue: (_warrantyWorkNumber.value != null)
                                    ? _warrantyWorkNumber.value!
                                    : AppTexts.plsEnter,
                                fontColor: AppColors.grey,
                              ),
                            ],
                          ),
                        ),
                        customText(
                          AppTexts.warrantyMsg,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: AppColors.grey,
                          overflow: null,
                        ),
                        ItemSubTitleWidget(title: AppTexts.uploadPurchaseProof),
                        ItemMediaWidget(
                          fieldName: AppTexts.purchaseProof,
                          fontColor: AppColors.grey,
                          mediaUrlList: media.value,
                          hintText: "${media.value.length}個項目",
                          sizeLimit: 10,
                          fileLimit: 6,
                          fileType: FileType.image,
                          padding: 48.sp,
                        ),
                    if(isEdit.value)...[
                      gapH32,
                    roundedButton(
                      radius: 12.sp,
                      text: AppTexts.save,
                      onTap: () {
                        if (isButtonClick.value) {
                          showDefaultDialog(
                          context,
                          title: AppTexts.warrantyConfirm,
                          content: AppTexts.warrantyConfirmMsg,
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
                                warrantyInformationNotifier.updateWarranty(
                                  deviceId: deviceInfo.deviceId,
                                  owner: _warrantyOwner.value!,
                                  warrantyEmail: _warrantyEmail.value!,
                                  warrantyTel: _warrantyPhone.value!,
                                  invDate: formatDateWithDay(_warrantyPurchaseDate.value!),
                                  workOrderNumber: _warrantyWorkNumber.value!,
                                  deviceImages: warrantyInformationState.warrantyResponse?.deviceImages ?? '',);
                              },
                              bgColor: AppColors.primaryYellow,
                              fontColor: AppColors.white,
                              borderColor: AppColors.primaryYellow),
                          );
                        } else {
                          showErrorDialog(
                            context,
                            title: "欄位未填寫",
                            content: '以下欄位未填寫:\n${validateFormFields().join("\n")}',
                          );
                        }
                      },
                      bgColor: isButtonClick.value ? AppColors.primaryYellow : AppColors.lightGrey,
                      fontColor: AppColors.white,)]
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
