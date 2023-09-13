import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_templat/main.dart';
import 'package:flutter_templat/ui/shared/colors.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templat/ui/shared/utlis.dart';

class CustomBestDay extends StatefulWidget {
  const CustomBestDay(
      {super.key, required this.containerwidth, required this.containerhiegth});
  final double containerwidth;
  final double containerhiegth;

  @override
  State<CustomBestDay> createState() => _CustomBestDayState();
}

class _CustomBestDayState extends State<CustomBestDay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.containerwidth,
      height: widget.containerhiegth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.maingreeborder, width: 1.5)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth(20)),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/images/ic_cup.svg",
              color: AppColors.maingreeborder,
              width: screenWidth(5),
              height: screenHeight(15),
            ),
            screenWidth(30).pw,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "Best Day",
                  colortext: AppColors.maingreencolor,
                ),
                screenWidth(60).ph,
                CustomText(
                  text: "tuesday",
                  colortext: AppColors.blacktext,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
