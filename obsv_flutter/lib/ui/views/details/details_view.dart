import 'package:flutter/material.dart';
import 'package:obsv_flutter/model/books2.dart';
import 'package:stacked/stacked.dart';
import 'details_viewmodel.dart';

class DetailsView extends StackedView<DetailsViewModel> {
  final BookJavCbk2 bookDetails;
  const DetailsView(this.bookDetails, {Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  DetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DetailsViewModel();
}
