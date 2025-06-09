class FakerAddDeviceNotifier extends BaseAddDeviceNotifier {
  FakerAddDeviceNotifier() : super(AreaManagerState());

  static const mockAreaList = [
    AreaListResponse(areaId: 1, name: '測試區域 A', placeId: 999),
    AreaListResponse(areaId: 2, name: '測試區域 B', placeId: 999),
  ];

  @override
  Future<void> updatePlaceId({required int placeId}) async {
    state = state.copyWith(placeId: placeId);
  }

  @override
  Future<List<AreaListResponse>> getAreaList(int placeId) async {
    state = state.copyWith(areaList: mockAreaList);
    return mockAreaList;
  }

  @override
  Future<int?> addArea(String name, int placeId) async {
    return DateTime.now().millisecondsSinceEpoch; // 模擬產生 ID
  }

  @override
  Future<bool> changeAreaName(int areaId, String name) async {
    return true; // 假資料永遠成功
  }

  @override
  Future<bool> deleteArea(int areaId) async {
    return true;
  }
}
