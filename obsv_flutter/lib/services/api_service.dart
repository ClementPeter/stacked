import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:obsv_flutter/app/app.locator.dart';
import 'package:obsv_flutter/app/app.logger.dart';
//import 'package:obsv_flutter/model/books.dart';
import 'package:obsv_flutter/model/books2.dart';
import 'package:stacked_services/stacked_services.dart';

class ApiService {
  final _dialogService = locator<DialogService>();

  static const String baseUrl = 'www.googleapis.com';
  static const String books = '/books/v1/volumes';

  final _logger = getLogger('ApiService');

  //main working guy
  // Future getBooks({final genreType = 'computers'}) async {
  //   try {
  //     final url = Uri.https(baseUrl, books, {'q': 'subject: $genreType'});
  //     final response = await http.get(url);
  //     //_logger.i('responseeee::: ${response.body}');

  //     final jsonResponse = json.decode(response.body);

  //     final Iterable items = jsonResponse['items'];
  //     _logger.i('itemss::: $items');

  //     final result = items.map((item) => Books.fromJson(item)).toList();
  //     _logger.i('resultsss::: ${result.runtimeType}');

  //     return result;
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

  // //Demo Experiment 1 -> works
  // Future getBooks({final genreType = 'computers'}) async {
  //   try {
  //     final url = Uri.https(baseUrl, books, {'q': 'subject:$genreType'});
  //     final jsonResponse = await http.get(url);
  //     //_logger.i('responseeee::: ${response.body}');

  //     Map<String, dynamic> body = jsonDecode(jsonResponse.body);
  //     //_logger.i('bodyyy::: $body');

  //     Iterable items = body['items'];
  //     _logger.i('itemsss::: $items');

  //     //Using books.dart Model
  //     return items.map((item) => Items.fromJson(item)).toList();
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
  //     final url = Uri.https(baseUrl, books, {'q': 'subject:$genreType'});
  //     final response = await http.get(url);
  //     //_logger.i('responseeee::: ${response.body}');

  //     Map<String, dynamic> jsonResponse = json.decode(response.body);
  //     //_logger.i('JSONresponseeee::: ${jsonResponse.values}');

  //     if (jsonResponse.containsKey('items')) {
  //       final Iterable items = jsonResponse['items'];
  //       //_logger.i('itemss::: $items');

  //       final result = items.map((item) => Items.fromJson(item)).toList();
  //       //_logger.i('resultss::: ${result.first}');

  //       return result;
  //     } else {
  //       // Handle the case where "items" key is not present in the response
  //       _logger.i('No "items" key found in the response.');
  //       return [];
  //     }
  //   } on SocketException {
  //     await _dialogService.showDialog(
  //       title: "Network Error",
  //       description: 'No Internet Connection',
  //     );
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
  ///Demo Instance Experiment 3 -> Working Guy -> Jumping one step off the model
  Future getBooks({final genreType = 'computers'}) async {
    try {
      final url = Uri.https(baseUrl, books, {'q': 'subject:$genreType'});
      final response = await http.get(url);
      //_logger.i('responseeee::: ${response.body}');

      final Map<String, dynamic> jsonResponse = json.decode(response.body);

      if (jsonResponse.containsKey("items")) {
        final List<dynamic> items = jsonResponse["items"];
        //_logger.i('itemss::: $items');

        //Using books2.dart Model
        final result = items.map((item) => Items.fromJson(item)).toList();
        _logger.i('resultsss::: ${result.runtimeType}');

        return result;
      } else {
        // Handle the case where "items" key is not present in the response
        _logger.i('No "items" key found in the response.');
        return [];
      }
    } on SocketException {
      _dialogService.showDialog(
        title: "Network Error",
        description: 'No Internet Connection',
      );
    } catch (e) {
      _logger.i('exception::: $e');
      rethrow;
    }
  }
}

//OBSERVATION QuickType.io model is shitty when generating with stacked ...use https://javiercbk.github.io/json_to_dart/
