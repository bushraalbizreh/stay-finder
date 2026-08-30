import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/navigation_buttom_bar_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 390.w,
                    height: 442.h,
                    child: Image.asset(
                      "assets/images/image1.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: AlignmentGeometry.xy(1, 1),
                      child: Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      BottomNavigationBarWidget(),
                                ),
                              );
                            },
                            icon: Icon(Icons.arrow_back, color: Colors.black),
                          ),

                          Row(
                            spacing: 10,
                            children: [
                              CircleAvatar(
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

                              CircleAvatar(
                                maxRadius: 20,
                                backgroundColor: Color(0xFFFAF9F6),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.share_outlined,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 64.h),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  mainAxisAlignment: .start,
                  crossAxisAlignment: .start,
                  children: [
                    Row(
                      children: [
                        FilledButton(
                          onPressed: () {},
                          style: FilledButton.styleFrom(
                            backgroundColor: Color(
                              0xFFE5DFD7,
                            ).withValues(alpha: 30),
                            foregroundColor: Colors.black,
                            side: BorderSide(color: Color(0xFFDBC1B9)),
                          ),
                          child: Text(
                            "Hotel",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Icon(Icons.location_on_outlined),
                        Text(
                          "Amsterdam",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Text(
                      'Casa Verde Hotel',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat-VariableFont_wght',
                      ),
                    ),
                    Row(
                      spacing: 4,
                      children: [
                        Icon(Icons.star_rate, color: Color(0xFFD97757)),
                        Text(
                          "4.8",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "(124 reviews)",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF55433D),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32.h),
                    SizedBox(
                      width: 390.w,
                      child: Divider(color: Color(0xFFDBC1B9)),
                    ),

                    SizedBox(height: 48.h),
                    Text(
                      'About this property',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat-VariableFont_wght',
                      ),
                    ),
                    Text(
                      '''Nestled in the heart of Amsterdam's historic
canal district, Casa Verde Hotel offers a
tranquil escape blending modern minimalist
design with lush, organic elements.
Experience unparalleled serenity with our
sunlit courtyards, carefully curated bespoke
furnishings, and dedicated concierge service
designed to make your stay deeply hospitable
and unhurried. ''',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF55433D),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Read more',
                      style: TextStyle(
                        fontSize: 12.sp,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF99462A),
                        fontFamily: 'Montserrat-VariableFont_wght',
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Amenities',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat-VariableFont_wght',
                      ),
                    ),
                    Column(
                      spacing: 4,
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: ListTile(
                                leading: Icon(
                                  Icons.wifi_outlined,
                                  color: Color(0xFF55433D),
                                ),
                                title: Text(
                                  "Free Fast Wi-Fi",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: ListTile(
                                leading: Icon(
                                  Icons.pool,
                                  color: Color(0xFF55433D),
                                ),
                                title: Text(
                                  "Rooftop Pool",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Flexible(
                              child: ListTile(
                                leading: Icon(
                                  Icons.sports_bar_sharp,
                                  color: Color(0xFF55433D),
                                ),
                                title: Text(
                                  "Fitness Center",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: ListTile(
                                leading: Icon(
                                  Icons.restaurant,
                                  color: Color(0xFF55433D),
                                ),
                                title: Text(
                                  "On-site Dining",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Flexible(
                              child: ListTile(
                                leading: Icon(
                                  Icons.local_drink_outlined,
                                  color: Color(0xFF55433D),
                                ),
                                title: Text(
                                  "Lounge Bar",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: ListTile(
                                leading: Icon(
                                  Icons.room_service,
                                  color: Color(0xFF55433D),
                                ),
                                title: Text(
                                  "24/7 Room Service",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.h),
                      child: FilledButton(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          side: BorderSide(color: Color(0xFFDBC1B9)),
                        ),
                        child: Text(
                          "Show all 34 amenities",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Text(
                      'Select your room',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat-VariableFont_wght',
                      ),
                    ),
                    SizedBox(
                      width: 350.w,
                      height: 550.h,
                      child: ListView.builder(
                        itemCount: 2,
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 20.w,
                        ),
                        itemBuilder: (context, index) {
                          return Container(
                            width: 348.w,
                            height: 450.h,
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Color(0xFFF2EBE3)),
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Column(
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
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    mainAxisAlignment: .start,
                                    crossAxisAlignment: .start,
                                    children: [
                                      Row(
                                        crossAxisAlignment: .start,
                                        mainAxisAlignment: .start,

                                        spacing: 120,
                                        children: [
                                          Text(
                                            'Deluxe King Room',
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w700,

                                              fontFamily:
                                                  'Montserrat-VariableFont_wght',
                                            ),
                                          ),
                                        ],
                                      ),

                                      SizedBox(height: 10.h),
                                      Row(
                                        spacing: 10,
                                        children: [
                                          Chip(
                                            backgroundColor: Color(0xFFF4F3F1),

                                            label: Row(
                                              spacing: 4,
                                              children: [
                                                Icon(
                                                  Icons.aspect_ratio_outlined,
                                                  color: Color(0xFF55433D),
                                                ),
                                                Text('32 sqm'),
                                              ],
                                            ),
                                          ),

                                          Chip(
                                            backgroundColor: Color(0xFFF4F3F1),

                                            label: Row(
                                              spacing: 4,
                                              children: [
                                                Icon(
                                                  Icons.single_bed_outlined,
                                                  color: Color(0xFF55433D),
                                                ),
                                                Text('1 King Bed'),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        child: Divider(
                                          color: Color(0xFFDBC1B9),
                                        ),
                                      ),

                                      SizedBox(height: 10.h),

                                      Row(
                                        mainAxisAlignment: .spaceBetween,
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              text: "\$165",
                                              children: [
                                                TextSpan(
                                                  text: " night",
                                                  style: TextStyle(
                                                    color: Color(0xFF5F5E5E),
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily:
                                                        'Montserrat-VariableFont_wght',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          OutlinedButton(
                                            onPressed: () {},
                                            style: OutlinedButton.styleFrom(
                                              foregroundColor: Color(
                                                0xFF99462A,
                                              ),
                                              side: BorderSide(
                                                color: Color(0xFF99462A),
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadiusGeometry.circular(
                                                      12.r,
                                                    ),
                                              ),
                                            ),
                                            child: Text(
                                              "Select",
                                              //  style: TextStyle(color: Color(0xFFD97757)),
                                            ),
                                          ),
                                        ],
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

                    Text(
                      'Guest Reviews',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat-VariableFont_wght',
                      ),
                    ),
                    Row(
                      spacing: 4,
                      children: [
                        Icon(Icons.star_rate, color: Color(0xFFD97757)),
                        Text(
                          "4.8",
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Overall rating",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF55433D),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      width: 390.w,
                      child: Divider(color: Color(0xFFDBC1B9)),
                    ),

                    Column(
                      children: [
                        Row(
                          spacing: 8,
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xFFE9E8E5),
                              child: Text(
                                "SJ",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  "Sarah Jenkins",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "October 2023",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF55433D),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        Padding(
                          padding: EdgeInsets.only(bottom: 32.h),
                          child: Text(
                            '''"Absolutely stunning property. The attention
to detail in the design is incredible—it feels
more like a serene private residence than a
hotel. The courtyard was the perfect place for
morning coffee."''',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF55433D),
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 390.w,
                          child: Divider(
                            color: Color.fromARGB(255, 243, 233, 229),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      spacing: 8,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFFE9E8E5),
                          child: Text(
                            "SJ",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text(
                              "Sarah Jenkins",
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "October 2023",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF55433D),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: 32.h),
                      child: Text(
                        '''"Absolutely stunning property. The attention
to detail in the design is incredible—it feels
more like a serene private residence than a
hotel. The courtyard was the perfect place for
morning coffee."''',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF55433D),
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 390.w,
                      child: Divider(color: Color.fromARGB(255, 243, 233, 229)),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.h),
                      child: FilledButton(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          side: BorderSide(color: Color(0xFFDBC1B9)),
                        ),
                        child: Text(
                          "Show all 34 amenities",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: 80.h,
                width: 390.w,
                color: Color(0XFFFAF9F6),
                child: Align(
                  alignment: AlignmentGeometry.bottomCenter,
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      Row(
                        mainAxisAlignment: .spaceEvenly,
                        spacing: 100.w,
                        children: [
                          Column(
                            children: [
                              Text("\$165 / night "),
                              Text("Nov 14 - 18"),
                            ],
                          ),
                          FilledButton(
                            style: FilledButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Color(0xFF99462A),
                            ),
                            onPressed: () {},
                            child: Text("Reserve"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
