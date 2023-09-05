import 'package:my_first_app/ui/views/home/home_view.dart';
import 'package:stacked/stacked.dart';
import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    //await Future.delayed(const Duration(seconds: 3));

    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic

    // ReplaceWith vs NavigateTo
    // Replace : removes the previous screen
    // Navigates : keeps the previous screen

    //_navigationService.replaceWithCounterView();
    // _navigationService.navigateToCounterView();

    _navigationService.replaceWithHomeView();
    //_navigationService.navigateToHomeView();

    //trying out custom routing - not working for now
    //_navigationService.replaceWith(HomeView.homeRoute);
  }

  //Using onViewModelReady CALLBACK
  Future runTimedStartupLogic() async {
    await Future.delayed(const Duration(seconds: 5));
    // This is where you can make decisions on where your app should navigate when
    _navigationService.navigateToHomeView();
  }

  // //Using onViewModelReady CALLBACK
  // void runTimedStartupLogic() {
  //   // This is where you can make decisions on where your app should navigate when
  //   _navigationService.navigateToHomeView();
  // }

  void runManualStartupLogic() {
    _navigationService.navigateToHomeView();
  }
}
