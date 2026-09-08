// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:stayfinder/models/stay_model.dart';

import '../widgets/buttom_navigation_bar_widget.dart';

class DetailsScreen extends StatelessWidget {
  final StayModel stay;
  const DetailsScreen({super.key, required this.stay});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Builder(
          builder: (context) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: 390.w,
                        height: 442.h,
                        child: Image.network(
                          stay.image!,
                          errorBuilder: (context, error, stackTrace) {
                            return Center(
                              child: Icon(
                                Icons.warning_outlined,
                                color: Colors.red,
                                size: 100,
                              ),
                            );
                          },
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
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                ),
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
                              stay.location!.city.toString(),
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Text(
                          stay.name!,
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
                              stay.rating.toString(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "(${stay.reviewsCount} reviews)",
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
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          stay.description!,
                          style: Theme.of(context).textTheme.bodyMedium,
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
                          style: Theme.of(context).textTheme.titleMedium,
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
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodySmall,
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
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodySmall,
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
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodySmall,
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
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodySmall,
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
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodySmall,
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
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodySmall,
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
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        SizedBox(
                          width: 350.w,
                          height: 510.h,
                          child: ListView.builder(
                            itemCount: stay.availableRooms!.length,
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.h,
                              vertical: 20.w,
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                width: 370.w,
                                // 348.w,
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
                                        borderRadius:
                                            BorderRadiusGeometry.circular(12),
                                        child: Image.network(
                                          stay.availableRooms![index].image!,

                                          errorBuilder:
                                              (context, error, stackTrace) {
                                                return Center(
                                                  child: Icon(
                                                    Icons.warning_outlined,
                                                    color: Colors.red,
                                                    size: 100,
                                                  ),
                                                );
                                              },
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
                                                stay
                                                    .availableRooms![index]
                                                    .roomName!,
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w700,

                                                  fontFamily:
                                                      'Montserrat-VariableFont_wght',
                                                ),
                                              ),
                                            ],
                                          ),

                                          SizedBox(height: 10.h),
                                          Row(
                                            spacing: 5,
                                            children: [
                                              Chip(
                                                backgroundColor: Color(
                                                  0xFFF4F3F1,
                                                ),

                                                label: Row(
                                                  spacing: 4,
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .aspect_ratio_outlined,
                                                      color: Color(0xFF55433D),
                                                    ),
                                                    Text(
                                                      '${stay.availableRooms![index].area} sqm',
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Chip(
                                                backgroundColor: Color(
                                                  0xFFF4F3F1,
                                                ),

                                                label: Row(
                                                  spacing: 4,
                                                  children: [
                                                    Icon(
                                                      Icons.single_bed_outlined,
                                                      color: Color(0xFF55433D),
                                                    ),
                                                    Text(
                                                      '${stay.availableRooms![index].beds} Bed',
                                                    ),
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
                                                  text: "\$${stay.price}",
                                                  children: [
                                                    TextSpan(
                                                      text: "/night",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF5F5E5E,
                                                        ),
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Row(
                          spacing: 4,
                          children: [
                            Icon(Icons.star_rate, color: Color(0xFFD97757)),
                            Text(
                              stay.rating.toString(),
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

                        SizedBox(
                          width: 390.w,
                          height: 300.h,
                          child: ListView.builder(
                            itemCount: stay.reviews!.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) => Column(
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
                                          stay.reviews![index].reviewerName!,
                                          style: Theme.of(
                                            context,
                                          ).textTheme.titleMedium,
                                        ),
                                        Text(
                                          stay.reviews![index].reviewDate!,
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
                                    stay.reviews![index].reviewContent!,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.bodyMedium,
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
                          ),
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
                                  Text("\$${stay.price}/ night "),
                                  Text(stay.availableDays!),
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
            );
          },
        ),
      ),
    );
  }
}
