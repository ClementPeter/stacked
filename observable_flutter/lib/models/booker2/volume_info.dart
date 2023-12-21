import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'image_links.dart';

@immutable
class VolumeInfo {
  final String? title;
  final List<String>? authors;
  final String? description;
  final List<String>? categories;
  final ImageLinks? imageLinks;

  const VolumeInfo({
    this.title,
    this.authors,
    this.description,
    this.categories,
    this.imageLinks,
  });

  @override
  String toString() {
    return 'VolumeInfo(title: $title, authors: $authors, description: $description, categories: $categories, imageLinks: $imageLinks)';
  }

  factory VolumeInfo.fromMap(Map<String, dynamic> data) => VolumeInfo(
        title: data['title'] as String?,
        authors: data['authors'] as List<String>?,
        description: data['description'] as String?,
        categories: data['categories'] as List<String>?,
        imageLinks: data['imageLinks'] == null
            ? null
            : ImageLinks.fromMap(data['imageLinks'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'title': title,
        'authors': authors,
        'description': description,
        'categories': categories,
        'imageLinks': imageLinks?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [VolumeInfo].
  factory VolumeInfo.fromJson(String data) {
    return VolumeInfo.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [VolumeInfo] to a JSON string.
  String toJson() => json.encode(toMap());

  VolumeInfo copyWith({
    String? title,
    List<String>? authors,
    String? description,
    List<String>? categories,
    ImageLinks? imageLinks,
  }) {
    return VolumeInfo(
      title: title ?? this.title,
      authors: authors ?? this.authors,
      description: description ?? this.description,
      categories: categories ?? this.categories,
      imageLinks: imageLinks ?? this.imageLinks,
    );
  }
}
