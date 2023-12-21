import 'package:flutter/material.dart';
import 'package:observable_flutter/models/book.dart';
import 'package:observable_flutter/models/book_manual.dart';
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
                    itemCount: viewModel.data?.length ?? 10,
                    itemBuilder: (context, index) {
                      //Get 'data' Index from FutureViewModel
                      final bookContent = viewModel.data[index];
                      //final BookManual bookContent = viewModel.data;
                      return Card(
                        child: ListTile(
                          title: Text(
                            bookContent.items?[index].volumeInfo?.title ?? '--',
                          ),
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
