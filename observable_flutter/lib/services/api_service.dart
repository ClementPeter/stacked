import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:observable_flutter/app/app.logger.dart';
import 'package:observable_flutter/models/book.dart';
import 'package:observable_flutter/models/book_manual.dart';
import 'package:observable_flutter/models/booker/booker.dart';
import 'package:observable_flutter/models/booker2/booker2.dart';

class ApioService {
  static const String baseUrl = 'www.googleapis.com';
  static const String books = '/books/v1/volumes';
  final _logger = getLogger('ApiService');

  Future<Booker2> getBooks({String genreType = 'computers'}) async {
    try {
      final url = Uri.https(baseUrl, books, {'q': 'subject: $genreType'});
      final response = await http.get(url);
      _logger.d('response ::::: $response');

      final value = Booker2.fromJson(response.body);
      // _logger.d(response.body);
      //final Iterable items = jsonDecode(response.body)['items'];
      // final bookItems = jsonDecode(response.body);
      // _logger.d("$bookItems::::: bookItems");

      ///_logger.i("items::::$items");
      //return items.map((item) => Book.fromJson(item['volumeInfo'])).toList();
      //return item
      //return BookManual.fromJson(bo okItems);
      //final value = items.map((item) => BookManual.fromJson(item)).toList();
      // final value = Booker.fromJson(bookItems);
      _logger.d('value ::::: $value');
      return value;
    } catch (e) {
      _logger.e(e);
      Exception(e);
      rethrow;
    }
  }
}

class ApiService {
  static const String baseUrl = 'www.googleapis.com';
  static const String books = '/books/v1/volumes';
  final _logger = getLogger('ApiService');

  Future getBooks({String genreType = 'computers'}) async {
    final url = Uri.https(baseUrl, books, {'q': 'subject: $genreType'});
    final response = await http.get(url);
    //_logger.d('response ::::: $response');
    return response;
  }
}
