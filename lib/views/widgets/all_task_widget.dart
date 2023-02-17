// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/constants/colors.dart';
import 'package:ui_task/constants/image_path.dart';
import 'package:ui_task/constants/strings.dart';

class AllTaskWidget extends StatelessWidget {
  const AllTaskWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      width: 330.w,
      margin: EdgeInsets.symmetric(horizontal: 5.w,vertical: 5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: whiteColor,
      ),
      child: Padding(
        padding: EdgeInsets.all(8.w),
        child: Row(
          children: [
            Image.asset(
              imgTodoList,
              height: 60.h,
              width: 55.w,
              fit: BoxFit.fill,
            ),
            SizedBox(width: 10.w),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    onlineClass,
                    style: TextStyle(
                      color: Color(0xFF042E2B),
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(height: 5.w),
                  Row(
                    children: [
                      Text(
                        saveDate,
                        style: TextStyle(
                          color: Color(0xFF042E2B),
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        date1,
                        style: TextStyle(
                          color: Color(0xFF042E2B),
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
