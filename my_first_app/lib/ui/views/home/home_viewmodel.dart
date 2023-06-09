import 'package:my_first_app/app/app.bottomsheets.dart';
import 'package:my_first_app/app/app.dialogs.dart';
import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/app/app.router.dart';
import 'package:my_first_app/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();

  String get counterLabel => 'Go to Counter view';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  //Show dialog
  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  //Navigate to counter view
  void navigateToCounterView() {
    _navigationService.navigateToCounterView();
  }

  void navigateToStartupView() {
    _navigationService.navigateToStartupView();
  }

  //Show bottom sheet
  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
      showIconInMainButton: true,
      takesInput: true,
      showIconInSecondaryButton: true,
      isScrollControlled: true,
    );
  }
}
