class FaultConditionData {
  final String code;
  final String types;
  final String group1;
  final String group2;
  final String item;

  FaultConditionData({
    required this.code,
    required this.types,
    required this.group1,
    required this.group2,
    required this.item,
  });

  factory FaultConditionData.fromJson(Map<String, dynamic> json) {
    return FaultConditionData(
      code: json['code'],
      types: json['types'],
      group1: json['group1'],
      group2: json['group2'],
      item: json['item'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'types': types,
      'group1': group1,
      'group2': group2,
      'item': item,
    };
  }
}
