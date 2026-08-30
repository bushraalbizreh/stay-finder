// ignore_for_file: public_member_api_docs, sort_constructors_first, use_super_parameters
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCard extends StatelessWidget {
  final double? height;
  final double? width;
  final String image;
  final Widget? favoriteIcon;
  final Widget content;
  final Widget? review;
  final Widget? classification;
  final double? imageHeight;
  final double? imageWidth;

  const CustomCard({
    Key? key,
    this.height,
    this.width,
    required this.image,
    this.favoriteIcon,
    this.review,
    this.classification,
    this.imageHeight = 256,
    this.imageWidth = 262,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFFDBC1B9)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: imageWidth!.w,
                height: imageHeight!.h,
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(12),
                  child: Image.asset(image, fit: BoxFit.fill),
                ),
              ),
              Row(
                mainAxisAlignment: .end,
                spacing: 130.w,
                children: [?classification, ?favoriteIcon],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: .start,
              mainAxisAlignment: .start,

              children: [
                content,
                SizedBox(height: 10.h),
                SizedBox(
                  child: Divider(
                    color: Color(0xFFDBC1B9),
                    indent: 12,
                    endIndent: 12,
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: .start,
                    spacing: 130.w,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: "\$145",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat-VariableFont_wght',
                          ),
                          children: [
                            TextSpan(
                              text: '/night',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Montserrat-VariableFont_wght',
                              ),
                            ),
                          ],
                        ),
                      ),
                      ?review,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
