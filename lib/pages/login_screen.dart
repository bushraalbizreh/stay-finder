import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:stayfinder/models/login_model.dart';
import 'package:stayfinder/pages/home_screen.dart';
import 'package:stayfinder/widgets/navigation_buttom_bar_widget.dart';
import '../core/providers/app_provider.dart';
import '../widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _obscurePassword = true;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
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
                    height: 590.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(30.h),
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
                                validator: (value) {
                                  if (!RegExp(r'^\S+@\S+$').hasMatch(value!)) {
                                    return 'Email address is not valid';
                                  }
                                  if (value.isEmpty) {
                                    return 'Please enter email';
                                  } else {
                                    return null;
                                  }
                                },
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
                                obscureText: _obscurePassword,
                                hintText: "••••••••",
                                prefixIcon: Icons.lock_outline,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter password';
                                  } else {
                                    return null;
                                  }
                                },
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscurePassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscurePassword = !_obscurePassword;
                                    });
                                  },
                                ),
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

                              child: Builder(
                                builder: (context) {
                                  AppProvider appProvider = context
                                      .watch<AppProvider>();
                                  return appProvider.isLoading
                                      ? Center(
                                          child: CircularProgressIndicator(),
                                        )
                                      : appProvider.errorMessage!.isNotEmpty
                                      ? Center(
                                          child: Text(
                                            appProvider.errorMessage.toString(),
                                          ),
                                        )
                                      : ElevatedButton(
                                          onPressed: () async {
                                            if (formKey.currentState!
                                                .validate()) {
                                              final success = await context
                                                  .read<AppProvider>()
                                                  .authRepo
                                                  .login(
                                                    loginModel: LoginModel(
                                                      email: email.text,
                                                      password: password.text,
                                                    ),
                                                  );

                                              if (success ||
                                                  appProvider.isLogged) {
                                                print(
                                                  "islogged  ${appProvider.isLogged}",
                                                );
                                                Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        BottomNavigationBarWidget(),
                                                  ),
                                                );
                                              }
                                            }
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFFD97757),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadiusGeometry.circular(
                                                    12.r,
                                                  ),
                                            ),
                                          ),
                                          child: Text(
                                            "LOGIN",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        );
                                },
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
                                  "OR",
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
                                  borderRadius: BorderRadiusGeometry.circular(
                                    12,
                                  ),
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
      ),
    );
  }
}


/*
Consumer<AppProvider>(
                                builder: (context, appProvider, _) =>
                                    ElevatedButton(
                                      onPressed: () async {
                                        await appProvider.login(
                                          loginModel: LoginModel(
                                            email: email.text,
                                            password: password.text,
                                          ),
                                        );
                                        if (appProvider.isLoading) {
                                          CircularProgressIndicator(
                                            color: Colors.orange.shade500,
                                          );
                                        } else if (appProvider.errorMessage !=
                                            null) {
                                          Text("${appProvider.errorMessage}");
                                        } else {
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  BottomNavigationBarWidget(),
                                            ),
                                          );
                                        }
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFFD97757),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusGeometry.circular(
                                                12.r,
                                              ),
                                        ),
                                      ),
                                      child: Text(
                                        "LOGIN",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                              ), */