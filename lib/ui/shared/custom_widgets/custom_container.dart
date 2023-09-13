import 'package:flutter/material.dart';
import 'package:flutter_templat/core/enums/enum_container.dart';
import 'package:flutter_templat/core/enums/satistics_enum.dart';
import 'package:flutter_templat/main.dart';
import 'package:flutter_templat/ui/shared/colors.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_line_chart.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_task.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_view_row.dart';
import 'package:flutter_templat/ui/shared/utlis.dart';

import 'package:flutter_templat/ui/views/main_view/statistics_view/statistics_view_controller.dart';
import 'package:get/get.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({
    super.key,
  });

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  StatisticController controller = Get.put(StatisticController());
  static List<ChartData> chartData = [
    ChartData("W1", 10),
    ChartData("W2", 50),
    ChartData("W3", 25),
    ChartData("W4", 60),
    ChartData("W5", 40),
    ChartData("W6", 71),
    ChartData("W7", 60),
    ChartData("W8", 100),
  ];
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          width: screenWidth(1),
          height: screenHeight(2.5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.blacktext)),
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenWidth(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        controller.statisticsController == Statistics.WEEKLY
                            ? InkWell(
                                onTap: () {
                                  controller.enumController.value =
                                      ContainerEnum.DAY;
                                },
                                child: Container(
                                  child: CustomText(
                                      text: " Day",
                                      fonttext: screenWidth(18),
                                      colortext: controller
                                                  .enumController.value ==
                                              ContainerEnum.DAY
                                          ? controller.changecolor(controller
                                              .statisticsController.value)
                                          : AppColors.blacktext),
                                  width: screenWidth(6),
                                  height: screenHeight(30),
                                  decoration: BoxDecoration(
                                      border: controller.enumController.value ==
                                              ContainerEnum.DAY
                                          ? Border(
                                              bottom: BorderSide(
                                                  width: 2,
                                                  color: controller.changecolor(
                                                      controller
                                                          .statisticsController
                                                          .value)))
                                          : null),
                                ),
                              )
                            : InkWell(
                                onTap: () {
                                  controller.enumController.value =
                                      ContainerEnum.WEEK;
                                },
                                child: Container(
                                  child: Center(
                                      child: CustomText(
                                    text: "Week",
                                    colortext:
                                        controller.enumController.value ==
                                                ContainerEnum.WEEK
                                            ? controller.changecolor(controller
                                                .statisticsController.value)
                                            : AppColors.blacktext,
                                  )),
                                  width: screenWidth(6),
                                  height: screenHeight(30),
                                  decoration: BoxDecoration(
                                      border: controller.enumController.value ==
                                              ContainerEnum.WEEK
                                          ? Border(
                                              bottom: BorderSide(
                                                  width: 2,
                                                  color: controller.changecolor(
                                                      controller
                                                          .statisticsController
                                                          .value)))
                                          : null),
                                ),
                              ),
                        screenWidth(3).pw,
                        InkWell(
                            onTap: () {
                              controller.enumController.value =
                                  ContainerEnum.TASK;
                            },
                            child: Container(
                                width: screenWidth(6),
                                height: screenHeight(30),
                                decoration: BoxDecoration(
                                    border: controller.enumController.value ==
                                            ContainerEnum.TASK
                                        ? Border(
                                            bottom: BorderSide(
                                                width: 2,
                                                color: controller.changecolor(controller
                                                    .statisticsController
                                                    .value)))
                                        : null),
                                child: Center(
                                    child: CustomText(
                                        text: "Task",
                                        colortext: controller.enumController.value ==
                                                ContainerEnum.TASK
                                            ? controller.changecolor(
                                                controller.statisticsController.value)
                                            : AppColors.blacktext)))),
                      ],
                    ),
                  ),
                  screenWidth(30).ph,
                  Container(
                    color: AppColors.blacktext,
                    width: screenWidth(1),
                    height: screenHeight(700),
                  )
                ],
              ),
              screenWidth(30).ph,
              controller.enumController == ContainerEnum.DAY &&
                      controller.statisticsController.value == Statistics.WEEKLY
                  ? CustomViewRow(
                      activcolor: controller
                          .changecolor(controller.statisticsController.value),
                    )
                  : controller.enumController == ContainerEnum.WEEK &&
                              controller.statisticsController ==
                                  Statistics.MONTHLY ||
                          controller.enumController == ContainerEnum.WEEK &&
                              controller.statisticsController == Statistics.ALL
                      ? CustomLineChart(
                          chartData,
                          linecolor: controller.statisticsController ==
                                  Statistics.MONTHLY
                              ? AppColors.mainredcolor
                              : AppColors.mainyellowcolor,
                        )
                      : CustomTask(
                          activcolor: controller.changecolor(
                              controller.statisticsController.value),
                        )
            ],
          ),
        ));
  }
}
