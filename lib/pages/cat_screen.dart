import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:stayfinder/models/stay_model.dart';
import 'package:stayfinder/providers/cart_provider.dart';


class CatScreen extends StatelessWidget {
  const CatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        CartProvider cartProvider = context.watch<CartProvider>();
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Shopping Cart",
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Montserrat-VariableFont_wght',
                ),
              ),
            ),
            body: cartProvider.itemsCart.isEmpty
                ? Center(child: Text("No items added to the cart yet"))
                : SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          // Align(
                          //   alignment: AlignmentDirectional.topStart,
                          //   child: Text(
                          //     "Shopping Cart",
                          //     style: TextStyle(
                          //       fontSize: 32.sp,
                          //       fontWeight: FontWeight.w700,
                          //       fontFamily: 'Montserrat-VariableFont_wght',
                          //     ),
                          //   ),
                          // ),
                          SizedBox(
                            height: 550,
                            child: ListView.builder(
                              itemCount: cartProvider.itemsCart.length,
                              itemBuilder: (context, index) {
                                StayModel stayCart =
                                    cartProvider.itemsCart[index];
                                return Container(
                                  width: 348.w,
                                  height: 485.h,
                                  margin: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Color(0xFFF2EBE3),
                                    ),
                                    borderRadius: BorderRadius.circular(12.r),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: 348.w,
                                        height: 265.h,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadiusGeometry.circular(12),
                                          child: Image.network(
                                            stayCart.image!,
                                            fit: BoxFit.fill,
                                            errorBuilder:
                                                (context, error, stackTrace) =>
                                                    Center(
                                                      child: Icon(
                                                        Icons.warning_outlined,
                                                        color: Colors.red,
                                                        size: 100,
                                                      ),
                                                    ),
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
                                              mainAxisAlignment: .spaceBetween,

                                              children: [
                                                Text(
                                                  stayCart.name!,
                                                  style: TextStyle(
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xFF99462A),
                                                    fontFamily:
                                                        'Montserrat-VariableFont_wght',
                                                  ),
                                                ),
                                                IconButton(
                                                  onPressed: () async {
                                                    cartProvider.removeFromCart(
                                                      cartItemRemoved: stayCart,
                                                    );
                                                    ScaffoldMessenger.of(
                                                      context,
                                                    ).showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          "removed from the cart Successfully",
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  icon: Icon(
                                                    Icons.close,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              "Ocean View Suite • 2 Guests",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                fontFamily:
                                                    'Montserrat-VariableFont_wght',
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
                                                    Text(
                                                      stayCart.availableDays!,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 10.h),

                                            Row(
                                              mainAxisAlignment: .spaceBetween,
                                              children: [
                                                FilledButton(
                                                  onPressed: () {},
                                                  style: FilledButton.styleFrom(
                                                    backgroundColor: Color(
                                                      0XFFEFEEEB,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Partially Refundable",
                                                    style: TextStyle(
                                                      color: Color(0xFF5F5E5E),
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontFamily:
                                                          'Montserrat-VariableFont_wght',
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "\$${stayCart.price}",
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
                            height: 424.h,
                            width: 400.w,
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24.r),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                spacing: 14,
                                crossAxisAlignment: .center,
                                mainAxisAlignment: .start,
                                children: [
                                  Text(
                                    'Summary',
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF99462A),
                                      fontFamily:
                                          'Montserrat-VariableFont_wght',
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
                                          fontFamily:
                                              'Montserrat-VariableFont_wght',
                                        ),
                                      ),

                                      Text(
                                        "\$3,340.00",
                                        style: TextStyle(
                                          color: Color(0xFF55433D),
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily:
                                              'Montserrat-VariableFont_wght',
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
                                          fontFamily:
                                              'Montserrat-VariableFont_wght',
                                        ),
                                      ),

                                      Text(
                                        "\$3,340.00",
                                        style: TextStyle(
                                          color: Color(0xFF55433D),
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily:
                                              'Montserrat-VariableFont_wght',
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
                                          fontFamily:
                                              'Montserrat-VariableFont_wght',
                                        ),
                                      ),

                                      Text(
                                        "\$3,340.00",
                                        style: TextStyle(
                                          color: Color(0xFFD97757),
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily:
                                              'Montserrat-VariableFont_wght',
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
                                          fontFamily:
                                              'Montserrat-VariableFont_wght',
                                        ),
                                      ),

                                      Text(
                                        cartProvider.getTotalPrice().toString(),
                                           
                                        style: TextStyle(
                                          color: Color(0xFF99462A),
                                          fontSize: 32.sp,
                                          fontWeight: FontWeight.w700,
                                          fontFamily:
                                              'Montserrat-VariableFont_wght',
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
                                      fontFamily:
                                          'Montserrat-VariableFont_wght',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          ),
        );
      },
    );
  }
}
/*
Container(
                                width: 348.w,
                                height: 485.h,
                                margin: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Color(0xFFF2EBE3)),
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 348.w,
                                      height: 265.h,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(12),
                                        child: Image.network(
                                          stayCart.image!,
                                          fit: BoxFit.fill,
                                          errorBuilder:
                                              (context, error, stackTrace) =>
                                                  Center(
                                                    child: Icon(
                                                      Icons.warning_outlined,
                                                      color: Colors.red,
                                                      size: 100,
                                                    ),
                                                  ),
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
                                            mainAxisAlignment: .spaceBetween,
              
                                            children: [
                                              Text(
                                                stayCart.name!,
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF99462A),
                                                  fontFamily:
                                                      'Montserrat-VariableFont_wght',
                                                ),
                                              ),
                                              IconButton(
                                                onPressed: () async {
                                                  cartProvider.removeFromCart(
                                                    cartItemRemoved: stayCart,
                                                  );
                                                  ScaffoldMessenger.of(
                                                    context,
                                                  ).showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        cartProvider.message,
                                                      ),
                                                    ),
                                                  );
                                                },
                                                icon: Icon(
                                                  Icons.close,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "Ocean View Suite • 2 Guests",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              fontFamily:
                                                  'Montserrat-VariableFont_wght',
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
                                                  Text(stayCart.availableDays!),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10.h),
              
                                          Row(
                                            mainAxisAlignment: .spaceBetween,
                                            children: [
                                              FilledButton(
                                                onPressed: () {},
                                                style: FilledButton.styleFrom(
                                                  backgroundColor: Color(
                                                    0XFFEFEEEB,
                                                  ),
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
                                                "\$${stayCart.price}",
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
                              ); */