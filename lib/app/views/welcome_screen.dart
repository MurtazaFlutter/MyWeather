import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:weather_app/app/utils/constans.dart';
import 'package:weather_app/app/utils/strings.dart';
import 'package:weather_app/app/utils/theme.dart';
import '../components/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(Constants.welcome, fit: BoxFit.fill),
          ),
          Positioned(
            bottom: 20.h,
            left: 20.w,
            right: 20.w,
            child: Container(
              height: 360.h,
              padding: EdgeInsets.fromLTRB(20.w, 12.h, 20.w, 27.h),
              decoration: BoxDecoration(
                color: LightThemeColors.cardColor,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Column(
                children: [
                  // AnimatedSmoothIndicator(
                  //   activeIndex: 1,
                  //   count: 3,
                  //   effect: WormEffect(
                  //     activeDotColor: theme.primaryColor,
                  //     dotColor: theme.colorScheme.secondary,
                  //     dotWidth: 10.w,
                  //     dotHeight: 10.h,
                  //   ),
                  // ),
                  24.verticalSpace,
                  const Text(
                    Strings.welcomScreenTitle,
                    style: TextStyle(color: LightThemeColors.displayTextColor),
                    textAlign: TextAlign.center,
                  ).animate().fade().slideY(
                        duration: 300.ms,
                        begin: -1,
                        curve: Curves.easeInSine,
                      ),
                  16.verticalSpace,
                  const Text(
                    Strings.welcomScreenSubtitle,
                    // style: theme.textTheme.bodyMedium?.copyWith(height: 1),
                    textAlign: TextAlign.center,
                  ).animate(delay: 300.ms).fade().slideY(
                        duration: 300.ms,
                        begin: -1,
                        curve: Curves.easeInSine,
                      ),
                  const Spacer(),
                  CustomButton(
                    onPressed: () {},
                    text: "Get Started!",
                    fontSize: 18.sp,
                    //  backgroundColor: theme.primaryColor,
                    foregroundColor: LightThemeColors.primaryColor,
                    width: 265.w,
                    radius: 30.r,
                    verticalPadding: 20.h,
                  ).animate().fade().slideY(
                        duration: 300.ms,
                        begin: 1,
                        curve: Curves.easeInSine,
                      ),
                  20.verticalSpace,
                  const Text.rich(
                    TextSpan(children: [
                      TextSpan(
                        text: Strings.alreadyHaveAnAccount,
                        // style: theme.textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: Strings.login,
                        // style: theme.textTheme.bodyMedium?.copyWith(
                        //   color: theme.primaryColor,
                        // ),
                      ),
                    ]),
                  ).animate(delay: 300.ms).fade().slideY(
                        duration: 300.ms,
                        begin: 1,
                        curve: Curves.easeInSine,
                      ),
                ],
              ),
            ).animate().fade(duration: 300.ms),
          ),
        ],
      ),
    );
  }
}
