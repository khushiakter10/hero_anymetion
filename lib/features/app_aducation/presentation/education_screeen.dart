import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hiro_anymetion/constants/text_font_style.dart';
import 'package:hiro_anymetion/gen/assets.gen.dart';
import 'package:hiro_anymetion/gen/colors.gen.dart';
import 'package:hiro_anymetion/helpers/all_routes.dart';
import 'package:hiro_anymetion/helpers/navigation_service.dart';
import 'package:hiro_anymetion/helpers/ui_helpers.dart';



class EducationScreeen extends StatefulWidget {
  const EducationScreeen({super.key});

  @override
  State<EducationScreeen> createState() => _EducationScreeenState();
}

class _EducationScreeenState extends State<EducationScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.cF9F9F9,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal:20.w),
        child: Column(
          children: [
            UIHelper.verticalSpace(50.h),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(Assets.images.rectangle.path, height: 20),
                ),
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
                  onTap: () {},
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
            UIHelper.verticalSpace(50.h),
            Center(
              child: Image.asset(
                Assets.icons.map.path,height: 50.h,
                fit: BoxFit.contain, // Keeps the aspect ratio
              ),
            ),
            UIHelper.verticalSpace(20.h),
            Text("RATINGS",style: TextFontStyle.headlinec000000),
            UIHelper.verticalSpace(20.h),
            GestureDetector(
              onTap: (){
                NavigationService.navigateTo(Routes.prograseScreen);
              },
              child: SizedBox(
                height: 599,
                child: ListView.separated(
                  itemCount: 20,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context,index) {
                    return  Container(
                        decoration: BoxDecoration(
                          color: AppColors.cFFFFFF,
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: Colors.transparent),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 30.h, horizontal: 30.w),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(Assets.images.roket.path),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(27.r),
                                      bottomLeft: Radius.circular(27.r),
                                  ),
                                border: Border.all(color: AppColors.cF1F1F1)
                              ),
                            ),
                            UIHelper.horizontalSpace(15.h),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("LESSON 1",style: TextFontStyle.headlinec000000w700),
                                Text("In the lessns we leran new words and ",style: TextFontStyle.headlinec000000),
                                Text("for vacalaburities continues and articl",style: TextFontStyle.headlinec000000),
                              ],
                            ),
                            UIHelper.horizontalSpace(20.w),
                            Image.asset(Assets.icons.a555.path,height: 10.h,)
                          ],
                        ));
                  }, separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 10.h);
                },

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
