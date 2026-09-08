import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:stayfinder/widgets/custom_text_form_field.dart';

import '../providers/search_provider.dart';
import '../providers/stay_provider.dart';
import '../models/stay_model.dart';
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
    return ChangeNotifierProvider(
      create: (context) => SearchProvider()..getStaysList(),
      child:Builder(
        builder: (context) {
          return SafeArea(
                child: Scaffold(
                  appBar: AppBar(
                    centerTitle: true,
                    title: Text(
                      "StayFinder",
                      style: Theme.of(context).appBarTheme.titleTextStyle,
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
          
                          onChange: (value) {
                            Provider.of<SearchProvider>(
                              context,
                              listen: false,
                            ).getSearchResults(value);
                          },
                        ),
                      ),
                      Consumer<SearchProvider>(
                        builder: (context, searchProvider, _) =>
                            searchProvider.isSearching == true &&
                                searchProvider.resultSearch.isEmpty
                            ? Expanded(
                                child: SizedBox(
                                  height: 100,
                                  child: Center(child: Text("No stay Found.")),
                                ),
                              )
                            : 
                            Flexible(
                                child: ListView.builder(
                                  itemCount: searchProvider.isSearching == false
                                      ? searchProvider.stays.length
                                      : searchProvider.resultSearch.length,
          
                                  itemBuilder: (context, index) {
                                    List<StayModel> stay = searchProvider.isSearching==false?
                                    searchProvider.stays
                                    :searchProvider.resultSearch;
          
                                    return Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20.w,
                                        vertical: 8.h,
                                      ),
                                      child: CustomCard(
                                        imageWidth: 370.w,
                                        imageHeight: 260.h,
                                        height: 408.h,
          
                                        image: stay[index].image!,
                                        review: Text(
                                          "(${stay[index].reviewsCount}reviews)",
                                          style: TextStyle(
                                            decoration: TextDecoration.underline,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF55433D),
                                          ),
                                        ),
                                        classification: Padding(
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
                                              stay[index].category!,
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
                                        price: stay[index].price,
                                        content: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment: .start,
                                            mainAxisAlignment: .start,
                                            children: [
                                              Row(
                                                mainAxisAlignment: .spaceBetween,
                                                crossAxisAlignment: .start,
          
                                                children: [
                                                  Text(
                                                    stay[index].name!,
                                                    style: TextStyle(
                                                      fontSize: 15.sp,
                                                      fontWeight: FontWeight.w600,
                                                      fontFamily:
                                                          'Montserrat-VariableFont_wght',
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(2),
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFEFEEEB),
                                                      borderRadius:
                                                          BorderRadius.circular(90),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star_rate,
                                                          size: 14,
                                                          color: Color(0xFFD97757),
                                                        ),
                                                        Text(
                                                          stay[index].rating
                                                              .toString(),
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                '${stay[index].location!.city.toString()},${stay[index].location!.country.toString()}',
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily:
                                                      'Montserrat-VariableFont_wght',
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
                      ),
                    ],
                  ),
                ),
              );
        }
      )

    );
  }
}
