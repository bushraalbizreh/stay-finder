import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:stayfinder/models/stay_model.dart';
import 'package:stayfinder/providers/favorite_provider.dart';
import '../widgets/custom_card.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        FavoriteProvider favoriteProvider = context.watch<FavoriteProvider>();
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(centerTitle: true, title: Text(
                      "Favorites",
                      style: TextStyle(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat-VariableFont_wght',
                      ),
                    ),),
            body:
            favoriteProvider.favoriteStays.isEmpty?
            Center(child: Text("No favorite items yet"),)
            :Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // Align(
                  //   alignment: AlignmentDirectional.topStart,
                  //   child: Text(
                  //     "Favorites",
                  //     style: TextStyle(
                  //       fontSize: 32.sp,
                  //       fontWeight: FontWeight.w700,
                  //       fontFamily: 'Montserrat-VariableFont_wght',
                  //     ),
                  //   ),
                  // ),

                  Expanded(
                    child: ListView.builder(
                      itemCount: favoriteProvider.favoriteStays.length,
                      itemBuilder: (context, index) {
                        StayModel stay = favoriteProvider.favoriteStays[index];
                        return CustomCard(
                          imageWidth: 370.w,
                          imageHeight: 260.h,
                          height: 408.h,

                          image: stay.image!,
                          price: stay.price,
                          favoriteIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: AlignmentGeometry.xy(1, 1),
                              child: CircleAvatar(
                                maxRadius: 20,
                                backgroundColor: Color(0xFFFAF9F6),
                                child:  Consumer<FavoriteProvider>(
                                      builder: (context, favoriteProvider, _) =>
                                          IconButton(
                                            onPressed: () {
                                              favoriteProvider
                                                  .updateStateFavoriteStay(
                                                    stay: stay,
                                                  );
                                            },
                                            icon:
                                                favoriteProvider.isStayFavorite(
                                                  stay,
                                                )
                                                ? Icon(
                                                    Icons.favorite,
                                                    color: const Color.fromARGB(
                                                      255,
                                                      233,
                                                      94,
                                                      51,
                                                    ),
                                                  )
                                                : Icon(
                                                    Icons.favorite_outline,
                                                    color: Colors.black,
                                                  ),
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
                                  spacing: 40.w,
                                  children: [
                                    Text(
                                      stay.name!,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        fontFamily:
                                            'Montserrat-VariableFont_wght',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: .spaceBetween,
                                  crossAxisAlignment: .end,

                                  children: [
                                    Text(
                                      '${stay.location!.city.toString()},${stay.location!.country.toString()}',
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                        fontFamily:
                                            'Montserrat-VariableFont_wght',
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment: .end,
                                      mainAxisAlignment: .end,
                                      children: [
                                        Icon(Icons.star_rate, size: 14),
                                        Text(
                                          stay.rating.toString(),
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ],
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
      },
    );
  }
}
