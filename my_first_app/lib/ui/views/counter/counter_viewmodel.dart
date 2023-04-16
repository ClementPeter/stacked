import 'package:stacked/stacked.dart';

//View Model holds the functionanlity for the view
class CounterViewModel extends BaseViewModel {
  int _counter = 0;

  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void decrementCounter() {
    _counter--;
    rebuildUi();
  }
}
