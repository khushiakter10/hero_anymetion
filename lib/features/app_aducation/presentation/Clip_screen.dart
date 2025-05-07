import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hiro_anymetion/gen/assets.gen.dart';
import 'package:hiro_anymetion/gen/colors.gen.dart';
import 'package:hiro_anymetion/helpers/ui_helpers.dart';



class PrograseScreen extends StatefulWidget {
  const PrograseScreen({super.key});

  @override
  State<PrograseScreen> createState() => _PrograseScreenState();
}

class _PrograseScreenState extends State<PrograseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF2EFD4,
      body: SingleChildScrollView(
        padding:  EdgeInsets.symmetric(vertical: 15.h,horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(70),
            Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: (){
                    },
                    child: Image.asset(Assets.images.rectangle.path, height: 15.h)
                ),
                UIHelper.horizontalSpace(70.w),
                Column(
                  children: [
                    Image.asset(Assets.images.samo.path, height: 10.h),
                    UIHelper.verticalSpace(10.h),
                    Image.asset(Assets.images.education.path, height: 10.h),
                  ],
                ),
                UIHelper.horizontalSpace(40.w),
                GestureDetector(
                  onTap: (){
                  },
                  child: Row(
                    children: [
                      Image.asset(Assets.images.loves.path,height: 15.h,),
                      UIHelper.horizontalSpace(40.w),
                      Image.asset(
                        Assets.images.oval.path,
                        height: 30.h,
                      ),
                    ],
                  ),
                )
              ],
            ),
            UIHelper.verticalSpace(50),
            SizedBox(
              height: 199.h, // Ensure it fits the image
              child: ListView.builder(
                //shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Set itemCount to 5
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w), // Add spacing between items
                    child: SizedBox(
                      width: 371.w,
                      height: 199.h,
                      child:  ClipRRect(
                        borderRadius: BorderRadius.circular(50.r),
                       child: Image.asset(Assets.images.gems.path,fit: BoxFit.cover,),


                      ),


                    ),
                  );
                },
              ),
            ),


          ],
        ),
      ),
    );
  }
}
