import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isDark = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 246, 244),

        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: .start,
              crossAxisAlignment: .center,

              children: [
                Text(
                  "StayFinder",
                  style: TextStyle(
                    color: Color(0xFF99462A),
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Montserrat-VariableFont_wght',
                  ),
                ),
                SizedBox(
                  width: 350.w,
                  height: 216.h,
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(180),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/image1.png"),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Elena Rossi",
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Montserrat-VariableFont_wght',
                        ),
                      ),
                      Text(
                        "elena.rossi@example.com",
                        style: TextStyle(
                          color: Color(0xFF55433D),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Montserrat-VariableFont_wght',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.h),
                SizedBox(
                  //  color: Colors.white,
                  // decoration: BoxDecoration(color: Colors.white),
                  child: SizedBox(
                    width: 350.w,
                    height: 234.h,
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.manage_accounts_outlined,
                              color: Color(0xFFD97757),
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              "Account",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.h),
                        ListTile(
                          autofocus: true,
                          leading: Icon(Icons.event_available_outlined),
                          trailing: Icon(Icons.arrow_forward_ios),
                          title: Text('My Bookings'),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(8),
                            side: BorderSide(
                              color: Color(0xFFDBC1B9).withValues(alpha: 30),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        ListTile(
                          autofocus: true,
                          leading: Icon(Icons.payment),
                          trailing: Icon(Icons.arrow_forward_ios),
                          title: Text('Payments & Payouts'),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(8),
                            side: BorderSide(
                              color: Color(0xFFDBC1B9).withValues(alpha: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24.h),

                Container(
                  //  color: Colors.white,
                  // decoration: BoxDecoration(color: Colors.white),
                  child: SizedBox(
                    width: 350.w,
                    height: 234.h,
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.settings, color: Color(0xFFD97757)),
                            SizedBox(width: 5.w),
                            Text(
                              "Preferences",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.h),
                        ListTile(
                          autofocus: true,
                          leading: Icon(Icons.notifications_none_outlined),
                          trailing: Switch(
                            value: isDark,
                            onChanged: (value) {
                              isDark != value;
                              setState(() {});
                            },

                            autofocus: isDark,

                            activeThumbColor: Color(0xFFD97757),
                          ),
                          title: Text('Notifications'),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(8),
                            side: BorderSide(
                              color: Color(0xFFDBC1B9).withValues(alpha: 30),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        ListTile(
                          autofocus: true,
                          leading: Icon(Icons.color_lens_outlined),
                          trailing: Text('Light'),
                          title: Text('Theme'),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(8),
                            side: BorderSide(
                              color: Color(0xFFDBC1B9).withValues(alpha: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Container(
                  //  color: Colors.white,
                  // decoration: BoxDecoration(color: Colors.white),
                  child: SizedBox(
                    width: 350.w,
                    height: 160.h,
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.contact_support_outlined,
                              color: Color(0xFFD97757),
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              "Support",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.h),

                        ListTile(
                          autofocus: true,
                          leading: Icon(Icons.support_agent_outlined),
                          trailing: Icon(Icons.arrow_forward_ios),
                          title: Text('Help Center'),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(8),
                            side: BorderSide(
                              color: Color(0xFFDBC1B9).withValues(alpha: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: 350.w,
                  height: 54.h,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Color(0xFFD97757)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(12),
                      ),
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            width: 390.w,
                            height: 360.h,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: .center,
                              crossAxisAlignment: .center,
                              children: [
                                Text(
                                  "Logout",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text('''Are you sure you want to logout? You
will need to enter your credentials again
to access your account.'''),
                                SizedBox(height: 24.h),
                                SizedBox(
                                  height: 48,
                                  width: 284,
                                  //  padding: EdgeInsets.symmetric(vertical: 24.w),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFFD97757),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(12.r),
                                      ),
                                    ),
                                    child: Text(
                                      "LOGOut",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16.h),
                                SizedBox(
                                  height: 48,
                                  width: 284,
                                  //  padding: EdgeInsets.symmetric(vertical: 24.w),
                                  child: OutlinedButton(
                                    onPressed: () { Navigator.of(context).pop();  },
                                    style: OutlinedButton.styleFrom(
                                      disabledForegroundColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(12.r),
                                      ),
                                    ),
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      "LOGOUT",
                      style: TextStyle(color: Color(0xFF99462A)),
                    ),
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
