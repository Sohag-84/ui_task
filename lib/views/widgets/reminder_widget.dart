// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/constants/colors.dart';
import 'package:ui_task/constants/image_path.dart';
import 'package:ui_task/constants/strings.dart';

class ReminderWidget extends StatelessWidget {
  final Color color;
  final String title, date;
  const ReminderWidget({
    Key? key,
    required this.color,
    required this.title,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.w),
      child: Container(
        height: 110.h,
        width: 160.w,
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imgTodoList,
              height: 50.h,
              width: 55.w,
              fit: BoxFit.cover,
              color: color,
            ),
            SizedBox(height: 5.h),
            Text(
              title,
              style: TextStyle(
                color: Color(0xFF042E2B),
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
              ),
            ),
            SizedBox(height: 5.h),
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
                  date,
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
    );
  }
}
