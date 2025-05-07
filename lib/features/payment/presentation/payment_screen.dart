import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hiro_anymetion/common_widget/custom_button.dart';
import 'package:hiro_anymetion/constants/text_font_style.dart';
import 'package:hiro_anymetion/gen/assets.gen.dart';
import 'package:hiro_anymetion/gen/colors.gen.dart';
import 'package:hiro_anymetion/helpers/navigation_service.dart';
import 'package:hiro_anymetion/helpers/ui_helpers.dart';


class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF6F5F5,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.cF6F5F5,
        leading: GestureDetector(
          onTap: (){
            NavigationService.goBack;
          },
          child: Padding(
            padding: const EdgeInsets.all(19.0),
            child: Image.asset(Assets.icons.a22.path, height: 20.h),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Credit / Debit card",
              style: TextFontStyle.c2D0C57Boston
                  .copyWith(color: const Color(0xffc2D0C57)),
            ),
            UIHelper.verticalSpace(20.h),
            Container(
                height: 300.h,
                width: 400.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                  Assets.images.decoration.path,
                ))),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 50.h, horizontal: 30.w),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            Assets.images.circlered.path,
                            height: 40.h,
                          ),
                        ],
                      ),
                      UIHelper.verticalSpace(20.h),
                      Text("4747 4747 4747 4747",
                          style: TextFontStyle.cFFFFFFpoppins),
                      UIHelper.verticalSpace(50.h),
                      Row(
                        children: [
                          Text("ALEXANDRA SMITH",
                              style: TextFontStyle.cFFFFFFpoppins20),
                          const Spacer(),
                          Text("07/21", style: TextFontStyle.cFFFFFFpoppins20),
                        ],
                      ),
                    ],
                  ),
                )),
            Center(
                child: Image.asset(
              Assets.images.camera.path,
              height: 29,
            )),
            UIHelper.verticalSpace(20.h),
            Text("Name on card", style: TextFontStyle.c9586A8poppins14),
            Container(
              width: 374.w,
              height: 55.h,
              decoration: BoxDecoration(
                  color: AppColors.cFFFFFF,
                  borderRadius: BorderRadius.circular(11.r),
                  border: Border.all(color: AppColors.cD9D0E3)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Text(
                  "Alexandra Smith",
                  style: TextFontStyle.c2D0C57poppins17
                      .copyWith(color: const Color(0xffc2D0C57)),
                ),
              ),
            ),
            UIHelper.verticalSpace(20.h),
            Text(
              "Card number",
              style: TextFontStyle.c9586A8poppins14,
            ),
            Container(
                width: 374.w,
                height: 55.h,
                decoration: BoxDecoration(
                    color: AppColors.cFFFFFF,
                    borderRadius: BorderRadius.circular(11.r),
                    border: Border.all(color: AppColors.cD9D0E3)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text(
                        "4747 4747 4747 4747",
                        style: TextFontStyle.c2D0C57poppins17
                            .copyWith(color: const Color(0xffc2D0C57)),
                      ),
                      const Spacer(),
                      Image.asset(
                        Assets.images.circlered.path,
                        height: 20,
                      )
                    ],
                  ),
                )),
            UIHelper.verticalSpace(20.h),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Card number",
                        style: TextFontStyle.c9586A8poppins14,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: AppColors.cFFFFFF,
                            borderRadius: BorderRadius.circular(11.r),
                            border: Border.all(color: AppColors.cD9D0E3)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 17.h, horizontal: 20.w),
                          child: Text(
                            "07/21",
                            style: TextFontStyle.c2D0C57poppins17
                                .copyWith(color: const Color(0xffc2D0C57)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                UIHelper.horizontalSpaceSmall,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Card number",
                        style: TextFontStyle.c9586A8poppins14,
                      ),
                      Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: AppColors.cFFFFFF,
                              borderRadius: BorderRadius.circular(11.r),
                              border: Border.all(color: AppColors.cD9D0E3)),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 17.h, horizontal: 20.w),
                                child: Text(
                                  "07/21",
                                  style: TextFontStyle.c2D0C57poppins17
                                      .copyWith(color: const Color(0xffc2D0C57)),
                                ),
                              ),
                              UIHelper.horizontalSpace(20.w),
                              Image.asset(
                                Assets.images.hintbox.path,
                                height: 24.h,
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(40.h),
            customeButton(
              borderColor: Colors.transparent,
                name: "USE THIS CARD",
                onCallBack: (){},
                height:  56.h,
                minWidth: 374.w,
                borderRadius: 5.r,
                color: AppColors.c0BCE83,
                textStyle: TextFontStyle.cFFFFFF,
                context: context),
            UIHelper.verticalSpace(30.h),
          ],
        ),
      ),
    );
  }
}
