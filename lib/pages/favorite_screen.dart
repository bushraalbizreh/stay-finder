import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Align(
                alignment: AlignmentGeometry.center,
                child: Text(
                  "StayFinder",
                  style: TextStyle(
                    color: Color(0xFF99462A),
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Montserrat-VariableFont_wght',
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  "Favorites",
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Montserrat-VariableFont_wght',
                  ),
                ),
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 348.w,
                      height: 408.h,
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xFFF2EBE3)),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                width: 348.w,
                                height: 261.h,
                                child: ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    12,
                                  ),
                                  child: Image.asset(
                                    "assets/images/image1.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: AlignmentGeometry.xy(1, 1),
                                  child: CircleAvatar(
                                    maxRadius: 20,
                                    backgroundColor: Color(0xFFFAF9F6),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite_outline,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                Row(
                                  crossAxisAlignment: .start,
                                  mainAxisAlignment: .spaceEvenly,
                                  spacing: 80,
                                  children: [
                                    Text(
                                      'Casa Verde Hotel',
                                      style: TextStyle(
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.w600,
                                        fontFamily:
                                            'Montserrat-VariableFont_wght',
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.star_rate, size: 14),
                                        Text(
                                          '4.9',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  "Amsterdam, Netherlands",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Montserrat-VariableFont_wght',
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                SizedBox(
                                  child: Divider(
                                    color: Color(0xFFDBC1B9),
                                    indent: 12,
                                    endIndent: 12,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text.rich(
                                  TextSpan(
                                    text: "\$145",
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily:
                                          'Montserrat-VariableFont_wght',
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '/ night',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily:
                                              'Montserrat-VariableFont_wght',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
