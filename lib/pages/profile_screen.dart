import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';
import '../core/providers/app_provider.dart';
import '../providers/profile_provider.dart';
import '../core/providers/theme_provider.dart';
import '../core/storage/secure_session_storage.dart';
import '../datasources/remote_data_source/profile_remote_data_source.dart';
import '../models/profile_model.dart';
import '../pages/login_screen.dart';
import '../repos/profile_repo.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileProvider(
        profileRepo: ProfileRepo(
          profileRemoteDataSource: ProfileRemoteDataSource(
            secureSessionStorage: SecureSessionStorage(
              secureStorage: FlutterSecureStorage(),
            ),
          ),
        ),
      )..getProfile(),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(centerTitle: true, title: Text("StayFinder")),

          body: Builder(
            builder: (context) {
              ProfileProvider profileProvider = context
                  .watch<ProfileProvider>();
              ProfileModel profile = profileProvider.profile;
              return profileProvider.isLoading
                  ? Center(
                      child: CircularProgressIndicator(
                        color: const Color.fromARGB(255, 206, 71, 53),
                      ),
                    )
                  : profileProvider.errorMsg.isNotEmpty
                  ? Center(child: Text(profileProvider.errorMsg))
                  : Padding(
                      padding: EdgeInsets.all(20.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: .start,
                          crossAxisAlignment: .center,

                          children: [
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
                                        image: NetworkImage(
                                          profile.profileImage!,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "${profile.firstName}${profile.lastName}",
                                    style: Theme.of(
                                      context,
                                    ).textTheme.titleMedium,
                                  ),
                                  Text(
                                    profile.email!,
                                    style: TextStyle(
                                      color: Color(0xFF55433D),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                      fontFamily:
                                          'Montserrat-VariableFont_wght',
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
                                          style: Theme.of(
                                            context,
                                          ).textTheme.titleMedium,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 24.h),
                                    ListTile(
                                      autofocus: true,
                                      leading: Icon(
                                        Icons.event_available_outlined,
                                      ),
                                      trailing: Icon(Icons.arrow_forward_ios),
                                      title: Text(
                                        'My Bookings',
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodySmall,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(8),
                                        side: BorderSide(
                                          color: Color(
                                            0xFFDBC1B9,
                                          ).withValues(alpha: 30),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 16.h),
                                    ListTile(
                                      autofocus: true,
                                      leading: Icon(Icons.payment),
                                      trailing: Icon(Icons.arrow_forward_ios),
                                      title: Text(
                                        'Payments & Payouts',
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodySmall,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(8),
                                        side: BorderSide(
                                          color: Color(
                                            0xFFDBC1B9,
                                          ).withValues(alpha: 30),
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
                                        Icon(
                                          Icons.settings,
                                          color: Color(0xFFD97757),
                                        ),
                                        SizedBox(width: 5.w),
                                        Text(
                                          "Preferences",
                                          style: Theme.of(
                                            context,
                                          ).textTheme.titleMedium,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 24.h),
                                    ListTile(
                                      autofocus: true,
                                      leading: Icon(
                                        Icons.notifications_none_outlined,
                                      ),
                                      trailing: Switch(
                                        value: true,
                                        onChanged: (value) {},

                                        //   autofocus: isDark,
                                        activeThumbColor: Color(0xFFD97757),
                                      ),

                                      title: Text(
                                        'Notifications',
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodySmall,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(8),
                                        side: BorderSide(
                                          color: Color(
                                            0xFFDBC1B9,
                                          ).withValues(alpha: 30),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 16.h),
                                    ListTile(
                                      autofocus: true,
                                      leading: Icon(Icons.color_lens_outlined),
                                      trailing:
                                          //Text('Light'),
                                          Consumer<ThemeProvider>(
                                            builder:
                                                (
                                                  context,
                                                  themeProvider,
                                                  _,
                                                ) => Switch(
                                                  value:
                                                      themeProvider.isDarkTheme,

                                                  onChanged: (value) {
                                                    context
                                                        .read<ThemeProvider>()
                                                        .toggleTheme();
                                                  },

                                                  activeThumbColor: Color(
                                                    0xFFD97757,
                                                  ),
                                                ),
                                          ),
                                      title: Text(
                                        'Dark Theme',
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodySmall,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(8),
                                        side: BorderSide(
                                          color: Color(
                                            0xFFDBC1B9,
                                          ).withValues(alpha: 30),
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
                                          style: Theme.of(
                                            context,
                                          ).textTheme.titleMedium,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 24.h),

                                    ListTile(
                                      autofocus: true,
                                      leading: Icon(
                                        Icons.support_agent_outlined,
                                      ),
                                      trailing: Icon(Icons.arrow_forward_ios),
                                      title: Text(
                                        'Help Center',
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodySmall,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(8),
                                        side: BorderSide(
                                          color: Color(
                                            0xFFDBC1B9,
                                          ).withValues(alpha: 30),
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
                                    borderRadius: BorderRadiusGeometry.circular(
                                      12,
                                    ),
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
                                            Text(
                                              '''Are you sure you want to logout? You
                                                 will need to enter your credentials again
                                                  to access your account.''',
                                            ),
                                            SizedBox(height: 24.h),
                                            SizedBox(
                                              height: 48,
                                              width: 284,
                                              //  padding: EdgeInsets.symmetric(vertical: 24.w),
                                              child: Consumer<AppProvider>(
                                                builder:
                                                    (
                                                      context,
                                                      appProvider,
                                                      _,
                                                    ) => ElevatedButton(
                                                      onPressed: () async {
                                                        final success =
                                                            await context
                                                                .read<
                                                                  AppProvider
                                                                >()
                                                                .authRepo
                                                                .logout();

                                      

                                                        if (success) {

                                                          Navigator.pushReplacement(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  LoginScreen(),
                                                            ),
                                                          );
                                                        }
                                                      },

                                                      style: ElevatedButton.styleFrom(
                                                        backgroundColor: Color(
                                                          0xFFD97757,
                                                        ),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadiusGeometry.circular(
                                                                12.r,
                                                              ),
                                                        ),
                                                      ),
                                                      child: Text(
                                                        "LOGOut",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                              ),
                                            ),
                                            SizedBox(height: 16.h),
                                            SizedBox(
                                              height: 48,
                                              width: 284,
                                              //  padding: EdgeInsets.symmetric(vertical: 24.w),
                                              child: OutlinedButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                style: OutlinedButton.styleFrom(
                                                  disabledForegroundColor:
                                                      Colors.black,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadiusGeometry.circular(
                                                          12.r,
                                                        ),
                                                  ),
                                                ),
                                                child: Text(
                                                  "Cancel",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
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
                    );
            },
          ),
        ),
      ),
    );
  }
}
