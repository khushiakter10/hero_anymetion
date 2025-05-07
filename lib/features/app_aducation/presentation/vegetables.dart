import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/all_routes.dart';
import '../../../helpers/navigation_service.dart';
import '../../../helpers/ui_helpers.dart';
import '../../../widget/custom_text_form.dart';

class Vegetables extends StatefulWidget {
  const Vegetables({super.key});

  @override
  State<Vegetables> createState() => _VegetablesState();
}

class _VegetablesState extends State<Vegetables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.treegren1.path),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.0.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UIHelper.verticalSpace(150.h),
              CustomTextFormWiget(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.r),
                  borderSide: BorderSide(color: AppColors.cD9D0E3),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.r),
                  borderSide: BorderSide(color: AppColors.cD9D0E3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.r),
                  borderSide: BorderSide(color: AppColors.cD9D0E3),
                ),
                hintTxt: "Search",
                hinStyleColor: TextFontStyle.c9586A8search,
                prefixIcon: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Image.asset(Assets.icons.search2.path, height: 24.h),
                ),
              ),
              UIHelper.verticalSpace(15.h),
              SizedBox(
                height: 50.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 9),
                      child: GestureDetector(
                        onTap: () {
                          NavigationService.navigateTo(Routes.spainScreen);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.cE2CBFF,
                            borderRadius: BorderRadius.circular(33.r),
                            border: Border.all(color: AppColors.cD9D0E3),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.w),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Image.asset(
                                    Assets.images.loginVector,
                                    height: 24.h,
                                  ),
                                ),
                                Text(
                                  "Cabbage and lettuce (14)",
                                  style: TextFontStyle.c6C0EE4.copyWith(
                                      color: Color(0xffc6c0ee4), fontSize: 14.sp),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              UIHelper.verticalSpace(25.h),

              /// ✅ Expanded is moved outside GestureDetector
              Expanded(
                child: ListView.separated(
                  itemCount: 100,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 10.h);
                  },
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        NavigationService.navigateTo(Routes.editProfileCopy);
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 170.h,
                            width: 170.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(Assets.images.sobjigreen.path),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 22.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Boston Lettuce',
                                  style: TextFontStyle.c2D0C57w600.copyWith(
                                    color: Color(0xffc2D0C57),
                                    fontSize: 15.sp,
                                  ),
                                ),
                                UIHelper.verticalSpace(11.h),
                                Row(
                                  children: [
                                    Text("1.10", style: TextFontStyle.c2D0C57.copyWith(color: Color(0xffc2D0C57))),
                                    Text(" € / piece", style: TextFontStyle.c9586A8poppins16.copyWith(color: Color(0xffc9586A8))),
                                  ],
                                ),
                                UIHelper.verticalSpace(8.h),
                                Row(
                                  children: [
                                    Container(
                                      width: 60.w,
                                      height: 35.h,
                                      decoration: BoxDecoration(
                                        color: AppColors.cFFFFFF,
                                        borderRadius: BorderRadius.circular(8.r),
                                        border: Border.all(color: AppColors.cD9D0E3),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Image.asset(Assets.images.love, height: 20.sp),
                                      ),
                                    ),
                                    UIHelper.horizontalSpace(10.w),
                                    Container(
                                      width: 60.w,
                                      height: 35.h,
                                      decoration: BoxDecoration(
                                        color: AppColors.c0BCE83,
                                        borderRadius: BorderRadius.circular(8.r),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Image.asset(Assets.images.love, height: 20.h),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
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
