import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stayfinder/core/constants/on_boarding_data.dart';
import 'package:stayfinder/widgets/navigation_buttom_bar_widget.dart';
import '../models/onboarding_model.dart';
import 'home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    OnboardingModel page;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 0),
        left: false,
        right: false,
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: onboardingPages.length,
                itemBuilder: (context, index) {
                  page = onboardingPages[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 1),
                        width: 390.w,
                        height: 610.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(page.image),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 24.h,
                            horizontal: 15.w,
                          ),
                          child: Row(
                            crossAxisAlignment: .start,
                            mainAxisAlignment: .spaceEvenly,
                            spacing: 120.w,
                            children: [
                              Text(
                                "StayFinder",
                                style: TextStyle(
                                  color: Color(0xFF99462A),
                                  fontSize: 32.spMin,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: _currentPage < onboardingPages.length - 1
                                    ? TextButton(
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  NavigationBottomBarWidget(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          "Skip",
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            color: Color(0xFF55433D),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      )
                                    : SizedBox(height: 40.h),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 22.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text(
                              page.title,
                              style: TextStyle(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),

                            Text(
                              page.description,
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 43.h),

                            Row(
                              children: [
                                SmoothPageIndicator(
                                  controller: _pageController,
                                  count: onboardingPages.length,
                                  effect: ExpandingDotsEffect(
                                    activeDotColor: Color(0xFFD97757),
                                    dotHeight: 8.h,
                                    dotWidth: 8.w,
                                  ),
                                ),
                                SizedBox(width: 110.w),
                                Flexible(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (_currentPage <
                                          onboardingPages.length - 1) {
                                        _pageController.nextPage(
                                          duration: Duration(seconds: 1),
                                          curve: Curves.easeInOut,
                                        );
                                      } else {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                NavigationBottomBarWidget(),
                                          ),
                                        );
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFFD97757),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(99),
                                      ),
                                      elevation: 0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: .center,
                                      children: [
                                        Text(
                                          _currentPage ==
                                                  onboardingPages.length - 1
                                              ? "Get Started"
                                              : "Next",
                                          style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 4.w),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
