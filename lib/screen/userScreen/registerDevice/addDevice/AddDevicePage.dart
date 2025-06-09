import 'dart:io';

import 'package:email_validator/email_validator.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/provider/BluetoothProvider.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/utils/Validators.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';
import 'package:haohsing_flutter/utils/navigation_helper.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/addDevice/WarrantyOptionWidget.dart';
import 'package:haohsing_flutter/widgets/item/ItemSubTitleWidget.dart';
import 'package:haohsing_flutter/widgets/item/ItemTextWidget.dart';
import 'package:haohsing_flutter/widgets/item/ItemMediaWidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:auto_route/auto_route.dart';
import 'AddDeviceProvider.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:haohsing_flutter/utils/ToastHelper.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';

@RoutePage()
class AddDevicePage extends HookConsumerWidget {
  const AddDevicePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bluetoothState = ref.watch(bluetoothProvider);

    final bluetoothNotifier = ref.read(bluetoothProvider.notifier);
    final addDeviceNotifier = ref.read(addDeviceProvider.notifier);
    final addDeviceState = ref.watch(addDeviceProvider);
    final userState = ref.watch(userProvider);

    final _manualBrand = useState<String?>(null);
    final _deviceName = useState<String?>("新飲水機");
    final _placeIndex = useState<int?>(null);
    final _areaIndex = useState<int?>(null);
    final _vendorIndex = useState<int?>(null);
    final _deviceModelIndex = useState<int?>(null);
    final _installationAddress = useState<String?>(null);

    final _warrantyOwner = useState<String?>(null);
    final _warrantyEmail = useState<String?>(null);
    final _warrantyPhone = useState<String?>(null);
    final _warrantyPurchaseDate = useState<DateTime?>(null);
    final _warrantySn = useState<String?>(null);
    final _warrantyWorkNumber = useState<String?>(null);

    final purchaseProof = useState<List<File>>([]);

    final isButtonClick = useState<bool>(false);

    void bringRegistrationInfo() {
      _warrantyOwner.value = userState.userResponse?.name;
      _warrantyEmail.value = userState.userResponse?.account;
      _warrantyPhone.value = userState.userResponse?.tel;
    }

    useEffect(() {
      addDeviceNotifier.getPlaceList();
      addDeviceNotifier.getDeviceModelList();
      addDeviceNotifier.getVendorList();
      return null;
    }, []);

    List<String> validateFormFields() {
      List<String> missingFields = [];

      if (_deviceName.value == null) {
        missingFields.add(AppTexts.deviceName);
      }
      if (_vendorIndex.value == null || _vendorIndex.value == -1) {
        missingFields.add(AppTexts.serviceDealer);
      }
      if (_deviceModelIndex.value == null || _deviceModelIndex.value == -1) {
        missingFields.add(AppTexts.model);
      }
      if (_installationAddress.value == null) {
        missingFields.add(AppTexts.installationAddress);
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
      if (purchaseProof.value.isEmpty) {
        missingFields.add(AppTexts.purchaseProof);
      }

      return missingFields;
    }

    useEffect(() {
      if (_placeIndex.value != null && _placeIndex.value! < addDeviceState.placeList.length) {
      } else {
        AppLog.e("Index out of bounds or place index is null");
      }
      _areaIndex.value = null;
      return null;
    }, [_placeIndex.value]);

    useEffect(() {
      isButtonClick.value = validateFormFields().isEmpty;

      return null;
    }, [
      _deviceName.value,
      _vendorIndex.value,
      _deviceModelIndex.value,
      _installationAddress.value,
      _warrantyOwner.value,
      _warrantyEmail.value,
      _warrantyPhone.value,
      _warrantyPurchaseDate.value,
      _warrantySn.value,
      _warrantyWorkNumber.value,
      purchaseProof.value,
    ]);

    return BasePage(
      onWillPop: () async {
        registerDeviceBack(context, ref);
        return false;
      },
      child: SafeArea(
        child: Container(
          child: Column(
            children: [
              MainTitleBar(
                title: AppTexts.addDevice,
                isBack: true,
                onBackTap: () {
                  registerDeviceBack(context, ref);
                },
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(24.sp, 0.sp, 24.sp, 24.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        gapH24,
                        if (bluetoothState.deviceScanQr?.id != null) ...[
                          assetImage('device.png', height: 136.sp),
                          customText(
                            "${AppTexts.macField}${bluetoothState.deviceScanQr?.id}",
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: AppColors.grey,
                          ),
                        ] else ...[
                          customText(
                            AppTexts.noConnectDeviceIllustrate,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: AppColors.grey,
                            overflow: null,
                            textAlign: TextAlign.center,
                          ),
                        ],
                        gapH24,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (bluetoothState.deviceScanQr?.id == null) ...[
                              ItemTextWidget(
                                fieldName: AppTexts.manualBrand,
                                value: _manualBrand.value ?? AppTexts.plsEnter,
                                valueColor: AppColors.grey,
                                onTap: () {
                                  showBottomEditDialog(
                                    context,
                                    title: AppTexts.manualBrand,
                                    hintText: AppTexts.plsManualBrand,
                                    defaultText: _manualBrand.value,
                                    buttonText: AppTexts.save,
                                    onTap: (text) {
                                      _manualBrand.value = text;
                                    },
                                  );
                                },
                              )
                            ],
                            ItemTextWidget(
                              fieldName: AppTexts.model,
                              value: (_deviceModelIndex.value != null &&
                                      _deviceModelIndex.value! < addDeviceState.deviceModelList.length)
                                  ? addDeviceState.deviceModelList[_deviceModelIndex.value!].name
                                  : AppTexts.plsChoose,
                              valueColor: AppColors.grey,
                              onTap: () async {
                                if (addDeviceState.deviceModelList.isNotEmpty) {
                                  showBottomListDialog(
                                    context,
                                    title: AppTexts.model,
                                    list: (addDeviceState.deviceModelList)
                                        .map((deviceModel) => deviceModel.name)
                                        .toList(),
                                    defaultText: '',
                                    onFinishTap: (index) {
                                      if (index != -1) {
                                        _deviceModelIndex.value = index;
                                      }
                                      AutoRouter.of(context).popForced();
                                    },
                                  );
                                }
                              },
                            ),
                            ItemTextWidget(
                              fieldName: AppTexts.name2,
                              value: _deviceName.value ?? AppTexts.plsEnter,
                              valueColor: AppColors.primaryYellow,
                              onTap: () {
                                showBottomEditDialog(
                                  context,
                                  title: AppTexts.name2,
                                  hintText: AppTexts.plsEnterName,
                                  defaultText: _deviceName.value,
                                  buttonText: AppTexts.save,
                                  onTap: (text) {
                                    _deviceName.value = text;
                                  },
                                );
                              },
                            ),
                            ItemTextWidget(
                              fieldName: AppTexts.place,
                              value: (_placeIndex.value != null &&
                                      _placeIndex.value! >= 0 &&
                                      _placeIndex.value! < addDeviceState.placeList.length)
                                  ? addDeviceState.placeList[_placeIndex.value!].name
                                  : AppTexts.plsChoose,
                              valueColor: AppColors.grey,
                              onTap: () async {
                                if (addDeviceState.placeList.isNotEmpty) {
                                  showBottomListDialog(
                                    context,
                                    title: AppTexts.place,
                                    list: (addDeviceState.placeList).map((place) => place.name).toList(),
                                    defaultText: (addDeviceState.placeList.isNotEmpty)
                                        ? (_placeIndex.value != null)
                                            ? addDeviceState.placeList[_placeIndex.value!].name
                                            : AppTexts.plsChoose
                                        : "無單位",
                                    onFinishTap: (index) {
                                      if (index != -1) {
                                        _placeIndex.value = index;
                                      }
                                      AutoRouter.of(context).popForced();
                                    },
                                  );
                                } else {
                                  // 無單位的話要新增單位
                                  showBottomEditDialog(
                                    context,
                                    title: AppTexts.addPlace,
                                    hintText: AppTexts.plsEnterPlaceName,
                                    buttonText: AppTexts.save,
                                    onTap: (text) async {
                                      await addDeviceNotifier.addPlace(text).then((placeId) async {
                                        if (placeId != null) {
                                          _placeIndex.value = 0;
                                        } else {
                                          AppLog.e("PLACE更新失敗");
                                        }
                                      });
                                    },
                                  );
                                }
                              },
                              isOptional: true,
                            ),
                            ItemTextWidget(
                              fieldName: AppTexts.area,
                              value: (_areaIndex.value != null &&
                                      _areaIndex.value! >= 0 &&
                                      _areaIndex.value! < addDeviceState.areaList.length)
                                  ? addDeviceState.areaList[_areaIndex.value!].name
                                  : AppTexts.plsChoose,
                              valueColor: AppColors.grey,
                              onTap: () async {
                                if (_placeIndex.value == null) {
                                  showToast(context: context, text: AppTexts.plsChoosePlace);
                                } else {
                                  await addDeviceNotifier
                                      .getAreaList(addDeviceState.placeList[_placeIndex.value!].placeId)
                                      .then((list) {
                                    if (list.isNotEmpty) {
                                      showBottomListDialog(
                                        context,
                                        title: AppTexts.area,
                                        list: (list).map((area) => area.name).toList(),
                                        defaultText: '',
                                        onFinishTap: (index) {
                                          if (index != -1) {
                                            _areaIndex.value = index;
                                          }
                                          AutoRouter.of(context).popForced();
                                        },
                                      );
                                    } else {
                                      showBottomEditDialog(
                                        context,
                                        title: AppTexts.addArea,
                                        hintText: AppTexts.plsEnterAreaName,
                                        buttonText: AppTexts.save,
                                        onTap: (text) {
                                          addDeviceNotifier
                                              .addArea(text, addDeviceState.placeList[_placeIndex.value!].placeId)
                                              .then((areaId) async {
                                            if (areaId != null) {
                                              await addDeviceNotifier
                                                  .getAreaList(addDeviceState.placeList[_placeIndex.value!].placeId)
                                                  .then((_) {
                                                _areaIndex.value = 0;
                                              });
                                            } else {
                                              AppLog.e("AREA更新失敗");
                                            }
                                          });
                                        },
                                      );
                                    }
                                  });
                                }
                              },
                              isOptional: true,
                            ),
                            ItemTextWidget(
                              fieldName: AppTexts.serviceDealer,
                              value: (_vendorIndex.value != null &&
                                      _vendorIndex.value! < addDeviceState.vendorInfoList.length)
                                  ? addDeviceState.vendorInfoList[_vendorIndex.value!].name
                                  : AppTexts.plsChoose,
                              valueColor: AppColors.grey,
                              onTap: () async {
                                if (addDeviceState.vendorInfoList.isNotEmpty) {
                                  showBottomListDialog(
                                    context,
                                    title: AppTexts.serviceDealer,
                                    list: (addDeviceState.vendorInfoList).map((vendor) => vendor.name).toList(),
                                    defaultText: '',
                                    onFinishTap: (index) {
                                      if (index != -1) {
                                        _vendorIndex.value = index;
                                      }
                                      AutoRouter.of(context).popForced();
                                    },
                                  );
                                }
                              },
                            ),
                            ItemTextWidget(
                              fieldName: AppTexts.installationAddress,
                              value: _installationAddress.value ?? AppTexts.plsEnter,
                              valueColor: AppColors.grey,
                              onTap: () async {
                                showBottomEditDialog(
                                  context,
                                  title: AppTexts.installationAddress,
                                  hintText: AppTexts.plsEnterInstallationAddress,
                                  defaultText: _installationAddress.value,
                                  buttonText: AppTexts.save,
                                  onTap: (text) {
                                    _installationAddress.value = text;
                                  },
                                );
                              },
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 24.sp),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  customText(
                                    AppTexts.warrantyRegistration,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.sp,
                                    color: AppColors.black,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      bringRegistrationInfo();
                                    },
                                    child: customText(
                                      AppTexts.bringRegistrationInformation,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp,
                                      color: AppColors.primaryYellow,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 6.sp),
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
                                    onTap: () {
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
                                    },
                                    optionValue:
                                        (_warrantyOwner.value != null) ? _warrantyOwner.value! : AppTexts.plsEnter,
                                    fontColor:
                                        (_warrantyOwner.value != null) ? AppColors.primaryYellow : AppColors.grey,
                                    isOptional: true,
                                  ),
                                  Divider(
                                    height: 1.sp,
                                    color: AppColors.borderGrey,
                                  ),
                                  WarrantyOptionWidget(
                                    title: AppTexts.email,
                                    onTap: () {
                                      showBottomEditDialog(
                                        context,
                                        title: AppTexts.email,
                                        hintText: AppTexts.plsEnterEmail,
                                        defaultText: _warrantyEmail.value,
                                        buttonText: AppTexts.save,
                                        onTap: (text) {
                                          _warrantyEmail.value = text;
                                        },
                                        isValid: (text) {
                                          return EmailValidator.validate(text);
                                        },
                                        invalidText: AppTexts.emailFailed,
                                        wordLimit: null,
                                        inputType: InputType.EMAIL,
                                      );
                                    },
                                    optionValue:
                                        (_warrantyEmail.value != null) ? _warrantyEmail.value! : AppTexts.plsEnter,
                                    fontColor:
                                        (_warrantyEmail.value != null) ? AppColors.primaryYellow : AppColors.grey,
                                    isOptional: true,
                                  ),
                                  Divider(
                                    height: 0.5.sp,
                                    color: AppColors.borderGrey,
                                  ),
                                  WarrantyOptionWidget(
                                    title: AppTexts.contactNumber,
                                    onTap: () {
                                      showBottomEditDialog(
                                        context,
                                        title: AppTexts.contactNumber,
                                        hintText: AppTexts.plsEnterPhone,
                                        defaultText: _warrantyPhone.value,
                                        buttonText: AppTexts.save,
                                        inputType: InputType.PHONENUMBER,
                                        onTap: (text) {
                                          _warrantyPhone.value = text;
                                        },
                                        isValid: (text) {
                                          return (text.isValidPhoneNumber());
                                        },
                                        invalidText: AppTexts.phoneFailed,
                                      );
                                    },
                                    optionValue: (_warrantyPhone.value != null)
                                        ? formatPhoneNumber(_warrantyPhone.value!)
                                        : AppTexts.plsEnter,
                                    fontColor:
                                        (_warrantyPhone.value != null) ? AppColors.primaryYellow : AppColors.grey,
                                    isOptional: true,
                                  ),
                                  Divider(
                                    height: 1.sp,
                                    color: AppColors.borderGrey,
                                  ),
                                  WarrantyOptionWidget(
                                    title: AppTexts.purchaseDate,
                                    onTap: () async {
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
                                    },
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
                                    onTap: () {
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
                                    },
                                    optionValue: (_warrantySn.value != null) ? _warrantySn.value! : AppTexts.plsEnter,
                                    fontColor: AppColors.grey,
                                  ),
                                  Divider(
                                    height: 1.sp,
                                    color: AppColors.borderGrey,
                                  ),
                                  WarrantyOptionWidget(
                                    title: AppTexts.workOrderNumber,
                                    onTap: () {
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
                                    },
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
                              fontColor: AppColors.primaryYellow,
                              selectedMedias: purchaseProof,
                              sizeLimit: 10,
                              fileLimit: 6,
                              fileType: FileType.image,
                              padding: 48.sp,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 36.sp,
                        ),
                        roundedButton(
                          radius: 12.sp,
                          text: AppTexts.add,
                          onTap: () {
                            if (isButtonClick.value) {
                              addDeviceNotifier
                                  .deviceRegister(
                                      sn: _warrantySn.value!,
                                      mac: bluetoothState.deviceScanQr?.id,
                                      name: _deviceName.value!,
                                      vendorId: addDeviceState.vendorInfoList[_vendorIndex.value!].vendorId,
                                      modelId: addDeviceState.deviceModelList[_deviceModelIndex.value!].modelId,
                                      areaId: (_areaIndex.value != null &&
                                              _areaIndex.value! >= 0 &&
                                              _areaIndex.value! < addDeviceState.areaList.length)
                                          ? addDeviceState.areaList[_areaIndex.value!].areaId
                                          : null,
                                      placeId: (_placeIndex.value != null &&
                                              _placeIndex.value! >= 0 &&
                                              _placeIndex.value! < addDeviceState.placeList.length)
                                          ? addDeviceState.placeList[_placeIndex.value!].placeId
                                          : null,
                                      customerId: userState.userResponse!.userId,
                                      customerAddress: _installationAddress.value,
                                      owner: _warrantyOwner.value,
                                      warrantyEmail: _warrantyEmail.value,
                                      warrantyTel: _warrantyPhone.value,
                                      invDate: formatDateWithDay(_warrantyPurchaseDate.value!),
                                      workOrderNumber: _warrantyWorkNumber.value,
                                      files: purchaseProof.value,
                                      manualBrand: _manualBrand.value)
                                  .then((deviceRegisterResponse) {
                                if (deviceRegisterResponse != null) {
                                  AutoRouter.of(context).replace(AddSuccessRoute(
                                    deviceName: _deviceName.value!,
                                  ));
                                } else {}
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
                        )
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
