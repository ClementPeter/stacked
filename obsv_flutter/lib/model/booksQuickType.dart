// To parse this JSON data, do
//
//     final bookQuickType = bookQuickTypeFromJson(jsonString);

import 'dart:convert';

BookQuickType bookQuickTypeFromJson(String str) =>
    BookQuickType.fromJson(json.decode(str));

String bookQuickTypeToJson(BookQuickType data) => json.encode(data.toJson());

class BookQuickType {
  String kind;
  List<Item> items;
  int totalItems;

  BookQuickType({
    required this.kind,
    required this.items,
    required this.totalItems,
  });

  factory BookQuickType.fromJson(Map<String, dynamic> json) => BookQuickType(
        kind: json["kind"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
        totalItems: json["totalItems"],
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "totalItems": totalItems,
      };
}

class Item {
  String kind;
  String id;
  String etag;
  String selfLink;
  VolumeInfo volumeInfo;

  Item({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        kind: json["kind"],
        id: json["id"],
        etag: json["etag"],
        selfLink: json["selfLink"],
        volumeInfo: VolumeInfo.fromJson(json["volumeInfo"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "id": id,
        "etag": etag,
        "selfLink": selfLink,
        "volumeInfo": volumeInfo.toJson(),
      };
}

class VolumeInfo {
  String title;
  List<String> authors;
  ImageLinks imageLinks;

  VolumeInfo({
    required this.title,
    required this.authors,
    required this.imageLinks,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
        title: json["title"],
        authors: List<String>.from(json["authors"].map((x) => x)),
        imageLinks: ImageLinks.fromJson(json["imageLinks"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "authors": List<dynamic>.from(authors.map((x) => x)),
        "imageLinks": imageLinks.toJson(),
      };
}

class ImageLinks {
  String smallThumbnail;
  String thumbnail;
  String small;
  String medium;
  String large;
  String extraLarge;

  ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
    required this.small,
    required this.medium,
    required this.large,
    required this.extraLarge,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> json) => ImageLinks(
        smallThumbnail: json["smallThumbnail"],
        thumbnail: json["thumbnail"],
        small: json["small"],
        medium: json["medium"],
        large: json["large"],
        extraLarge: json["extraLarge"],
      );

  Map<String, dynamic> toJson() => {
        "smallThumbnail": smallThumbnail,
        "thumbnail": thumbnail,
        "small": small,
        "medium": medium,
        "large": large,
        "extraLarge": extraLarge,
      };
}
