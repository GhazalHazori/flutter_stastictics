import 'package:flutter/material.dart';
import 'package:flutter_templat/ui/shared/colors.dart';
import 'package:flutter_templat/ui/shared/utlis.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CustomProgressIndecator extends StatefulWidget {
  const CustomProgressIndecator(
      {super.key, required this.activcolor, required this.progressvalue});
  final Color activcolor;
  final double progressvalue;

  @override
  State<CustomProgressIndecator> createState() =>
      _CustomProgressIndecatorState();
}

class _CustomProgressIndecatorState extends State<CustomProgressIndecator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(75), // Set the height of the progress bar
      width: screenWidth(2), // Set the width to fill the available space
      decoration: BoxDecoration(
        // Set the background color
        borderRadius: BorderRadius.circular(30), // Set the border radius
      ),
      child: ClipRRect(
        child: LinearPercentIndicator(
          barRadius: Radius.circular(5),
          percent: widget.progressvalue,
          lineHeight: screenWidth(30),
          progressColor: widget.activcolor,
          backgroundColor: Colors
              .grey, // Set the background color of the progress bar to transparent
        ),
      ),
    );
  }
}
