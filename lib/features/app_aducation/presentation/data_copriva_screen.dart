import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hiro_anymetion/constants/text_font_style.dart';
import 'package:hiro_anymetion/gen/assets.gen.dart';
import 'package:hiro_anymetion/gen/colors.gen.dart';
import 'package:hiro_anymetion/helpers/all_routes.dart';
import 'package:hiro_anymetion/helpers/navigation_service.dart';
import 'package:hiro_anymetion/helpers/ui_helpers.dart';


class DataCoprivaScreen extends StatefulWidget {
  const DataCoprivaScreen({super.key});

  @override
  State<DataCoprivaScreen> createState() => _DataCoprivaScreenState();
}

class _DataCoprivaScreenState extends State<DataCoprivaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Assets.images.cofypic.path), fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 15.w),
        child: Column(
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
                UIHelper.horizontalSpace(15.w),
                Row(
                  children: [
                    Image.asset(Assets.images.loves.path),
                    UIHelper.horizontalSpace(10.w),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 600.h,
                                decoration: BoxDecoration(
                                    color: AppColors.cFFFFFF,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(24.r),
                                        topRight: Radius.circular(24.r))
                                ),
                                  child:  GestureDetector(
                                    onTap: (){
                                      NavigationService.navigateTo(Routes.backScreen);
                                    },
                                    child: ListView.separated(

                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: 11,

                                      itemBuilder: (BuildContext context, int index) {
                                        return ListTile(
                                          leading: Image.asset(
                                            Assets.images.oval.path,
                                            height: 45.h,
                                          ),
                                          title: Text("Dana Kopřivová",
                                              style: TextFontStyle.c00000011),
                                          trailing: Text("12:41 PM",
                                              style: TextFontStyle.c6D7278),
                                          subtitle: Text(
                                            "'In the lessns we leran new words and rules\nfor vacalaburities continues and articles',",
                                            style: TextFontStyle.c00000011,
                                          ),
                                        );
                                      }, separatorBuilder: (BuildContext context, int index) {
                                        return Divider(color: Colors.grey.shade400,thickness: 1,);
                                    },

                                    ),
                                  ),

                              );
                            });
                      },
                      child: Image.asset(
                        Assets.images.oval.path,
                        height: 45.h,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
