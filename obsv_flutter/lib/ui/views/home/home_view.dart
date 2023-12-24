import 'package:flutter/material.dart';
import 'package:obsv_flutter/app/app.logger.dart';
import 'package:obsv_flutter/model/books.dart';
import 'package:stacked/stacked.dart';
import 'package:obsv_flutter/ui/common/app_colors.dart';
import 'package:obsv_flutter/ui/common/ui_helpers.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    final logger = getLogger('HomeView');
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(15),
            child: Builder(
              builder: (context) {
                //Error state
                if (viewModel.hasError) {
                  return Center(child: Text(viewModel.modelMessage!));
                }
                // Empty
                if (viewModel.data == null || viewModel.data!.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Lottie.asset(
                          AppImages.noDishFound,
                          width: 200,
                          height: 200,
                        ),
                        Text(S.current.no_dish_available),
                      ],
                    ),
                  );
                }

                //Empty
                if (viewModel.data == null || viewModel.data!.isEmpty) {}

                return Expanded(
                  child: ListView.builder(
                    itemCount: viewModel.data.length ?? 10,
                    itemBuilder: (context, index) {
                      final bookData = viewModel.data.item[index].volumeInfo;
                      Text('${bookData.title}');
                      return null;
                    },
                  ),
                );
              },
            )),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
