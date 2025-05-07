import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hiro_anymetion/constants/text_font_style.dart';
import 'package:hiro_anymetion/gen/assets.gen.dart';
import 'package:hiro_anymetion/gen/colors.gen.dart';
import 'package:hiro_anymetion/helpers/all_routes.dart';
import 'package:hiro_anymetion/helpers/navigation_service.dart';
import 'package:hiro_anymetion/helpers/ui_helpers.dart';



class CategoriScreen extends StatefulWidget {
  const CategoriScreen({super.key});

  @override
  State<CategoriScreen> createState() => _CategoriScreenState();
}

class _CategoriScreenState extends State<CategoriScreen> {
  final List<String> image = [
    'assets/images/roket.png',
    'assets/images/roket.png',
    'assets/images/roket.png',
    'assets/images/roket.png',
    'assets/images/roket.png',
    'assets/images/roket.png',
    'assets/images/roket.png',
    'assets/images/roket.png',
  ];

  final List<String> icon = [
    'assets/images/cafe.png',
    'assets/images/cafe.png',
    'assets/images/cafe.png',
    'assets/images/cafe.png',
    'assets/images/cafe.png',
    'assets/images/cafe.png',
    'assets/images/cafe.png',
    'assets/images/cafe.png',
  ];

  final List<String> data = [
    'Git Box',
    'Git Box',
    'Git Box',
    'Git Box',
    'Git Box',
    'Git Box',
    'Git Box',
    'Git Box',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.images.cofypic.path), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      NavigationService.navigateTo(Routes.lesson_Screen);
                    },
                      child: Image.asset(Assets.images.rectangle.path, height: 20)),
                  UIHelper.horizontalSpace(20.w),
                  Column(
                    children: [
                      Image.asset(Assets.images.samo.path, height: 20),
                      UIHelper.verticalSpace(10.h),
                      Image.asset(Assets.images.education.path, height: 20),
                    ],
                  ),
                  UIHelper.horizontalSpace(28.w),
                  GestureDetector(
                    onTap: (){
                      NavigationService.navigateTo(Routes.lesson_Screen);
                    },
                    child: Row(
                      children: [
                        Image.asset(Assets.images.loves.path),
                        UIHelper.horizontalSpace(15.w),
                        Image.asset(
                          Assets.images.oval.path,
                          height: 45,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              UIHelper.verticalSpace(30.h),
              GestureDetector(
                onTap: (){
                  NavigationService.navigateTo(Routes.lesson_Screen);
                },
                child: SizedBox(
                  height: 50.h,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      shrinkWrap: true,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 9),
                          child: Container(
                            width: 87,
                            height: 35,
                            decoration: BoxDecoration(
                                color: AppColors.cF3F9F4,
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(color: Colors.transparent)),
                            child: Center(
                                child: Text(
                              "GRAMMARS",
                              style: TextFontStyle.c000000
                                  .copyWith(color: const Color(0xffc000000)),
                            )),
                          ),
                        );
                      }),
                ),
              ),
              UIHelper.verticalSpace(20.h),
              GridView.builder(
                physics: const PageScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 7.w,
                    mainAxisSpacing: 7.h,
                    childAspectRatio: 0.80),
                itemCount: image.length, // Number of items in the grid
                itemBuilder: (_, index) {
                  return Stack(
                    children: [
                      Container(
                        width: 175.w,
                        height: 175.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(21.r),
                              topLeft: Radius.circular(11.r)),
                          image: DecorationImage(
                            image: AssetImage(image[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 25,
                        left: 8.w,
                        right: 8.w,
                        child: Container(
                          height: 30.h, width: 150.w, color: AppColors.c715343,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                              Image.asset(icon[index],height: 20.h),
                                UIHelper.horizontalSpace(15.w),
                                Text(data[index]),
                              ],
                            ),
                          )),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
