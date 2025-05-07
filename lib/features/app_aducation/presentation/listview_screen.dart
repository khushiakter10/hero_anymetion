 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hiro_anymetion/constants/text_font_style.dart';
import 'package:hiro_anymetion/gen/assets.gen.dart';
import 'package:hiro_anymetion/gen/colors.gen.dart';
import 'package:hiro_anymetion/helpers/all_routes.dart';
import 'package:hiro_anymetion/helpers/navigation_service.dart';
import 'package:hiro_anymetion/helpers/ui_helpers.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';





class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage(Assets.images.signin.path),
    fit: BoxFit.cover)
    ),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 18.0.h,horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UIHelper.verticalSpace(50.h),
                Row(
                  children: [
                     Image.asset(Assets.images.menu.path,height: 14.h,),
                    UIHelper.horizontalSpace(60.w),
                    Column(
                      children: [
                        Image.asset(Assets.images.camoxval.path,height: 20.h),
                        Text("SCHOOL",style: TextFontStyle.headlinec6D7278)
                      ],
                    ),
                   const Spacer(),
                   // UIHelper.horizontalSpace(50.w),
                    Image.asset(Assets.images.oval.path,height: 30.h,)
                  ],
                ),
                UIHelper.verticalSpace(50.h),
                SizedBox(
                  height: 40.h,
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
            UIHelper.verticalSpace(20.h),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.zero,
                        child: Stack(
                          children: [
                            Container(
                              height: 171.h,
                              width: 200.w,
                              decoration: const BoxDecoration(),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.r), // Image Border Radius
                                child: Image.asset(
                                  Assets.images.roket1.path,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 19.w,
                              right: 19.w,
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 5.h),
                                decoration: const BoxDecoration(
                                  color: AppColors.c4F3330,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(9.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(Assets.images.bsc.path, height: 15.h),
                                      UIHelper.horizontalSpace(8.w),
                                      Text("Gift Box", style: TextFontStyle.cFFFFFF11),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                UIHelper.verticalSpace(25.h),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 8.w),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.cFFFFFF,
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: AppColors.cF1F1F1)
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 15.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(Assets.images.green2.path,height: 50.h),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Completed",style: TextFontStyle.headlinec6DD400),
                              UIHelper.verticalSpace(6.h),
                              Text("Introduction",style: TextFontStyle.headlinec000000w700),
                              UIHelper.verticalSpace(6.h),
                              Text("In the lessns we leran new words and",style: TextFontStyle.headlinec000000),
                              Text("for vacalaburities continues and articl",style: TextFontStyle.headlinec000000)
                            ],
                          ),
                          const Spacer(),
                          Image.asset(Assets.icons.limited.path,height: 12.h,)

                        ],
                      ),
                    ),
                  ),
                ),
                UIHelper.verticalSpace(10.h),
                GestureDetector(
                  onTap: (){
                    NavigationService.navigateTo(Routes.categoriScreen);
                  },
                  child: SizedBox(
                    height: 300,
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.cFFFFFF,
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: AppColors.cEDEDED),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("100 Essential", style: TextFontStyle.headlinec000000w70018),
                                  Text("Grammar", style: TextFontStyle.headlinec000000w70018),
                                  ListTile(
                                    contentPadding: EdgeInsets.zero, // Default padding সরানো হয়েছে
                                    leading: Image.asset(Assets.images.easten.path),
                                    title: Text("In the lessons we", style: TextFontStyle.headlinec000000w400),
                                    subtitle: Text("learn new words", style: TextFontStyle.headlinec000000w400),
                                  ),
                                  UIHelper.verticalSpace(6.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      LinearPercentIndicator(
                                        barRadius: const Radius.circular(10),
                                        width: MediaQuery.of(context).size.width - 150,
                                        lineHeight: 9.0,
                                        percent: 1,
                                        linearStrokeCap: LinearStrokeCap.roundAll,
                                        progressColor: AppColors.cA4EB01,
                                        backgroundColor: AppColors.c87DF01,
                                      ),
                                    ],
                                  ),
                                  UIHelper.verticalSpace(8.h),
                                  Center(
                                    child: Text("Completed 12 of 12", style: TextFontStyle.headlinec6DD400w400),
                                  ),
                                  UIHelper.verticalSpace(15.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                                        decoration: BoxDecoration(
                                            color: AppColors.cFEE0CC,
                                            borderRadius: BorderRadius.circular(20.r)
                                        ),
                                        child: Text("Reputation", style: TextFontStyle.cFA6400w500),
                                      ),
                                      UIHelper.horizontalSpace(10.w),
                                      Container(
                                        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                                        decoration: BoxDecoration(
                                            color: AppColors.cFEE0CC,
                                            borderRadius: BorderRadius.circular(20.r)
                                        ),
                                        child: Text("Reputation", style: TextFontStyle.cFA6400w500),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }, separatorBuilder: (context, index) {
                        return SizedBox(height: 12.h);
                    },
                    ),
                  ),
                )


              ],
            ),
          ),

    )
    );
  }
}
