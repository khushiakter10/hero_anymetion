import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hiro_anymetion/constants/text_font_style.dart';
import 'package:hiro_anymetion/gen/assets.gen.dart';
import 'package:hiro_anymetion/gen/colors.gen.dart';
import 'package:hiro_anymetion/helpers/all_routes.dart';
import 'package:hiro_anymetion/helpers/navigation_service.dart';
import 'package:hiro_anymetion/helpers/ui_helpers.dart';


class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  final List<String> image = [
    'assets/images/future.png',
    'assets/images/future.png',
    'assets/images/future.png',
    'assets/images/future.png',
    'assets/images/future.png',
    'assets/images/future.png',
    'assets/images/future.png',
    'assets/images/future.png',
    'assets/images/future.png',
    'assets/images/future.png',
    'assets/images/future.png',
    'assets/images/future.png',
  ];
  final List<String> data = [
    'XP 1024',
    'XP 1024',
    'XP 1024',
    'XP 1024',
    'XP 1024',
    'XP 1024',
    'XP 1024',
    'XP 1024',
    'XP 1024',
    'XP 1024',
    'XP 1024',
    'XP 1024',
  ];
  final List<String> text = [
    'data koprivova',
    'data koprivova',
    'data koprivova',
    'data koprivova',
    'data koprivova',
    'data koprivova',
    'data koprivova',
    'data koprivova',
    'data koprivova',
    'data koprivova',
    'data koprivova',
    'data koprivova',
  ];
  final List<String> student = [
    'student',
    'student',
    'student',
    'student',
    'student',
    'student',
    'student',
    'student',
    'student',
    'student',
    'student',
    'student',
  ];
  final List<String> icon = [
    'assets/images/loves.png',
    'assets/images/loves.png',
    'assets/images/loves.png',
    'assets/images/loves.png',
    'assets/images/loves.png',
    'assets/images/loves.png',
    'assets/images/loves.png',
    'assets/images/loves.png',
    'assets/images/loves.png',
    'assets/images/loves.png',
    'assets/images/loves.png',
    'assets/images/loves.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/towcolor.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 80.h, horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(Assets.images.rectangle.path, height: 20),
                  UIHelper.horizontalSpace(20.w),
                  Column(
                    children: [
                      Image.asset(Assets.images.samo.path, height: 20),
                      UIHelper.verticalSpace(10.h),
                      Image.asset(Assets.images.education.path, height: 20),
                    ],
                  ),
                  UIHelper.horizontalSpace(28.w),
                  Row(
                    children: [
                      Image.asset(Assets.images.loves.path),
                      UIHelper.horizontalSpace(15.w),
                      Image.asset(
                        Assets.images.oval.path,
                        height: 45,
                      ),
                    ],
                  ),
                ],
              ),
              UIHelper.verticalSpace(30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "RATING",
                        style: TextFontStyle.c171716,
                      ),
                      Text("Essential Grammar",
                          style: TextFontStyle.c171716poppins),
                      const Text(
                        "In the lessons we learn new words and rules for\nvocabulary.",
                      ),
                    ],
                  ),
                  Image.asset(Assets.images.cup.path, height: 60.h),
                ],
              ),
              UIHelper.verticalSpace(30.h),
              GestureDetector(
                onTap: (){
                  NavigationService.navigateTo(Routes.educationScreeen);
                },
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: image.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: 0.80,
                  ),
                  itemBuilder: (_, index) {
                    return Container(
                      decoration: ShapeDecoration(
                        color: AppColors.cFFFFFF,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      child: Column(
                        children: [
                          UIHelper.verticalSpace(10.h),
                          Center(
                            child: Container(
                              width: 35.w,
                              height: 35.h,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(image[index]),
                                  fit: BoxFit.cover,
                                ),
                                shape: const OvalBorder(
                                  side: BorderSide(color: Color(0xffcF1F1F1)),
                                ),
                              ),
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                height: 20,
                                width: 80,
                                decoration: BoxDecoration(
                                   color: AppColors.cFD9401,
                                  borderRadius: BorderRadius.circular(40.r),
                                  border: Border.all(color: Colors.transparent),
                                ),
                                child: Center(
                                  child: Text(
                                    data[index],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          UIHelper.verticalSpace(5.h),
                          Text(
                            text[index],
                            style: TextFontStyle.c00000011,
                          ),
                          Text(
                            student[index],
                            style: TextFontStyle.cFA6400,
                          ),
                          Image.asset(Assets.images.love, height: 24.h),
                        ],
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
  }
}
