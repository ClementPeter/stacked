import 'item.dart';

class Booker {
  String? kind;
  int? totalItems;
  List<Item>? items;

  Booker({this.kind, this.totalItems, this.items});

  @override
  String toString() {
    return 'Booker(kind: $kind, totalItems: $totalItems, items: $items)';
  }

  factory Booker.fromJson(Map<String, dynamic> json) => Booker(
        kind: json['kind'] as String?,
        totalItems: json['totalItems'] as int?,
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'totalItems': totalItems,
        'items': items?.map((e) => e.toJson()).toList(),
      };
}
