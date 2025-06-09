import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/provider/UserProvider.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/screen/userScreen/userInformation/UserInformationProvider.dart';
import 'package:haohsing_flutter/utils/Validators.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/widgets/common/AppBarWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/login/LoginInput.dart';
import 'package:haohsing_flutter/widgets/login/LoginTitlebar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';

@RoutePage()
class UserInformationPage extends HookConsumerWidget {
  const UserInformationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final userState = ref.watch(userProvider);
    final userNotifier = ref.read(userProvider.notifier);
    final userInformationState = ref.watch(userInformationProvider);
    final userInformationNotifier = ref.read(userInformationProvider.notifier);
    final nameController = useTextEditingController();
    final phoneController = useTextEditingController();
    final cityIndex = useState<int?>(null);
    final regionIndex = useState<int?>(null);
    final isButtonClick = useState<bool>(false);

    List<String> validateFormFields() {
      List<String> missingFields = [];

      if (nameController.text.isEmpty) {
        missingFields.add(AppTexts.name);
      }
      if (removeDashes(phoneController.text).isEmpty || !removeDashes(phoneController.text).isValidPhoneNumber()) {
        missingFields.add(AppTexts.phone);
      }
      if (cityIndex.value == null || regionIndex.value == null) {
        missingFields.add(AppTexts.region);
      }
      return missingFields;
    }

    void listener() {
      isButtonClick.value = validateFormFields().isEmpty;
    }

    useEffect(() {
      userInformationNotifier.getCities();

      nameController.addListener(listener);
      phoneController.addListener(listener);
      return () {
        nameController.removeListener(listener);
        phoneController.removeListener(listener);
      };
    }, []);

    useEffect(() {
      isButtonClick.value = validateFormFields().isEmpty;
    }, [
      cityIndex.value,
      regionIndex.value,
    ]);

    return BasePage(
        appBar: bgDarkAppBar(),
        statusBarColor: AppColors.bgColor,
        child: Container(
          padding: EdgeInsets.all(24.sp),
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LoginTitlebar(title: AppTexts.userInformation, context: context),
              gapH16,
              Align(
                alignment: Alignment.centerLeft,
                child: customText(AppTexts.userInformationMsg,
                    fontWeight: FontWeight.w500, fontSize: 18.sp, color: AppColors.grey),
              ),
              gapH24,
              loginInput(
                hintText: AppTexts.name,
                textEditingController: nameController,
                inputType: InputType.ALL,
              ),
              gapH24,
              loginInput(
                hintText: AppTexts.phoneNumber,
                textEditingController: phoneController,
                inputType: InputType.PHONENUMBER,
              ),
              gapH24,
              GestureDetector(onTap: () async {
                if (userInformationState.cities.isNotEmpty) {
                  showBottomListDialog(
                    context,
                    title: AppTexts.city,
                    defaultText: userState.userResponse?.city,
                    list: userInformationState.cities,
                    buttonText: AppTexts.next,
                    onFinishTap: (tempCityIndex) async {
                      AutoRouter.of(context).popForced();
                      await userInformationNotifier
                          .getRegions(countyName: userInformationState.cities[tempCityIndex])
                          .then((getRegionsResponse) {
                        if (getRegionsResponse != null) {
                          showBottomListDialog(
                            context,
                            title: AppTexts.region,
                            defaultText: userState.userResponse?.city,
                            list: getRegionsResponse.regions.toList(),
                            onFinishTap: (tempRegionIndex) async {

                              cityIndex.value = tempCityIndex;
                              regionIndex.value = tempRegionIndex;

                              AutoRouter.of(context).popForced();
                            },
                          );
                        }
                      });
                    },
                  );
                }
              },child: Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(16.sp, 10.sp, 24.sp, 10.sp),
                decoration: BoxDecoration(color: AppColors.white,borderRadius: BorderRadius.circular(96),border:
                Border.all(color: AppColors.primaryBlack,width: 2)),
                child: customText(
                  (cityIndex.value != null && cityIndex.value! < userInformationState.cities.length &&
                      regionIndex.value != null && regionIndex.value! < userInformationState.regions.length)
                      ? '${userInformationState.cities[cityIndex.value!]}${userInformationState.regions[regionIndex.value!]}'
                      : AppTexts.region,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: (cityIndex.value != null && cityIndex.value! < userInformationState.cities.length &&
                      regionIndex.value != null && regionIndex.value! < userInformationState.regions.length)
                      ? AppColors.primaryBlack
                      : AppColors.grey,
                ),
              ),),
              gapH96,
              Row(children: [
                Expanded(child: roundedButton(
                    radius: 12.sp,
                    text: AppTexts.skip,
                    onTap: () async {
                      goUserMain(context, ref, isVerifyUserInfo: false);
                    },
                    bgColor: AppColors.transparent,
                    fontColor: AppColors.primaryBlack,
                    borderColor: AppColors.primaryBlack
                ),)
                ,gapW24
                ,Expanded(child: roundedButton(
                  radius: 12.sp,
                  text: AppTexts.finish,
                  onTap: () async {
                    if (isButtonClick.value) {
                      await userInformationNotifier.changeUserName(nameController.text);
                      await userInformationNotifier.changeUserPhone(removeDashes(phoneController.text));
                      await userInformationNotifier.changeUserRegion(
                          city: userInformationState.cities[cityIndex.value!],
                          region: userInformationState.regions[regionIndex.value!]);
                      userNotifier.getUserInfo().then((_){
                        goUserMain(context, ref);
                      });
                    } else {
                      showErrorDialog(
                        context,
                        title: "欄位未填寫",
                        content: '以下欄位未填寫或格式錯誤:\n${validateFormFields().join("\n")}',
                      );
                    }
                  },
                  bgColor: isButtonClick.value ? AppColors.primaryYellow : AppColors.lightGrey,
                  fontColor: AppColors.white,
                ),)
                ,],)
            ],
          ),),
        ));
  }
}
