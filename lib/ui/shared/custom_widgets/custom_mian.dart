import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_templat/main.dart';
import 'package:flutter_templat/ui/shared/colors.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_data_piker.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templat/ui/shared/utlis.dart';

class CustomMain extends StatefulWidget {
  const CustomMain({super.key});

  @override
  State<CustomMain> createState() => _CustomMainState();
}

class _CustomMainState extends State<CustomMain> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          width: screenWidth(1),
          height: screenHeight(5),
          decoration: BoxDecoration(color: AppColors.mainareagreen),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth(20), vertical: screenHeight(6)),
          child: Container(
            width: screenWidth(1),
            height: screenHeight(13),
            decoration: BoxDecoration(
                color: AppColors.whitecolor,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                  text: "Statistic",
                  fonttext: screenWidth(14),
                  weigthtext: FontWeight.bold,
                  colortext: AppColors.blacktext,
                ),
                screenWidth(5).pw,
                SvgPicture.asset(
                  "assets/images/ic_date.svg",
                  width: screenWidth(10),
                ),
                CustomDataPiker()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
