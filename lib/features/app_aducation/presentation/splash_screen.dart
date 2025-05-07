import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common_widget/custom_button.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/all_routes.dart';
import '../../../helpers/navigation_service.dart';
import '../../../helpers/ui_helpers.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.logo33.path),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 20.w),
          child: Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 450.h,
                            decoration: BoxDecoration(
                                color: AppColors.cF6F5F5,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30.r),
                                  topLeft: Radius.circular(30.r),
                                ),
                                border: Border.all(color: Colors.transparent)),
                            child: Padding(
                              padding:   EdgeInsets.symmetric(horizontal: 22.0.w),
                              child: Column(
                                children: [
                                  UIHelper.verticalSpace(30.h),
                                  Container(
                                    width: 90.h,
                                    height: 90.h,
                                    decoration: BoxDecoration(
                                      color: AppColors.cFFFFFF,
                                      borderRadius:
                                          BorderRadius.circular(133.r),
                                    ),
                                    child: Transform.scale(
                                        scale: 0.4,
                                        child: Image.asset(
                                          Assets.images.box99.path,
                                          height: 5.h,
                                        )),
                                  ),
                                  Text(
                                    "Non-Contact \nDeliveries",
                                    style: TextFontStyle.c2D0C57poppins
                                        .copyWith(color:  Color(0XFFF2D0C57),fontSize: 22.sp),
                                  ),
                                  UIHelper.verticalSpace(30.h),
                                  Text(
                                    "When placing an order, select the option",
                                    style: TextFontStyle.c9586A8.copyWith(color: Color(0XFFc9586A8),fontSize: 15),
                                  ),
                                  Text(
                                    "Contactless delivery and the courier will leave",
                                    style: TextFontStyle.c9586A8.copyWith(color: Color(0XFF9586A8),fontSize: 15),
                                  ),
                                  Text(
                                    "your order at the door.",
                                    style: TextFontStyle.c9586A8.copyWith(color: Color(0XFFc9586A8),fontSize: 15),
                                  ),
                                  UIHelper.verticalSpace(50.h),
                                  customeButton(
                                      name: "ORDER NOW",
                                      onCallBack: () {
                                        NavigationService.navigateTo(Routes.spainScreen);
                                      },
                                      borderColor: Colors.transparent,
                                      height: 56.h,
                                      minWidth: 100.w,
                                      borderRadius: 8.r,
                                      color: AppColors.c0BCE83,
                                      textStyle: TextFontStyle.cFFFFFF
                                          .copyWith(color: AppColors.cFFFFFF,fontSize: 13.sp),
                                      context: context),

                                  UIHelper.verticalSpace(17),
                                  TextButton(
                                      onPressed: () {
                                        NavigationService.goBack;
                                      },
                                      child: Text(
                                        'DISMISS',
                                        style: TextFontStyle.c9586A8,
                                      )
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Image.asset(Assets.images.logo1.path, height: 63.h))),
        ),
      ),
    );
  }
}
