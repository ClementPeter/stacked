import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'item.dart';

@immutable
class Booker2 {
  final String? kind;
  final int? totalItems;
  final List<Item>? items;

  const Booker2({this.kind, this.totalItems, this.items});

  @override
  String toString() {
    return 'Booker2(kind: $kind, totalItems: $totalItems, items: $items)';
  }

  factory Booker2.fromMap(Map<String, dynamic> data) => Booker2(
        kind: data['kind'] as String?,
        totalItems: data['totalItems'] as int?,
        items: (data['items'] as List<dynamic>?)
            ?.map((e) => Item.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'kind': kind,
        'totalItems': totalItems,
        'items': items?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Booker2].
  factory Booker2.fromJson(String data) {
    return Booker2.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Booker2] to a JSON string.
  String toJson() => json.encode(toMap());

  Booker2 copyWith({
    String? kind,
    int? totalItems,
    List<Item>? items,
  }) {
    return Booker2(
      kind: kind ?? this.kind,
      totalItems: totalItems ?? this.totalItems,
      items: items ?? this.items,
    );
  }
}
