import 'dart:collection';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:obsv_flutter/app/app.logger.dart';
import 'package:obsv_flutter/model/books2.dart';
import 'package:obsv_flutter/model/booksQuickType.dart';

class ApiService {
  static const String baseUrl = 'www.googleapis.com';
  static const String books = '/books/v1/volumes';

  final _logger = getLogger('ApiService');

  //working guy
  // Future getBooks({final genreType = 'computers'}) async {
  //   try {
  //     final url = Uri.https(baseUrl, books, {'q': 'subject: $genreType'});
  //     final response = await http.get(url);
  //     //_logger.i('responseeee::: ${response.body}');

  //     Iterable items = jsonDecode(response.body)['items'];
  //     _logger.i('itemss::: $items');

  //     return items.map((item) => Books.fromJson(item)).toList();
  //   } on SocketException {
  //     throw "No Internet Connection";
  //   } catch (e) {
  //     _logger.i('exception::: $e');
  //     rethrow;
  //   }
  // }

  //
  //
  //
  //
  //
  //

  // //Demo Experiment 1 -> Working Guy
  // Future getBooks({final genreType = 'computers'}) async {
  //   try {
  //     final url = Uri.https(baseUrl, books, {'q': 'subject: $genreType'});
  //     final jsonResponse = await http.get(url);
  //     //_logger.i('responseeee::: ${response.body}');

  //     Map<String, dynamic> body = jsonDecode(jsonResponse.body);
  //     _logger.i('bodyyy::: $body');

  //     Iterable items = body['items'];
  //     _logger.i('itemsss::: $items');

  //     return items.map((item) => Books.fromJson(item)).toList();
  //   } on SocketException {
  //     throw "No Internet Connection";
  //   } catch (e) {
  //     _logger.i('exception::: $e');
  //     rethrow;
  //   }
  // }

  // Demo Experiment 2 -> Working Guy
  // Future getBooks({final genreType = 'computers'}) async {
  //   try {
  //     final url = Uri.https(baseUrl, books, {'q': 'subject: $genreType'});
  //     final jsonResponse = await http.get(url);
  //     //_logger.i('responseeee::: ${response.body}');
  //     Map<String, dynamic> body = jsonDecode(jsonResponse.body);

  //     Iterable items = body['items'];
  //     _logger.i('itemss::: $items');

  //     final result = items.map((item) => BookJavCbk2.fromJson(item)).toList();
  //     return result;
  //   } on SocketException {
  //     throw "No Internet Connection";
  //   } catch (e) {
  //     _logger.i('exception::: $e');
  //     rethrow;
  //   }
  // }

  ///
  ///
  ///
  ///
  ///
  ///Demo Instance 1 Experiment 1 -> Working Guy -> Jumping one step off the model
  Future getBooks({final genreType = 'computers'}) async {
    try {
      final url = Uri.https(baseUrl, books, {'q': 'subject:$genreType'});
      final response = await http.get(url);
      //_logger.i('responseeee::: ${response.body}');

      final Map<String, dynamic> jsonResponse = json.decode(response.body);

      if (jsonResponse.containsKey("items")) {
        final List<dynamic> items = jsonResponse["items"];
        //_logger.i('itemss::: $items');
        final result = items.map((item) => Items.fromJson(item)).toList();
        _logger.i('resultsss::: ${result.runtimeType}');
        return result;
      } else {
        // Handle the case where "items" key is not present in the response
        _logger.i('No "items" key found in the response.');
        return [];
      }
    } catch (e) {
      _logger.i('exception::: $e');
      rethrow;
    }
  }
}
