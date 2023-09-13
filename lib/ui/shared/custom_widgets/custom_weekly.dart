import 'package:flutter/material.dart';
import 'package:flutter_templat/main.dart';
import 'package:flutter_templat/ui/shared/colors.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_Circular_Progress_Indicator.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_best_day.dart';
import 'package:flutter_templat/ui/shared/utlis.dart';

class CustomWeekly extends StatefulWidget {
  const CustomWeekly({super.key});

  @override
  State<CustomWeekly> createState() => _CustomWeeklyState();
}

class _CustomWeeklyState extends State<CustomWeekly> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomCircularProgress(
          progressvalue: 0.75,
          fonttext: screenWidth(10),
          text: "75%",
          backgroundcolor: AppColors.maingreeborder,
        ),
        screenWidth(15).pw,
        CustomBestDay(
          containerhiegth: screenWidth(4),
          containerwidth: screenHeight(4),
        )
      ],
    );
  }
}
