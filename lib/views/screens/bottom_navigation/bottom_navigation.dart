import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ui_task/constants/colors.dart';
import 'package:ui_task/constants/image_path.dart';
import 'package:ui_task/constants/strings.dart';
import 'package:ui_task/controllers/nav_controller.dart';
import 'package:ui_task/views/screens/home/home_screen.dart';

class BottomNavScreen extends StatelessWidget {
  BottomNavScreen({Key? key}) : super(key: key);

  final controller = Get.put(NavController());

  List pageList = const [
   HomeScreen(),
    Center(
      child: Text("Search screen"),
    ),
    Center(
      child: Text("Record screen"),
    ),
    Center(
      child: Text("Saved screen"),
    ),
    Center(
      child: Text("Settings screen"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.pageIndex.value,
          onTap: (value) {
            controller.pageIndex.value = value;
          },
          selectedItemColor: selectedColor,
          unselectedItemColor: unSlectedColor,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                icHome,
                width: 19.w,
                height: 20.h,
                color: controller.pageIndex.value == 0 ? selectedColor : unSlectedColor,
              ),
              label: home,
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                icSearch,
                width: 19.w,
                height: 20.h,
                color: controller.pageIndex.value == 1 ? selectedColor : unSlectedColor,
              ),
              label: search,
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                icRecord,
                width: 19.w,
                height: 20.h,
                color: controller.pageIndex.value == 2
                    ? selectedColor
                    : unSlectedColor,
              ),
              label: record,
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                icSaved,
                width: 19.w,
                height: 20.h,
                color: controller.pageIndex.value == 3
                    ? selectedColor
                    : unSlectedColor,
              ),
              label: save,
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                icSetting,
                width: 19.w,
                height: 20.h,
                color: controller.pageIndex.value == 4
                    ? selectedColor
                    : unSlectedColor,
              ),
              label: setting,
            ),
          ],
        ),
        body: pageList[controller.pageIndex.value],
      );
    });
  }
}
