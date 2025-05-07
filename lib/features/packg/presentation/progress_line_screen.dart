import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hiro_anymetion/features/packg/presentation/progress_custom_widget.dart';
import 'package:hiro_anymetion/helpers/ui_helpers.dart';



class ProgressLineScreen extends StatelessWidget {
  const ProgressLineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          UIHelper.verticalSpace(100.h),

          ProgressLine(
            value: 0.6,
            height: 10,
            bgColor: Colors.blue,
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
