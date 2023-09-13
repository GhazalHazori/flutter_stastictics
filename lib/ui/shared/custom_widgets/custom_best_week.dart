import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_templat/main.dart';
import 'package:flutter_templat/ui/shared/colors.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templat/ui/shared/utlis.dart';

class CustomBestWeek extends StatefulWidget {
  const CustomBestWeek({super.key});

  @override
  State<CustomBestWeek> createState() => _CustomBestWeekState();
}

class _CustomBestWeekState extends State<CustomBestWeek> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(2),
      height: screenHeight(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.mainredcolor, width: 1.5)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth(90)),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/images/ic_cup.svg",
              color: AppColors.mainredcolor,
              width: screenWidth(5),
              height: screenHeight(15),
            ),
            CustomText(
              text: "Best Week",
              colortext: AppColors.mainredcolor,
            ),
            screenWidth(50).pw,
            CustomText(text: "1")
          ],
        ),
      ),
    );
  }
}
