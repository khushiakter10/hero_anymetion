import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hiro_anymetion/constants/text_font_style.dart';
import 'package:hiro_anymetion/gen/assets.gen.dart';
import 'package:hiro_anymetion/gen/colors.gen.dart';
import 'package:hiro_anymetion/helpers/all_routes.dart';
import 'package:hiro_anymetion/helpers/navigation_service.dart';
import 'package:hiro_anymetion/helpers/ui_helpers.dart';



class BackScreen extends StatefulWidget {
  const BackScreen({super.key});

  @override
  State<BackScreen> createState() => _BackScreenState();
}

class _BackScreenState extends State<BackScreen> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c1F1F1F,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 80.h, horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(Assets.images.rectangle.path, height: 20.h),
                UIHelper.horizontalSpace(20.w),
                Column(
                  children: [
                    Image.asset(Assets.images.samo.path, height: 20.h),
                    UIHelper.verticalSpace(10.h),
                    Image.asset(Assets.images.education.path, height: 20.h),
                  ],
                ),
                UIHelper.horizontalSpace(10.w),
                Row(
                  children: [
                    Image.asset(Assets.images.loves.path),
                    UIHelper.horizontalSpace(10.w),
                    GestureDetector(
                      onTap: (){
                        NavigationService.navigateTo(Routes.categoriesScreen);
                      },
                      child: Image.asset(
                        Assets.images.oval.path,
                        height: 40.h,
                      ),
                    ),
                  ],
                )
              ],
            ),
            UIHelper.verticalSpace(50.h),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 145.w,
                    height: 145.h,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(290.r),
                            topRight: Radius.circular(290.r),
                            bottomRight: Radius.circular(290.r)
                        ),
                        side: const BorderSide(color: AppColors.cF7B500, width: 5),
                      ),
                    ),
                    child: Center(
                        child: Text("SE", style: TextFontStyle.cFFFFFF40)),
                  ),
                  Positioned(
                    right: 27,
                    top: 1,
                    child: CircleAvatar(
                        backgroundColor: AppColors.c6DD400, radius: 10.r),
                  )
                ],
              ),
            ),
            UIHelper.verticalSpace(18.h),
            Center(
              child: Column(
                children: [
                  Text("In the lessns we leran",
                      style: TextFontStyle.cFFFFFF12.copyWith(
                          color: const Color(0xffcffffff), fontSize: 17.sp)),
                  Text(
                    "USER",
                    style: TextFontStyle.cF7B500
                        .copyWith(color: const Color(0xffcF7B500), fontSize: 30.sp),
                  )
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 22.w),
              child: Text("EDIT PROFILE",
                  style: TextFontStyle.cFFFFFF8
                      .copyWith(color: const Color(0xffcFFFFFF8), fontSize: 20.sp)),
            ),

            UIHelper.verticalSpace(10.h),
            Container(
                width: 345.w,
                height: 116.h,
                decoration: ShapeDecoration(
                  color: Colors.grey.shade400,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 13.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: (){
                              NavigationService.navigateTo(Routes.signInScreen);
            },
                              child: Text("Login",style: TextFontStyle.c6D7278poppins,)),
                          const Spacer(),
                          Text("@Firstname",style: TextFontStyle.cFFFFFF13,),
                        ],
                      ),
                    ),
                    UIHelper.verticalSpace(4.h),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 13.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Username",style: TextFontStyle.c6D7278poppins,),
                          const Spacer(),
                          Text("Username",style: TextFontStyle.cFFFFFF13),
                        ],
                      ),
                    ),
                  ],
                )

            ),
            UIHelper.verticalSpace(10.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 22.w),
              child: Text("SETTINGS",
                  style: TextFontStyle.cFFFFFF8
                      .copyWith(color: const Color(0xffcFFFFFF8), fontSize: 20.sp)),
            ),
            UIHelper.verticalSpace(10.h),

            Container(
                width: 345.w,
                height: 116.h,
                decoration: ShapeDecoration(
                    color: Colors.grey.shade400,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r))
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 29.w,vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Dark mode",style: TextFontStyle.c6D7278poppins),
                          UIHelper.horizontalSpace(160.w),
                          CupertinoSwitch(
                            activeTrackColor:  AppColors.c000000,
                              inactiveThumbColor:  AppColors.c6236FF,
                              inactiveThumbImage: const AssetImage("assets/images/start.png"),
                              thumbColor:  AppColors.c6236FF,
                             inactiveTrackColor:  AppColors.c000000,
                              activeThumbImage: const AssetImage("assets/images/start.png"),
                              value: _value, onChanged: (value){
                            setState(() {
                              _value = value;
                              print(value);
                            });
                          }
                          )
                         ],
                      ),
                      UIHelper.verticalSpace(15.h),
                      Row(
                        children: [
                          Text("Push notification'",style: TextFontStyle.c6D7278poppins),
                          UIHelper.horizontalSpace(120.w),
                          CupertinoSwitch(
                            activeTrackColor: AppColors.c000000,
                              inactiveTrackColor:  AppColors.c000000,
                              value: _value, onChanged: (value){
                            setState(() {
                              _value = value;
                              print(value);
                            });
                          }


                          )],
                      ),
                    ],
                  ),
                )

            ),
            UIHelper.verticalSpace(80.h)
          ],
        ),
      ),
    );
  }
}
