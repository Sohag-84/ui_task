// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/constants/strings.dart';

class CustomRow extends StatelessWidget {
  final String text;
  final Color color1, color2;
  const CustomRow({
    Key? key,
    required this.text,
    required this.color1,
    required this.color2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: color1,
          ),
        ),
        Spacer(),
        Text(
          seeAll,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: color2,
          ),
        ),
      ],
    );
  }
}
