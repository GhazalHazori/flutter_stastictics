import 'package:flutter/material.dart';
import 'package:flutter_templat/core/enums/satistics_enum.dart';
import 'package:flutter_templat/ui/shared/colors.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templat/ui/shared/utlis.dart';

import 'package:flutter_templat/ui/views/main_view/statistics_view/statistics_view_controller.dart';
import 'package:get/get.dart';

class CustomTextContainer extends StatefulWidget {
  const CustomTextContainer(
      {super.key,
      required this.text,
      required this.statistics,
      required this.containercolor,
      required this.onPressed,
      this.widthcontainer});
  final String text;
  final Statistics statistics;
  final Color containercolor;
  final Function onPressed;
  final double? widthcontainer;
  @override
  State<CustomTextContainer> createState() => _CustomTextContainerState();
}

class _CustomTextContainerState extends State<CustomTextContainer> {
  StatisticController controller = Get.put(StatisticController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => InkWell(
          onTap: () {
            widget.onPressed;
            controller.statisticsController.value = widget.statistics;
          },
          child: Container(
            height: screenHeight(3),
            width: widget.widthcontainer ?? screenWidth(4),
            child: Center(
              child: CustomText(
                text: "${widget.text}",
              ),
            ),
            decoration: BoxDecoration(
              color: widget.statistics == controller.statisticsController.value
                  ? widget.containercolor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(9),
              border: Border.all(
                  color:
                      widget.statistics == controller.statisticsController.value
                          ? AppColors.maingreeborder
                          : Colors.transparent),
            ),
          ),
        ));
  }
}
