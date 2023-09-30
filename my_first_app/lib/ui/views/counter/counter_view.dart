import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:my_first_app/ui/common/app_colors.dart';

import 'counter_viewmodel.dart';

class CounterView extends StackedView<CounterViewModel> {
  const CounterView({Key? key}) : super(key: key);

  @override
  CounterViewModel viewModelBuilder(BuildContext context) => CounterViewModel();

  @override
  Widget builder(
    BuildContext context,
    CounterViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kcBlue,
        //automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            viewModel.navigateToHomeView();
          },
          icon: const Icon(Icons.arrow_back, color: kcVeryLightGrey),
        ),
        title: const Text(
          'Counter View',
          style: TextStyle(color: Colors.white),
          // style: appBarTextStyle,
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        elevation: 0.1,
      ),
      body: Center(
        child: Text(
          viewModel.counter.toString(),
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: viewModel.incrementCounter,
          ),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: viewModel.decrementCounter,
          ),
        ],
      ),
    );
  }
}
