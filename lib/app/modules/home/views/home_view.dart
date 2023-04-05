import 'dart:ui';

import 'package:demo_dipro/app/common/values/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 180.h, left: 50.w),
                height: 120.h,
                width: 120.w,
                color: Colors.red,
              ),
              SizedBox(width: 10.w),
              Container(
                margin: EdgeInsets.only(top: 250.h, right: 50.w),
                height: 120.h,
                width: 120.w,
                color: Colors.cyanAccent,
              )
            ],
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade200.withOpacity(0.75),
              ),
            ),
          ),
          Positioned(
              top: 100.h,
              right: 60.w,
              child: SvgPicture.asset(
                AppImages.imgSwift,
                width: 200.w,
                height: 200.h,
              ))
        ],
      ),
    );
  }
}
