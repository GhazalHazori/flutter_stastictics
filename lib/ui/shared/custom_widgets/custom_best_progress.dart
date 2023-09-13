import 'package:flutter/material.dart';
import 'package:flutter_templat/main.dart';
import 'package:flutter_templat/ui/shared/colors.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templat/ui/shared/utlis.dart';

class CustomBestProgressIn extends StatefulWidget {
  const CustomBestProgressIn({super.key});

  @override
  State<CustomBestProgressIn> createState() => _CustomBestProgressInState();
}

class _CustomBestProgressInState extends State<CustomBestProgressIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(2.4),
      height: screenHeight(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.maingreeborder, width: 1.5)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: screenWidth(20)),
        child: Column(
          children: [
            CustomText(
              text: "Best Progrees in:",
              colortext: AppColors.maingreencolor,
              fonttext: screenWidth(22),
            ),
            screenWidth(30).ph,
            CustomText(
              text: "Go To Gaym",
              colortext: AppColors.blacktext,
              fonttext: screenWidth(22),
            )
          ],
        ),
      ),
    );
  }
}
