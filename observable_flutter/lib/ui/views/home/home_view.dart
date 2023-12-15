import 'package:flutter/material.dart';
import 'package:observable_flutter/models/book.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    // return Scaffold(
    //   body: SafeArea(
    //     child: Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 25.0),
    //       child: viewModel.isBusy
    //           ? const Center(
    //               child: CircularProgressIndicator(),
    //             )
    //           : ListView.builder(
    //               itemCount: viewModel.data.length ?? 10,
    //               itemBuilder: (context, index) {
    //                 final book = viewModel.data.length;
    //                 return Card(
    //                   child: ListTile(
    //                     title: Text(book?.title ?? '---'),
    //                   ),
    //                 );
    //               },
    //             ),
    //     ),
    //   ),
    // );
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: viewModel.isBusy
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: viewModel.data?.length,
                    itemBuilder: (context, index) {
                      //Get 'data' Index from FutureViewModel
                      final bookContent = viewModel.data;
                      return Card(
                        child: ListTile(
                          title: Text(bookContent?.title ?? '--'),
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
