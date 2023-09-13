import 'package:flutter/material.dart';
import 'package:flutter_templat/main.dart';
import 'package:flutter_templat/ui/shared/colors.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templat/ui/shared/utlis.dart';

class CustomWeekProgressIn extends StatefulWidget {
  const CustomWeekProgressIn({super.key});

  @override
  State<CustomWeekProgressIn> createState() => _CustomWeekProgressInState();
}

class _CustomWeekProgressInState extends State<CustomWeekProgressIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(2.4),
      height: screenHeight(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.mainredcolor, width: 1.5)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: screenWidth(25)),
        child: Column(
          children: [
            CustomText(
              text: "Weak Progress in:",
              colortext: AppColors.mainredcolor,
              fonttext: screenWidth(22),
            ),
            screenWidth(20).ph,
            CustomText(
              text: "Read Book",
              colortext: AppColors.blacktext,
              fonttext: screenWidth(22),
            )
          ],
        ),
      ),
    );
  }
}
