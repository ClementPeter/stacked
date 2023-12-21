import 'image_links.dart';

class VolumeInfo {
  String? title;
  List<String>? authors;
  String? description;
  List<String>? categories;
  ImageLinks? imageLinks;

  VolumeInfo({
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

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
        title: json['title'] as String?,
        authors: json['authors'] as List<String>?,
        description: json['description'] as String?,
        categories: json['categories'] as List<String>?,
        imageLinks: json['imageLinks'] == null
            ? null
            : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'authors': authors,
        'description': description,
        'categories': categories,
        'imageLinks': imageLinks?.toJson(),
      };
}
