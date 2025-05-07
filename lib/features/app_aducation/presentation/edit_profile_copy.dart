import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hiro_anymetion/constants/text_font_style.dart';
import 'package:hiro_anymetion/gen/assets.gen.dart';
import 'package:hiro_anymetion/gen/colors.gen.dart';
import 'package:hiro_anymetion/helpers/all_routes.dart';
import 'package:hiro_anymetion/helpers/navigation_service.dart';
import 'package:hiro_anymetion/helpers/ui_helpers.dart';


class EditProfileCopy extends StatefulWidget {
  const EditProfileCopy({super.key});

  @override
  State<EditProfileCopy> createState() => _EditProfileCopyState();
}

class _EditProfileCopyState extends State<EditProfileCopy> {
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
                Image.asset(Assets.icons.quin.path, height: 12.h),
                UIHelper.horizontalSpace(35.w),
                Column(
                  children: [
                    Image.asset(Assets.images.samo.path, height: 20.h),
                    UIHelper.verticalSpace(10.h),
                    Image.asset(Assets.images.education.path, height: 20.h),
                  ],
                ),
                UIHelper.horizontalSpace(25.w),
                Row(
                  children: [
                    Image.asset(Assets.images.rectangle.path, height: 20.h),
                  ],
                )
              ],
            ),
            UIHelper.verticalSpace(50.h),
            GestureDetector(
              onTap: (){
                NavigationService.navigateTo(Routes.ratingScreen);
              },
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      width: 145,
                      height: 145,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(290.r),
                          border: Border.all(color: AppColors.cF7B500, width: 5)),
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
            ),
            UIHelper.verticalSpace(18.h),
            UIHelper.verticalSpace(18.h),
            Center(
              child: Column(
                children: [
                  Text("In the lessns we leran",
                      style: TextFontStyle.cFFFFFF12.copyWith(
                          color: const Color(0xffcffffff), fontSize: 17.sp)),
                  UIHelper.verticalSpace(4.h),
                  Text(
                    "USER",
                    style: TextFontStyle.cF7B500
                        .copyWith(color: const Color(0xffcF7B500), fontSize: 30.sp),
                  )
                ],
              ),
            ),
            UIHelper.verticalSpace(18.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 85.w,
                  height: 85.h,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        side: const BorderSide(color: AppColors.c2E2E2E,width: 2)
                      ),
                  ),
                  child: Padding(
                    padding:  const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(Assets.icons.shap.path,height: 10.h),
                        Column(
                          children: [
                            Text("7",style:  TextFontStyle.cFFFFFF21),
                            Text("days",style:  TextFontStyle.cFFFFFF21)
                          ],
                        ),

                      ],
                    ),
                  ),

                ),
                UIHelper.horizontalSpace(15.h),
                Container(
                  width: 85.w,
                  height: 85.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        side: const BorderSide(color: AppColors.c2E2E2E,width: 2)
                    ),
                  ),
                  child: Padding(
                    padding:  const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(Assets.icons.shap.path,height: 10.h),
                        Column(
                          children: [
                            Text("7",style:  TextFontStyle.cFFFFFF21),
                            Text("days",style:  TextFontStyle.cFFFFFF21)
                          ],
                        ),

                      ],
                    ),
                  ),

                ),
                UIHelper.horizontalSpace(15.h),
                Container(
                  width: 85.w,
                  height: 85.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        side: const BorderSide(color: AppColors.c2E2E2E,width: 2)
                    ),
                  ),
                  child: Padding(
                    padding:  const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(Assets.icons.shap.path,height: 10.h),
                        Column(
                          children: [
                            Text("423",style:  TextFontStyle.cFFFFFF18),
                            Text("views",style:  TextFontStyle.cFFFFFF18)
                          ],
                        ),

                      ],
                    ),
                  ),

                ),
              ],
            ),
            UIHelper.verticalSpace(200.h),
            Center(
              child:  Text("Delete profile",style: TextFontStyle.cE02020w400,),
            )

          ],
        ),
      ),
    );
  }
}
