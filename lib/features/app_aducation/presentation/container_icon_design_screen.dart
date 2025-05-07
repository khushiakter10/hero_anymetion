import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hiro_anymetion/gen/assets.gen.dart';
import 'package:hiro_anymetion/gen/colors.gen.dart';
import 'package:hiro_anymetion/helpers/ui_helpers.dart';



class SamohvalScreen extends StatefulWidget {
  const SamohvalScreen({super.key});

  @override
  State<SamohvalScreen> createState() => _SamohvalScreenState();
}

class _SamohvalScreenState extends State<SamohvalScreen> {
  double _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c1F1F1F,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.c1F1F1F,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 23.w),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: AppColors.cFFFFFF,
                    borderRadius: BorderRadius.circular(50.r),
                    border: Border.all(color: Colors.transparent),
                  ),
                ),
                UIHelper.horizontalSpace(35.w),
                Column(
                  children: [
                    Image.asset(Assets.images.samo.path, height: 20),
                    Image.asset(Assets.images.education.path, height: 20),
                  ],
                ),
                UIHelper.horizontalSpace(50.w),
                Image.asset(Assets.images.rectangle.path, height: 20),
              ],
            ),
            UIHelper.verticalSpace(20.h),


            Stack(
              children: [
                Container(
                  width: 145,
                  height: 145,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(290.r),
                      border: Border.all(color: AppColors.cF7B500)),
                ),
                const Positioned(
                    top: 1,
                    right: 26,
                    child: CircleAvatar(
                        backgroundColor: AppColors.c6DD400, radius: 10)
                ),
              ],
            ),





          ],
        ),
      ),
    );
  }
}
