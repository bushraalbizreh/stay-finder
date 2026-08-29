import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController quary = TextEditingController();

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
              child: TextFormField(
                controller: quary,
                decoration: InputDecoration(
                  hintText: "Search destinations...",
                  filled: true,
                  fillColor: Color(0xFFEFEEEB),
                  prefixIcon: Icon(Icons.search, color: Color(0xFF5F5E5E)),
                  hintStyle: TextStyle(color: Color(0xFFC8C6C6)),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Color(0xFFDBC1B9)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Color(0xFFDBC1B9)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Color(0xFFDBC1B9)),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Color(0xFFDBC1B9)),
                  ),
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
                    margin: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
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
                                borderRadius: BorderRadiusGeometry.circular(12),
                                child: Image.asset(
                                  "assets/images/image1.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: .spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 5.h,
                                    ),
                                    child: FilledButton(
                                      onPressed: () {},
                                      style: FilledButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        side: BorderSide(
                                          color: Color(0xFFDBC1B9),
                                        ),
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
                                ],
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
                                  color: Color(0xFF55433D),
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

                              Row(
                                spacing: 80,
                                mainAxisAlignment: .spaceEvenly,
                                children: [
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
                              SizedBox(height: 4.h),
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
    );
  }
}
