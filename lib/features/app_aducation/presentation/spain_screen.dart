import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/all_routes.dart';
import '../../../helpers/navigation_service.dart';
import '../../../helpers/ui_helpers.dart';

class SpainScreen extends StatefulWidget {
  const SpainScreen({super.key});
  @override
  State<SpainScreen> createState() => _SpainScreenState();
}

class _SpainScreenState extends State<SpainScreen> {
  List<String> image = [
    'assets/images/sobjigreen.png',
    'assets/images/orange.jpg',
    'assets/images/sweets.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CarouselSlider.builder(
            itemCount: image.length,
            itemBuilder: (_, index, pageIndex) {
              return Card(
                elevation: 1,
                child: Stack(
                  children: [
                    // Container for image background
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(image[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text(
                        'Image ${index + 1}',
                        style: TextStyle(
                          color: AppColors.cFFFFFF,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 1.0,
                              color: Colors.black.withOpacity(0.5),
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            options: CarouselOptions(
              height: 250,
              aspectRatio: 16 / 0,
              autoPlay: false,
            ),
          ),
          Card(
            child: Container(
                height: 700.h,
                width: 450.w,
                decoration: BoxDecoration(
                  color:  Colors.transparent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.r),
                    topRight: Radius.circular(35.r),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Boston Lettuce",
                          style: TextFontStyle.c2D0C57Boston
                              .copyWith(color: const Color(0xffc2d0c57))),
                      UIHelper.verticalSpace(7.h),
                      Row(
                        children: [
                          Text("1.10",
                              style: TextFontStyle.c2D0C57poppins10
                                  .copyWith(color: const Color(0xffc2d0c57))),
                          UIHelper.horizontalSpace(8.w),
                          Text("'€ / piece',",
                              style: TextFontStyle.c9586A8poppins16
                                  .copyWith(color: const Color(0xffcc9586a8))),
                        ],
                      ),
                      UIHelper.verticalSpace(7.h),
                      Text(
                        "'~ 150 gr / piece',",
                        style: TextFontStyle.c06BE77price,
                      ),
                      UIHelper.verticalSpace(20.h),
                      Text("Spain",
                          style: TextFontStyle.c2D0C57
                              .copyWith(color: const Color(0xffc2d0c57))),
                      UIHelper.verticalSpace(15.h),
                      Text(
                          "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.",
                          style: TextFontStyle.c9586A8letuch),
                      UIHelper.verticalSpace(70.h),
                      Row(
                        children: [
                          Container(
                            width: 78.w,
                            height: 56.h,
                            decoration: BoxDecoration(
                                color: AppColors.cFFFFFF,
                                borderRadius: BorderRadius.circular(8.r),
                                border: Border.all(color: AppColors.cD9D0E3)),
                            child: Padding(
                              padding: const EdgeInsets.all(19.0),
                              child: Image.asset(Assets.images.love,
                                  height: 20.sp),
                            ),
                          ),
                          UIHelper.horizontalSpace(15.w),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                NavigationService.navigateTo(
                                    Routes.ratingScreen);
                              },
                              child: Container(
                                  width: 250.w,
                                  height: 56.h,
                                  decoration: BoxDecoration(
                                      color: AppColors.c0BCE83,
                                      borderRadius: BorderRadius.circular(8.r),
                                      border:
                                          Border.all(color: AppColors.cD9D0E3)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 50),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            Assets.images.shoppingCart.path,
                                            height: 20.sp),
                                        UIHelper.horizontalSpace(15.w),
                                        Text("ADD TO CART",
                                            style: TextFontStyle.cFFFFFF
                                                .copyWith(
                                                    color: const Color(
                                                        0xffcffffff)))
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    ));
  }
}
