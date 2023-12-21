import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'volume_info.dart';

@immutable
class Item {
  final String? kind;
  final String? selfLink;
  final VolumeInfo? volumeInfo;

  const Item({this.kind, this.selfLink, this.volumeInfo});

  @override
  String toString() {
    return 'Item(kind: $kind, selfLink: $selfLink, volumeInfo: $volumeInfo)';
  }

  factory Item.fromMap(Map<String, dynamic> data) => Item(
        kind: data['kind'] as String?,
        selfLink: data['selfLink'] as String?,
        volumeInfo: data['volumeInfo'] == null
            ? null
            : VolumeInfo.fromMap(data['volumeInfo'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'kind': kind,
        'selfLink': selfLink,
        'volumeInfo': volumeInfo?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Item].
  factory Item.fromJson(String data) {
    return Item.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Item] to a JSON string.
  String toJson() => json.encode(toMap());

  Item copyWith({
    String? kind,
    String? selfLink,
    VolumeInfo? volumeInfo,
  }) {
    return Item(
      kind: kind ?? this.kind,
      selfLink: selfLink ?? this.selfLink,
      volumeInfo: volumeInfo ?? this.volumeInfo,
    );
  }
}
