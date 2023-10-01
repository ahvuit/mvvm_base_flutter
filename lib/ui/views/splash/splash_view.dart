import 'package:flutter/material.dart';
import 'package:mvvm_base/ui/route/route_paths.dart';
import 'package:mvvm_base/ui/shared/assets_manager.dart';
import 'package:mvvm_base/ui/shared/color_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashState();
}

class _SplashState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, RoutePaths.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SizedBox(
        width: mediaQueryData.size.width,
        height: mediaQueryData.size.height,
        child: const Image(image: AssetImage(ImageAssets.splash), fit: BoxFit.cover),
      )
    );
  }
}
