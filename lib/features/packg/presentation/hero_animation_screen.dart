import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hiro_anymetion/constants/text_font_style.dart';
import 'package:hiro_anymetion/gen/assets.gen.dart';
import 'package:hiro_anymetion/gen/colors.gen.dart';
import 'package:hiro_anymetion/helpers/ui_helpers.dart';
import 'heroanimation_two_screen.dart';

class HeroAnimationScreen extends StatelessWidget {
  final List<Map<String, String>> products = [
    {'image': 'assets/images/fashion.jpg', 'title': 'Price'},
    {'image': 'assets/images/fahon2.jpg', 'title': 'Price'},
    {'image': 'assets/images/fashon3.jpg', 'title': 'Price'},
    {'image': 'assets/images/fashon4.jpg', 'title': 'Price'},
    {'image': 'assets/images/shoes4.jpg', 'title': 'Price'},
    {'image': 'assets/images/fashon5.jpg', 'title': 'Price'},
    {'image': 'assets/images/fashon6.jpg', 'title': 'Price'},
    {'image': 'assets/images/fashon7.webp', 'title': 'Price'},
    {'image': 'assets/images/fshon8.jpg', 'title': 'Price'},
    {'image': 'assets/images/fahon9.jpg', 'title': 'Price'},
    {'image': 'assets/images/fashon10.jpg', 'title': 'Price'},
    {'image': 'assets/images/fashon11.webp', 'title': 'Price'},
  ];

  HeroAnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(50.h),
            GridView.builder(
              itemCount: products.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.w,
                mainAxisSpacing: 8.h,
                childAspectRatio: 0.8, // Adjust height for text below image
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: const Duration(seconds: 1),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            DetailScreen(index: index),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Hero(
                        tag: 'shoes$index',
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.r),
                          child: Image.asset(
                            products[index]['image']!,
                            fit: BoxFit.cover,
                            height: 120.h,
                          ),
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            products[index]['title']!,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text('Reebok Sneakers',style: TextStyle(color: Colors.black,fontSize: 10.sp),
                          ),
                          Row(
                            children: [
                              RatingBar.builder(
                                itemSize: 12.h,
                                initialRating: 3.5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemPadding:
                                const EdgeInsets.symmetric(
                                    horizontal: 2),
                                itemBuilder: (context, _) =>
                                    Image.asset(
                                        Assets.images.ddddd
                                            .path,
                                        height: 4.h,
                                        color: AppColors
                                            .c0C1514),
                                onRatingUpdate: (rating) {
                                  if (kDebugMode)
                                    print(rating);
                                },
                              ),
                              UIHelper.horizontalSpace(7.w),
                              Text("720",
                                  style: TextFontStyle
                                      .c2D0C57poppins
                                      .copyWith(
                                      color: const Color(
                                          0xffcb7b9d7),
                                      fontSize: 14.sp)),
                            ],
                          ),
                          Text('\$ 39.99'),

                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
