// ///W
import 'package:flutter/material.dart';
import 'package:obsv_flutter/app/app.logger.dart';
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
    final logger = getLogger('HomeView');
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Builder(
            builder: (context) {
              //Loading / Data not yet ready
              if (!viewModel.dataReady || viewModel.isBusy) {
                return const Center(child: CircularProgressIndicator());
              }
              //Error state
              if (viewModel.hasError) {
                return Center(child: Text(viewModel.modelMessage!));
              }
              // Empty
              if (viewModel.data == null || viewModel.data!.isEmpty) {
                return const Center(
                  child: Text('No Book info found'),
                );
              }

              return ListView.builder(
                itemCount: viewModel.data?.length,
                itemBuilder: (context, index) {
                  final bookData = viewModel.data?[index];
                  logger.i('book Dataa:::${bookData.volumeInfo.title}');
                  return Card(
                    child: ListTile(
                      onTap: () {},
                      title: Text('${bookData.volumeInfo.title}'),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}

//
//
//
//
//
//
//
//
///Works with Instance 3 -> works with Demo Instance Experiment 3 in ApiService

// import 'package:flutter/material.dart';
// import 'package:obsv_flutter/app/app.logger.dart';
// import 'package:obsv_flutter/model/books.dart';
// import 'package:stacked/stacked.dart';
// import 'package:obsv_flutter/ui/common/app_colors.dart';
// import 'package:obsv_flutter/ui/common/ui_helpers.dart';

// import 'home_viewmodel.dart';

// class HomeView extends StackedView<HomeViewModel> {
//   const HomeView({Key? key}) : super(key: key);

//   @override
//   Widget builder(
//     BuildContext context,
//     HomeViewModel viewModel,
//     Widget? child,
//   ) {
//     final logger = getLogger('HomeView');
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(15),
//           child: Builder(
//             builder: (context) {
//               //Loading / Data not yet ready
//               if (!viewModel.dataReady || viewModel.isBusy) {
//                 return const Center(child: CircularProgressIndicator());
//               }
//               //Error state
//               if (viewModel.hasError) {
//                 return Center(child: Text(viewModel.modelMessage!));
//               }
//               // Empty
//               if (viewModel.data == null || viewModel.data!.isEmpty) {
//                 return const Center(
//                   child: Text('No Book info found'),
//                 );
//               }

//               return ListView.builder(
//                 itemCount: viewModel.data?.length,
//                 itemBuilder: (context, index) {
//                   final bookData = viewModel.data[index];
//                   logger.i('book Dataa:::$bookData');
//                   return Card(
//                       child: ListTile(
//                           onTap: () {},
//                           title: Text('${bookData.volumeInfo.title}')));
//                 },
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   HomeViewModel viewModelBuilder(
//     BuildContext context,
//   ) =>
//       HomeViewModel();
// }
