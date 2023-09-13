import 'package:flutter/material.dart';
import 'package:flutter_templat/main.dart';
import 'package:flutter_templat/ui/shared/colors.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_Circular_Progress_Indicator.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_best_day.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_best_progress.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_best_week.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_week_progress_in.dart';
import 'package:flutter_templat/ui/shared/utlis.dart';

class CustomMonthly extends StatefulWidget {
  const CustomMonthly({super.key});

  @override
  State<CustomMonthly> createState() => _CustomMonthlyState();
}

class _CustomMonthlyState extends State<CustomMonthly> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenHeight(500)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomCircularProgress(
                text: "75%",
                fonttext: screenWidth(12),
                progressvalue: 0.75,
                backgroundcolor: AppColors.mainredcolor,
              ),
              screenWidth(6).pw,
              CustomBestProgressIn()
            ],
          ),
          screenWidth(40).ph,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomBestWeek(),
              screenWidth(50).pw,
              CustomWeekProgressIn()
            ],
          )
        ],
      ),
    );
  }
}
