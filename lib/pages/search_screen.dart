import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stayfinder/widgets/custom_text_form_field.dart';

import '../widgets/custom_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController query = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "StayFinder",
            style: TextStyle(
              color: Color(0xFF99462A),
              fontSize: 32.sp,
              fontWeight: FontWeight.w700,
              fontFamily: 'Montserrat-VariableFont_wght',
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: 350.w,
              height: 98.h,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24.r),
              ),
              child: CustomTextField(
                controller: query,
                hintText: "Search destinations...",
                filled: true,
                prefixIcon: Icons.search,
                fillColor: Color(0xFFEFEEEB),
                keyboardType: TextInputType.text,
              ),
            ),

            Flexible(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 8.h,
                    ),
                    child: CustomCard(
                      imageWidth: 370.w,
                      imageHeight: 260.h,
                      height: 408.h,

                      image: "assets/images/image1.png",
                      review: Text(
                        "(124 reviews)",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF55433D),
                        ),
                      ),
                      classification: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.h),
                        child: FilledButton(
                          onPressed: () {},
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            side: BorderSide(color: Color(0xFFDBC1B9)),
                          ),
                          child: Text(
                            "Boutique Hotel",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
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
                              //  mainAxisAlignment: .spaceEvenly,
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
                      ),
                    ),
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
