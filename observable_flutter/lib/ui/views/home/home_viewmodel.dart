import 'package:observable_flutter/app/app.bottomsheets.dart';
import 'package:observable_flutter/app/app.dialogs.dart';
import 'package:observable_flutter/app/app.locator.dart';
import 'package:observable_flutter/app/app.logger.dart';
import 'package:observable_flutter/services/api_service.dart';
import 'package:observable_flutter/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends FutureViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _apiService = locator<ApiService>();
  final logger = getLogger('HomeViewModel');

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  @override
  void onData(data) {
    logger.i('Data set in FutureViewModel : $data');
    super.onData(data);
  }

  @override
  void onError(error) {
    logger.e('Error set in FutureViewModel : $error');
    if (error == null) {
      return;
    }
    super.onError(error);
  }

  @override
  Future futureToRun() => _apiService.getBooks();
}
