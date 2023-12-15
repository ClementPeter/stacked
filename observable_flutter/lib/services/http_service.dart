import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:observable_flutter/app/app.logger.dart';
import 'package:observable_flutter/exceptions/book_exception.dart';
//HTTP SERVICE abstraction for various network request

class HttpService {
  final _logger = getLogger('ApiService');
  static const String baseUrl = 'www.googleapis.com';

  Future get({required path, String? genreType}) async {
    try {
      final url = Uri.https(baseUrl, path, {'q': 'subject $genreType'});
      //final response =
      final Response response = await http.get(url);
      return response.body;
    } on SocketException catch (e) {
      BookException(message: e.message);
    } catch (e) {
      _logger.e(e);
    }
  }
}
