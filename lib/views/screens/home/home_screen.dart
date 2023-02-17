// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/constants/colors.dart';

import 'package:ui_task/constants/image_path.dart';
import 'package:ui_task/constants/list.dart';
import 'package:ui_task/constants/strings.dart';
import 'package:ui_task/views/widgets/all_task_widget.dart';
import 'package:ui_task/views/widgets/reminder_widget.dart';
import 'package:ui_task/views/widgets/custom_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 325.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(imgContainer),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        SizedBox(height: 15.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  helloTxt,
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                    color: whiteColor,
                                  ),
                                ),
                                Text(
                                  letsExplore,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: whiteColor.withOpacity(.70),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(child: Container()),
                            Center(
                              child: CircleAvatar(
                                backgroundImage: AssetImage(imgProfile),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 25.h),
                        Stack(
                          children: [
                            Container(
                              height: 140.h,
                              width: 330.w,
                              padding: EdgeInsets.only(
                                left: 16.w,
                                top: 16.h,
                                bottom: 16.h,
                                right: 20.w,
                              ),
                              decoration: BoxDecoration(
                                color: whiteColor.withOpacity(.10),
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    welcome,
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 12.h),
                                  Text(
                                    yourOneStop,
                                    style: TextStyle(
                                      color: whiteColor.withOpacity(.70),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 15.h),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 31.h,
                                      width: 109.w,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF24966D),
                                        borderRadius:
                                            BorderRadius.circular(70.r),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.play_arrow,
                                            color: whiteColor,
                                          ),
                                          SizedBox(width: 5.w),
                                          Text(
                                            watchVideo,
                                            style: TextStyle(
                                              color: whiteColor,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              right: -14.w,
                              bottom: -14.h,
                              child: Image.asset(
                                imgTodo,
                                height: 105.h,
                                width: 100.w,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 22.h),
                        CustomRow(
                          text: reminderTask,
                          color1: whiteColor,
                          color2: whiteColor.withOpacity(.70),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 15.w,
                  right: 0,
                  bottom: -55.h,
                  child: SizedBox(
                    height: 110.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: titleList.length,
                      itemBuilder: (context, index) {
                        return ReminderWidget(
                          color: colorList[index],
                          title: titleList[index],
                          date: dateList[index],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 80.h),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(children: [
                  CustomRow(
                    text: allTask,
                    color1: Color(0xFF042E2B),
                    color2: Color(0xFF042E2B).withOpacity(0.70),
                  ),
                  SizedBox(height: 10.h),
                  Expanded(
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return AllTaskWidget();
                      },
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
