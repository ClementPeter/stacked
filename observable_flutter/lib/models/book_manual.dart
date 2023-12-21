class BookManual {
  List<Items>? items;

  BookManual({this.items});

  BookManual.fromJson(Map<String, dynamic> json) {
    items = json["items"] == null
        ? null
        : (json["items"] as List).map((e) => Items.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (items != null) {
      data["items"] = items?.map((e) => e.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? kind;
  String? selfLink;
  VolumeInfo? volumeInfo;

  Items({this.kind, this.selfLink, this.volumeInfo});

  Items.fromJson(Map<String, dynamic> json) {
    kind = json["kind"];
    selfLink = json["selfLink"];
    volumeInfo = json["volumeInfo"] == null
        ? null
        : VolumeInfo.fromJson(json["volumeInfo"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["kind"] = kind;
    data["selfLink"] = selfLink;
    if (volumeInfo != null) {
      data["volumeInfo"] = volumeInfo?.toJson();
    }
    return data;
  }
}

class VolumeInfo {
  String? title;
  List<String>? authors;
  String? description;
  List<String>? categories;
  ImageLinks? imageLinks;

  VolumeInfo(
      {this.title,
      this.authors,
      this.description,
      this.categories,
      this.imageLinks});

  VolumeInfo.fromJson(Map<String, dynamic> json) {
    title = json["title"];
    authors =
        json["authors"] == null ? null : List<String>.from(json["authors"]);
    description = json["description"];
    categories = json["categories"] == null
        ? null
        : List<String>.from(json["categories"]);
    imageLinks = json["imageLinks"] == null
        ? null
        : ImageLinks.fromJson(json["imageLinks"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["title"] = title;
    if (authors != null) {
      data["authors"] = authors;
    }
    data["description"] = description;
    if (categories != null) {
      data["categories"] = categories;
    }
    if (imageLinks != null) {
      data["imageLinks"] = imageLinks?.toJson();
    }
    return data;
  }
}

class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;

  ImageLinks({this.smallThumbnail, this.thumbnail});

  ImageLinks.fromJson(Map<String, dynamic> json) {
    smallThumbnail = json["smallThumbnail"];
    thumbnail = json["thumbnail"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["smallThumbnail"] = smallThumbnail;
    data["thumbnail"] = thumbnail;
    return data;
  }
}
