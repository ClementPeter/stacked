import 'package:obsv_flutter/app/app.locator.dart';
import 'package:obsv_flutter/app/app.logger.dart';
import 'package:obsv_flutter/app/app.router.dart';
import 'package:obsv_flutter/model/books.dart';
import 'package:obsv_flutter/services/api_service.dart';
import 'package:obsv_flutter/ui/views/home/home_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

// class HomeViewModel extends FutureViewModel with FormStateHelper {
//   final _apiService = locator<ApiService>();
//   final _navigationService = locator<NavigationService>();
//   final _logger = getLogger('ApiService');

//   @override
//   void onData(data) {
//     _logger.i('Data set: $data');
//     _logger.i('Data runTimeType: ${data.runtimeType}');
//     _logger.i('Data toString: ${data.toString()}');

//     super.onData(data);
//   }

//   Future<void> navigateToBookDetail({required BookJavCbk2 bookData}) async {
//     //correct approach
//     await _navigationService.navigateToDetailsView(bookDetails: bookData);

//     //Wrong Approach -> Passing the entire app Book data to details view
//     //instead of just the selected book data
//     //_navigationService.navigateToDetailsView(bookDetails: data);
//   }

//   @override
//   void onError(error) {
//     _logger.i('Error set: $error');
//     _logger.i('Error runTimeType: ${error.runtimeType}');
//     super.onError(error);
//   }

//   // @override
//   // Future futureToRun() {
//   //   return _apiService.getActivityfromAPI();
//   // }
//   @override
//   Future futureToRun() {
//     return _apiService.getBooks();
//   }
// }

///
///
///
///
///
///
class HomeViewModel extends FutureViewModel with FormStateHelper {
  final _apiService = locator<ApiService>();
  final _navigationService = locator<NavigationService>();
  final _logger = getLogger('ApiService');

  Future<void> fetchData() async {
    await initialise();
  }

  void bookSearchData() {
    _logger.i(searchTermValue);
  }

  Future<void> navigateToBookDetail({required Items bookData}) async {
    //correct approach
    await _navigationService.navigateToDetailsView(bookDetails: bookData);

    //Wrong Approach -> Passing the entire app Book data to details view
    //instead of just the selected book data
    //_navigationService.navigateToDetailsView(bookDetails: data);
  }

  @override
  void onData(data) {
    _logger.i('Data set: $data');
    _logger.i('Data runTimeType: ${data.runtimeType}');
    _logger.i('Data toString: ${data.toString()}');

    super.onData(data);
  }

  @override
  void onError(error) {
    _logger.i('Error set: $error');
    _logger.i('Error runTimeType: ${error.runtimeType}');
    super.onError(error);
  }

  @override
  Future futureToRun() {
    _logger.i("futureToRun called");
    return _apiService.getBooks(
        genreType: searchTermValue?.trim() ?? "computers");
  }
}
//
//
//
//
//
//
//
//

//Snippet 2 -> Handling FutureVM differently
// import 'package:obsv_flutter/app/app.bottomsheets.dart';
// import 'package:obsv_flutter/app/app.dialogs.dart';
// import 'package:obsv_flutter/app/app.locator.dart';
// import 'package:obsv_flutter/app/app.logger.dart';
// import 'package:obsv_flutter/model/booksQuickType.dart';
// import 'package:obsv_flutter/services/api_service.dart';
// import 'package:obsv_flutter/ui/common/app_strings.dart';
// import 'package:stacked/stacked.dart';
// import 'package:stacked_services/stacked_services.dart';

// class HomeViewModel extends FutureViewModel {
//   final _apiService = locator<ApiService>();

//   final _logger = getLogger('ApiService');

//   BookQuickType? bookData;

//   @override
//   void onData(data) {
//     _logger.i('Data set: $data');
//     _logger.i('Data set: ${data.runtimeType}');
//     _logger.i('Data set: ${data.toString()}');

//     super.onData(data);
//   }

//   @override
//   void onError(error) {
//     _logger.i('Error set: $error');
//     _logger.i('Error set: ${error.runtimeType}');
//     super.onError(error);
//   }

//   @override
//   Future futureToRun() {
//     return _apiService.getBooks();
//   }
// }

