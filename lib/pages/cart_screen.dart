import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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
          mainAxisAlignment: .start,
          crossAxisAlignment: .start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Shopping Cart",
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat-VariableFont_wght',
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 2,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.w),
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
                            borderRadius: BorderRadiusGeometry.circular(12),
                            child: Image.asset(
                              "assets/images/image1.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: .start,
                            crossAxisAlignment: .start,
                            children: [
                              Row(
                                crossAxisAlignment: .start,
                                mainAxisAlignment: .spaceEvenly,

                                spacing: 120,
                                children: [
                                  Text(
                                    'Amanera Resort',
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF99462A),
                                      fontFamily:
                                          'Montserrat-VariableFont_wght',
                                    ),
                                  ),
                                  Icon(Icons.close, color: Colors.grey),
                                ],
                              ),
                              Text(
                                "Ocean View Suite • 2 Guests",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Montserrat-VariableFont_wght',
                                ),
                              ),
                              SizedBox(height: 10.h),
                              SizedBox(
                                child: Container(
                                  width: 220.w,
                                  height: 44.h,
                                  color: Color(0xFFF4F3F1),
                                  child: Row(
                                    spacing: 4,
                                    children: [
                                      Icon(Icons.calendar_month),
                                      Text('Oct 12 - Oct 15 (3 Nights)'),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),

                              Row(
                                mainAxisAlignment: .spaceAround,
                                children: [
                                  FilledButton(
                                    onPressed: () {},
                                    style: FilledButton.styleFrom(
                                      backgroundColor: Color(0XFFEFEEEB),
                                    ),
                                    child: Text(
                                      "Partially Refundable",
                                      style: TextStyle(
                                        color: Color(0xFF5F5E5E),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                        fontFamily:
                                            'Montserrat-VariableFont_wght',
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "\$2,450",
                                    style: TextStyle(
                                      color: Color(0xFF99462A),
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.w700,
                                      fontFamily:
                                          'Montserrat-VariableFont_wght',
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

            Container(
              height: 399.h,
              width: 390.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24.r),
              ),
              child: Align(
                alignment: AlignmentGeometry.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    spacing: 10,
                    crossAxisAlignment: .center,
                    mainAxisAlignment: .start,
                    children: [
                      Text(
                        'Summary',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF99462A),
                          fontFamily: 'Montserrat-VariableFont_wght',
                        ),
                      ),
                      Row(
                        mainAxisAlignment: .spaceAround,
                        children: [
                          Text(
                            "Subtotal (2 stays)",
                            style: TextStyle(
                              color: Color(0xFF55433D),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Montserrat-VariableFont_wght',
                            ),
                          ),

                          Text(
                            "\$3,340.00",
                            style: TextStyle(
                              color: Color(0xFF55433D),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Montserrat-VariableFont_wght',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: .spaceAround,
                        children: [
                          Text(
                            "Subtotal (2 stays)",
                            style: TextStyle(
                              color: Color(0xFF55433D),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Montserrat-VariableFont_wght',
                            ),
                          ),

                          Text(
                            "\$3,340.00",
                            style: TextStyle(
                              color: Color(0xFF55433D),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Montserrat-VariableFont_wght',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: .spaceAround,
                        children: [
                          Text(
                            "Member Discount",
                            style: TextStyle(
                              color: Color(0xFFD97757),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Montserrat-VariableFont_wght',
                            ),
                          ),

                          Text(
                            "\$3,340.00",
                            style: TextStyle(
                              color: Color(0xFFD97757),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Montserrat-VariableFont_wght',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 390,
                        child: Divider(color: Color(0xFFDBC1B9)),
                      ),

                      Row(
                        mainAxisAlignment: .spaceAround,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                              color: Color(0xFFD97757),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat-VariableFont_wght',
                            ),
                          ),

                          Text(
                            "\$3,340.00",
                            style: TextStyle(
                              color: Color(0xFF99462A),
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Montserrat-VariableFont_wght',
                            ),
                          ),
                        ],
                      ),
                      FilledButton(
                        style: FilledButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFFD97757),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: .center,
                          spacing: 2,
                          children: [
                            Text("Proceed to Checkout"),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                      Text(
                        "Prices include all applicable taxes",
                        style: TextStyle(
                          color: Color(0xFF55433D),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Montserrat-VariableFont_wght',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
