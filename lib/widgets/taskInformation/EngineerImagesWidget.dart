import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/response/maintenance/getTaskInformation/GetTaskInformationResponse.dart';
import 'package:haohsing_flutter/net/ApiEndPoint.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/widgets/item/ItemMediaWidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EngineerImagesWidget extends HookConsumerWidget {
  final List<EngineerImage>? engineerImages;

  const EngineerImagesWidget({
    super.key,
    required this.engineerImages,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final oldFilterCorePhoto = useState<List<String>>([]);
    final newFilterCorePhoto = useState<List<String>>([]);
    final equipmentPhoto = useState<List<String>>([]);
    final replacedPartPhoto = useState<List<String>>([]);

    useEffect(() {
      oldFilterCorePhoto.value = [];
      newFilterCorePhoto.value = [];
      equipmentPhoto.value = [];
      replacedPartPhoto.value = [];

      if (engineerImages != null) {
        for (var image in engineerImages!) {
          switch (image.kind) {
            case 21:
              oldFilterCorePhoto.value = [...oldFilterCorePhoto.value, "${ApiEndPoint.serverUrl}/${image.imageUrl}"];

              break;
            case 22:
              newFilterCorePhoto.value = [...newFilterCorePhoto.value, "${ApiEndPoint.serverUrl}/${image.imageUrl}"];
              break;
            case 31:
              equipmentPhoto.value = [...equipmentPhoto.value, "${ApiEndPoint.serverUrl}/${image.imageUrl}"];
              break;
            case 32:
              replacedPartPhoto.value = [...replacedPartPhoto.value, "${ApiEndPoint.serverUrl}/${image.imageUrl}"];
              break;
            default:
              break;
          }
        }
      }
      return null;
    }, []);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (oldFilterCorePhoto.value.isNotEmpty) ...[
          ItemMediaWidget(
            fieldName: AppTexts.oldFilterCorePhoto,
            hintText: '${oldFilterCorePhoto.value.length}個項目',
            mediaUrlList: oldFilterCorePhoto.value,
            fontColor: AppColors.grey,
            fileType: FileType.media,
            padding: 48,
            isClickable: false,
            isDelete: false,
          )
        ],
        if (newFilterCorePhoto.value.isNotEmpty) ...[
          ItemMediaWidget(
            fieldName: AppTexts.newFilterCorePhoto,
            hintText: '${newFilterCorePhoto.value.length}個項目',
            mediaUrlList: newFilterCorePhoto.value,
            fontColor: AppColors.grey,
            fileType: FileType.media,
            padding: 48,
            isClickable: false,
            isDelete: false,
          )
        ],
        if (equipmentPhoto.value.isNotEmpty) ...[
          ItemMediaWidget(
            fieldName: AppTexts.equipmentPhoto,
            hintText: '${equipmentPhoto.value.length}個項目',
            mediaUrlList: equipmentPhoto.value,
            fontColor: AppColors.grey,
            fileType: FileType.media,
            padding: 48,
            isClickable: false,
            isDelete: false,
          )
        ],
        if (replacedPartPhoto.value.isNotEmpty) ...[
          ItemMediaWidget(
            fieldName: AppTexts.replacedPartPhoto,
            hintText: '${replacedPartPhoto.value.length}個項目',
            mediaUrlList: replacedPartPhoto.value,
            fontColor: AppColors.grey,
            fileType: FileType.media,
            padding: 48,
            isClickable: false,
            isDelete: false,
          )
        ],
      ],
    );
  }
}
