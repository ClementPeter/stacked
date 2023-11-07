import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_recipe_app/ui/common/app_colors.dart';
import 'package:my_recipe_app/ui/common/app_images.dart';
import 'package:stacked/stacked.dart';

import 'splash_viewmodel.dart';

class SplashView extends StackedView<SplashViewModel> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SplashViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      //Fix with theme extension and Pallete
      backgroundColor: AppColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset(AppImages.blobOne),
          ),
          Image.asset(AppImages.logo),
          // ClipOval(
          //   child: Image.asset(AppImages.splashImage),
          // )
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: CurvedShapeClipper(),
              child: Image.asset(AppImages.splashImage),
            ),
          )
        ],
      ),
    );
  }

  @override
  SplashViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SplashViewModel();
}

class CurvedShapeClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height / 3);
    path.quadraticBezierTo(size.width / 2, 0, size.width, size.height / 3);
    path.close();
    path.moveTo(0, size.height / 3);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height / 3);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
