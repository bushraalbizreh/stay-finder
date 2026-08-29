import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  width: 390.w,
                  height: 84.h,
                  child: Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: .spaceEvenly,
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            "Good morning",
                            style: TextStyle(
                              color: Color(0xFF55433D),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Montserrat-VariableFont_wght',
                            ),
                          ),
                          Text(
                            "Alex",
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Montserrat-VariableFont_wght',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20.w),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xFFEFEEEB),
                            child: Icon(
                              Icons.notifications,
                              color: Color(0xFF55433D),
                            ),
                          ),
                          SizedBox(width: 10),
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/images/image1.png",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32.h),
                Container(
                  width: 350.w,
                  height: 157.h,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: Column(
                      mainAxisAlignment: .spaceEvenly,
                      crossAxisAlignment: .center,
                      children: [
                        Text(
                          "Where do you want to stay?",
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Montserrat-VariableFont_wght',
                          ),
                        ),

                        TextFormField(
                          obscureText: true,

                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFFAF9F6),
                            hintText: "Search destinations, hotels...",
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xFF5F5E5E),
                            ),

                            hintStyle: TextStyle(color: Color(0xFFC8C6C6)),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFDBC1B9)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFDBC1B9)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFDBC1B9)),
                            ),

                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFDBC1B9)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 48.h),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "Popular Destinations",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat-VariableFont_wght',
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Color(0xFF99462A),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat-VariableFont_wght',
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  width: 390.w,
                  height: 360.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.all(2),
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 230.w,
                          height: 360.h,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/image1.png"),
                            ),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Column(
                            crossAxisAlignment: .start,
                            mainAxisAlignment: .end,
                            children: [
                              Text(
                                "Paris",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Montserrat-VariableFont_wght',
                                ),
                              ),
                              Text(
                                "France",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Montserrat-VariableFont_wght',
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 48.h),

                Row(
                  children: [
                    Text(
                      "Special Offers",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat-VariableFont_wght',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                Container(
                  height: 548.h,
                  width: 349.w,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xFFDBC1B9)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 347.w,
                        height: 256.h,
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(12),
                          child: Image.asset(
                            "assets/images/image1.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: .start,

                        children: [
                          SizedBox(
                            height: 30.h,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(
                                  255,
                                  247,
                                  190,
                                  171,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    999.r,
                                  ),
                                ),
                              ),
                              child: Text(
                                "Summer Escape",
                                style: TextStyle(color: Color(0xFFD97757)),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            'Save up to 25%',
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat-VariableFont_wght',
                            ),
                          ),
                          Text(
                            ''' Book your dream summer vacation
now and enjoy exclusive rates on
premium villas and resorts.''',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Montserrat-VariableFont_wght',
                            ),
                          ),
                          SizedBox(height: 32.h),
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Color(0xFFD97757),
                              side: BorderSide(color: Color(0xFFD97757)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(
                                  12.r,
                                ),
                              ),
                            ),
                            child: Text(
                              "Claim Offer",
                              //  style: TextStyle(color: Color(0xFFD97757)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 48.h),

                Container(
                  height: 220.h,
                  width: 350.w,
                  padding: EdgeInsets.all(20.dg),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xFFDBC1B9)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: .start,

                        children: [
                          Icon(
                            Icons.flight_takeoff,
                            color: Color(0xFFD97757),
                            size: 30.dm,
                          ),

                          SizedBox(height: 5.h),
                          Text(
                            "Weekend Getaways",
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat-VariableFont_wght',
                            ),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            '''Quick escapes curated for ultimate
relaxation. ''',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Montserrat-VariableFont_wght',
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Explore',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Montserrat-VariableFont_wght',
                                ),
                              ),

                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward, size: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 24.h),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "Recommended Stays",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat-VariableFont_wght',
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Color(0xFF99462A),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat-VariableFont_wght',
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 24.h),
                SizedBox(
                  width: 390.w,
                  height: 413.h,
                  child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CustomCard(
                        height: 413.h,
                        width: 264.w,
                        image: "assets/images/image1.png",
                        favoriteIcon: Padding(
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
                        content: Column(
                          crossAxisAlignment: .start,
                          mainAxisAlignment: .start,
                          children: [
                            Row(
                              mainAxisAlignment: .spaceEvenly,
                              children: [
                                Text(
                                  'Casa Verde Hotel',
                                  style: TextStyle(
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Montserrat-VariableFont_wght',
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEFEEEB),
                                    borderRadius: BorderRadius.circular(90),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star_rate,
                                        size: 14,
                                        color: Color(0xFFD97757),
                                      ),
                                      Text(
                                        '4.9',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
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
                          ],
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(height: 28.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
