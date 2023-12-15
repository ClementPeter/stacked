import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:observable_flutter/app/app.logger.dart';
import 'package:observable_flutter/models/book.dart';

class ApiService {
  static const String baseUrl = 'www.googleapis.com';
  static const String books = '/books/v1/volumes';
  final _logger = getLogger('ApiService');

  Future<List<Book>> getBooks({String genreType = 'computers'}) async {
    try {
      final url = Uri.https(baseUrl, books, {'q': 'subject: $genreType'});
      final response = await http.get(url);

      _logger.d(response.body);
      final Iterable items = jsonDecode(response.body)['items'];

      ///_logger.i("items::::$items");
      return items.map((item) => Book.fromJson(item['volumeInfo'])).toList();
    } catch (e) {
      _logger.e(e);
      Exception(e);
      rethrow;
    }
  }
}
