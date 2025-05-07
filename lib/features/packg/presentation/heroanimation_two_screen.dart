import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hiro_anymetion/gen/assets.gen.dart';
import 'package:hiro_anymetion/gen/colors.gen.dart';
import 'package:hiro_anymetion/helpers/ui_helpers.dart';

class DetailScreen extends StatelessWidget {
  final int index;

   DetailScreen({super.key, required this.index, });

  final List<String> image = [
    'assets/images/fashion.jpg',
    'assets/images/fahon2.jpg',
    'assets/images/fashon3.jpg',
    'assets/images/fashon4.jpg',
   'assets/images/shoes4.jpg',
     'assets/images/fashon5.jpg',
    'assets/images/fashon6.jpg',
    'assets/images/fashon7.webp',
    'assets/images/fshon8.jpg',
     'assets/images/fahon9.jpg',
    'assets/images/fashon10.jpg',
   'assets/images/fashon11.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      appBar: AppBar(
        title: const Text('Shoes Details'),
        centerTitle: true,
      ),
      body:   Center(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 15.h,horizontal: 5.w),
          child: Column(
            children: [
              UIHelper.verticalSpace(30.h),
              Hero(
                tag: 'shoes$index',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: Image.asset(
                    image[index],
                    fit: BoxFit.cover,
                    width: 300.w,
                    height: 300.h,
                  ),
                ),
              ),
              UIHelper.verticalSpace(15.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    Text('(\$39.99)',style: TextStyle(color: Colors.black,fontSize: 14.sp)),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text('Online Shopping BD has never been easier. Daraz.com.bd is best online shopping store in Bangladesh that features 10+ million products at affordable prices. As bangaldesh s online shopping landscape is expanding every year sylhet and other big cities are also gaining momentum  online shopping in dhaka, chittagong, khulna Daraz is among best'),
              )
            ],
          ),
        ),
      ),

    );
  }
}
