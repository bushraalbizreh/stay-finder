import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_card.dart';

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
                    return CustomCard(
                      imageWidth: 370.w,
                      imageHeight: 260.h,
                      height: 408.h,

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
                      content: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: .start,
                          mainAxisAlignment: .start,
                          children: [
                            Row(
                              crossAxisAlignment: .start,
                              spacing: 80.w,
                              children: [
                                Text(
                                  'Casa Verde Hotel',
                                  style: TextStyle(
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Montserrat-VariableFont_wght',
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star_rate, size: 14),
                                    Text('4.9', style: TextStyle(fontSize: 12)),
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
                          ],
                        ),
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
