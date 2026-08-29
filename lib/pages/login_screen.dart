import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 246, 244),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: .center,
              children: [
                SizedBox(height: 80.h),
                Text(
                  "StayFinder",
                  style: TextStyle(
                    color: Color(0xFF99462A),
                    fontSize: 32.spMin,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Welcome back",
                  style: TextStyle(
                    fontSize: 18.spMin,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 22.h),
                Container(
                  width: 350.w,
                  height: 570.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(40.h),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: .start,
                          mainAxisAlignment: .start,
                          children: [
                            Text("Email"),
                            SizedBox(height: 8.h),
                            CustomTextField(
                              controller: email,
                              keyboardType: TextInputType.emailAddress,
                              hintText: "your@email.com",
                              obscureText: false,
                              prefixIcon: Icons.email_outlined,
                            ),
                          ],
                        ),
                        SizedBox(height: 24.h),
                        Column(
                          crossAxisAlignment: .start,
                          mainAxisAlignment: .start,
                          children: [
                            Text("Password"),
                            SizedBox(height: 8.h),
                            CustomTextField(
                              controller: password,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              hintText: "••••••••",
                              prefixIcon: Icons.lock_outline,
                              suffixIcon: Icons.visibility_outlined,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: .end,
                          children: [
                            Text(
                              "Forgot password?",
                              style: TextStyle(color: Color(0xFF99462A)),
                            ),
                          ],
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 24.h),
                          child: SizedBox(
                            height: 48,
                            width: 284,
                            //  padding: EdgeInsets.symmetric(vertical: 24.w),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFD97757),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    12.r,
                                  ),
                                ),
                              ),
                              child: Text(
                                "LOGIN",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 12.h),
                        SizedBox(
                          width: 284.w,
                          height: 32.h,
                          child: Row(
                            mainAxisAlignment: .center,
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Color(0xFFDBC1B9),
                                  endIndent: 16,
                                ),
                              ),
                              Text(
                                "oR",
                                style: TextStyle(color: Color(0xFF5F5E5E)),
                              ),
                              Expanded(
                                child: Divider(
                                  color: Color(0xFFDBC1B9),
                                  indent: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24.h),

                        SizedBox(
                          width: 284.w,
                          height: 54.h,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Color(0xFFD97757)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(12),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image.asset("assets/images/google.png"),
                                SizedBox(width: 4.w),
                                Text(
                                  "CONTINUE WITH GOOGLE",
                                  style: TextStyle(color: Color(0xFF99462A)),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 12.h),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text.rich(
                  TextSpan(
                    text: "Don't have an account?",
                    children: [
                      TextSpan(
                        text: "Create account",
                        style: TextStyle(color: Color(0xFF99462A)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
