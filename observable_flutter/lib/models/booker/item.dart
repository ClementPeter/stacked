import 'volume_info.dart';

class Item {
  String? kind;
  String? selfLink;
  VolumeInfo? volumeInfo;

  Item({this.kind, this.selfLink, this.volumeInfo});

  @override
  String toString() {
    return 'Item(kind: $kind, selfLink: $selfLink, volumeInfo: $volumeInfo)';
  }

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        kind: json['kind'] as String?,
        selfLink: json['selfLink'] as String?,
        volumeInfo: json['volumeInfo'] == null
            ? null
            : VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'selfLink': selfLink,
        'volumeInfo': volumeInfo?.toJson(),
      };
}
