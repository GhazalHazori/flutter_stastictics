// import 'package:flutter/material.dart';
// import 'package:flutter_templat/core/enums/satistics_enum.dart';
// import 'package:flutter_templat/main.dart';
// import 'package:flutter_templat/ui/shared/colors.dart';
// import 'package:flutter_templat/ui/shared/custom_widgets/custom_Circular_Progress_Indicator.dart';
// import 'package:flutter_templat/ui/shared/custom_widgets/custom_container.dart';
// import 'package:flutter_templat/ui/shared/custom_widgets/custom_monthly.dart';
// import 'package:flutter_templat/ui/shared/custom_widgets/custom_text.dart';
// import 'package:flutter_templat/ui/shared/custom_widgets/custom_text_container.dart';
// import 'package:flutter_templat/ui/shared/custom_widgets/custom_weekly.dart';
// import 'package:flutter_templat/ui/shared/utlis.dart';
// import 'package:flutter_templat/ui/views/container_controller.dart';
// import 'package:get/get.dart';

// class ContainerView extends StatefulWidget {
//   const ContainerView({super.key});

//   @override
//   State<ContainerView> createState() => _ContainerViewState();
// }

// class _ContainerViewState extends State<ContainerView> {
//   ContainerController controller = Get.put(ContainerController());
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Obx(() => Column(
//               children: [
//                 Container(
//                   width: screenWidth(1),
//                   height: screenHeight(17),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       CustomTextContainer(
//                         text: "Weekly",
//                         statistics: Statistics.WEEKLY,
//                         containercolor:
//                             controller.changecolor(Statistics.WEEKLY),
//                         onPressed: () {
//                           controller.statisticsController.value =
//                               Statistics.WEEKLY;
//                         },
//                       ),
//                       CustomTextContainer(
//                         text: "Monthly",
//                         statistics: Statistics.MONTHLY,
//                         containercolor:
//                             controller.changecolor(Statistics.MONTHLY),
//                         onPressed: () {
//                           controller.statisticsController.value =
//                               Statistics.MONTHLY;
//                         },
//                       ),
//                       CustomTextContainer(
//                         text: "All",
//                         statistics: Statistics.ALL,
//                         containercolor: controller.changecolor(Statistics.ALL),
//                         onPressed: () {
//                           controller.statisticsController.value =
//                               Statistics.ALL;
//                         },
//                       )
//                     ],
//                   ),
//                   decoration: BoxDecoration(
//                       color: AppColors.mainareagreen,
//                       borderRadius: BorderRadius.circular(7),
//                       border: Border.all(color: AppColors.maingreeborder)),
//                 ),
//                 SizedBox(height: screenHeight(10)),
//                 content()
//               ],
//             )),
//       ),
//     ));
//   }

//   Widget content() {
//     Widget content;
//     switch (controller.statisticsController.value) {
//       case Statistics.WEEKLY:
//         content = Column(
//           children: [CustomWeekly(), screenWidth(5).ph, CustomContainer()],
//         );
//         break;
//       case Statistics.MONTHLY:
//         content = Column(
//           children: [CustomMonthly(), CustomContainer()],
//         );
//         break;
//       case Statistics.ALL:
//         content = Column(
//           children: [
//             CustomCircularProgress(
//                 text: "75%",
//                 progressvalue: 0.25,
//                 backgroundcolor: AppColors.mainyellowcolor,
//                 widthcontainer: screenWidth(3),
//                 heigthcontainer: screenHeight(6)),
//             CustomContainer()
//           ],
//         );
//     }
//     return content;
//   }
// }
