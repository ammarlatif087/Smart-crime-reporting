import 'dart:async';

import '../../app/index.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late Timer _timer;

  void _splashScreenDelay() {
    _timer = Timer(const Duration(seconds: 3), _goNext);
  }

  void _goNext() {
    Navigator.pushReplacementNamed(context, Routes.loginRoute);
  }

  @override
  void initState() {
    _splashScreenDelay();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: ColorManager.transparent,
        //   systemOverlayStyle: SystemUiOverlayStyle(
        //     statusBarColor: ColorManager.white,
        //     statusBarIconBrightness: Brightness.dark,
        //     systemNavigationBarColor: ColorManager.white,
        //   ),
        // ),
        //  backgroundColor: ColorManager.primary,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.logo,
                height: 150.h,
                width: 150.w,
              ),
              30.spaceY,
              Utils.popinBoldText(
                'Crime Reporting ',
                fontSize: 24.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
