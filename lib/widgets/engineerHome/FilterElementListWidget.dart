import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:haohsing_flutter/data/Params.dart';
import 'package:haohsing_flutter/model/response/maintenance/maintenanceForm/MaintenanceFormResponse.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/widgets/item/ItemTextWidget.dart';

class FilterElementListWidget extends HookWidget {
  final List<MaintenanceFormResponse> filterList;
  final ValueNotifier<List<MaintenanceFormResponse>> selectItem;
  final Map<String, String> filterLife;

  const FilterElementListWidget({
    super.key,
    required this.filterList,
    required this.selectItem,
    required this.filterLife,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:
            filterList.where((form) => selectItem.value.any((selected) => selected.code == form.code)).map((form) {
          return ItemTextWidget(
            fieldName: filterMap[form.code] ?? "",
            value: filterLife[form.code] ?? "",
            onTap: () async {
              showAddFilterDialog(
                context,
                filterCode: form.code,
                filterLife: filterLife,
              );
            },
            valueColor: AppColors.grey,
          );
        }).toList(),
      ),
    );
  }
}
