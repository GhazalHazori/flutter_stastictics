import 'package:flutter/material.dart';
import 'package:flutter_templat/core/enums/satistics_enum.dart';
import 'package:flutter_templat/main.dart';
import 'package:flutter_templat/ui/shared/colors.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_Circular_Progress_Indicator.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_container.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_monthly.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_text_container.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_weekly.dart';
import 'package:flutter_templat/ui/shared/utlis.dart';
import 'package:flutter_templat/ui/views/main_view/statistics_view/statistics_view_controller.dart';
import 'package:get/get.dart';

class StatisticView extends StatefulWidget {
  const StatisticView({super.key});

  @override
  State<StatisticView> createState() => _StatisticViewState();
}

class _StatisticViewState extends State<StatisticView> {
  StatisticController controller = Get.put(StatisticController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(() => ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  width: screenWidth(1),
                  height: screenHeight(17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextContainer(
                        text: "Weekly",
                        statistics: Statistics.WEEKLY,
                        containercolor:
                            controller.changecolor(Statistics.WEEKLY),
                        onPressed: () {
                          controller.statisticsController.value =
                              Statistics.WEEKLY;
                        },
                      ),
                      screenWidth(10).pw,
                      CustomTextContainer(
                        text: "Monthly",
                        statistics: Statistics.MONTHLY,
                        containercolor:
                            controller.changecolor(Statistics.MONTHLY),
                        onPressed: () {
                          controller.statisticsController.value =
                              Statistics.MONTHLY;
                        },
                      ),
                      screenWidth(12).pw,
                      CustomTextContainer(
                        widthcontainer: screenWidth(3.75),
                        text: "All",
                        statistics: Statistics.ALL,
                        containercolor: controller.changecolor(Statistics.ALL),
                        onPressed: () {
                          controller.statisticsController.value =
                              Statistics.ALL;
                        },
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.mainareagreen,
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(color: AppColors.maingreeborder)),
                ),
                SizedBox(height: screenHeight(10)),
                content()
              ],
            )),
      ),
    );
  }

  Widget content() {
    Widget content;
    switch (controller.statisticsController.value) {
      case Statistics.WEEKLY:
        content = Column(
          children: [CustomWeekly(), screenWidth(5).ph, CustomContainer()],
        );
        break;
      case Statistics.MONTHLY:
        content = Column(
          children: [CustomMonthly(), screenWidth(5).ph, CustomContainer()],
        );
        break;
      case Statistics.ALL:
        content = Column(
          children: [
            CustomCircularProgress(
              text: "75%",
              fonttext: screenWidth(10),
              progressvalue: 0.75,
              backgroundcolor: AppColors.mainyellowcolor,
              widthcontainer: screenWidth(5),
            ),
            screenWidth(10).ph,
            CustomContainer()
          ],
        );
    }
    return content;
  }
}
