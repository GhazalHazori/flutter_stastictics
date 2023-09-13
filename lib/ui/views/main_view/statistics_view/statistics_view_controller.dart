import 'package:flutter/material.dart';
import 'package:flutter_templat/core/enums/enum_container.dart';
import 'package:flutter_templat/core/enums/satistics_enum.dart';
import 'package:flutter_templat/core/services/base_controller.dart';
import 'package:flutter_templat/ui/shared/colors.dart';
import 'package:get/get.dart';

class StatisticController extends BaseControoler {
  Rx<Statistics> statisticsController = Statistics.WEEKLY.obs;
  Rx<ContainerEnum> enumController = ContainerEnum.DAY.obs;
  Color changecolor(Statistics statistics) {
    switch (statistics) {
      case Statistics.WEEKLY:
        return AppColors.maingreeborder;
      case Statistics.MONTHLY:
        return AppColors.mainredcolor;
      case Statistics.ALL:
        return AppColors.mainyellowcolor;
    }
  }
}
