import 'dart:convert';

import 'package:observable_flutter/app/app.locator.dart';
import 'package:observable_flutter/app/app.logger.dart';
import 'package:observable_flutter/models/book.dart';
import 'package:observable_flutter/services/http_service.dart';

class BookApiService {
  final _httpService = locator<HttpService>();
  final _logger = getLogger('ApiService');

  Future getBooksfromAPI({required path, String? genreType}) async {
    try {
      final bookResponse = await _httpService.get(
          path: '/books/v1/volumes', genreType: 'computers');

      final Iterable items = jsonDecode(bookResponse.body)['item'];
      return items.map((item) => Book.fromJson(item['volumeInfo']));
    } catch (e) {
      _logger.e(e);
    }
  }
}
