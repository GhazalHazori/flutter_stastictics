// import 'package:flutter/material.dart';
// import 'package:flutter_templat/main.dart';
// import 'package:flutter_templat/ui/shared/colors.dart';
// import 'package:flutter_templat/ui/shared/custom_widgets/custom_Circular_Progress_Indicator.dart';
// import 'package:flutter_templat/ui/shared/custom_widgets/custom_best_day.dart';
// import 'package:flutter_templat/ui/shared/custom_widgets/custom_best_progress.dart';
// import 'package:flutter_templat/ui/shared/custom_widgets/custom_best_week.dart';
// import 'package:flutter_templat/ui/shared/custom_widgets/custom_container.dart';
// import 'package:flutter_templat/ui/shared/custom_widgets/custom_line_chart.dart';
// import 'package:flutter_templat/ui/shared/custom_widgets/custom_monthly.dart';
// import 'package:flutter_templat/ui/shared/custom_widgets/custom_progress_indecator.dart';
// import 'package:flutter_templat/ui/shared/custom_widgets/custom_row.dart';
// import 'package:flutter_templat/ui/shared/custom_widgets/custom_view_row.dart';
// import 'package:flutter_templat/ui/shared/custom_widgets/custom_week_progress_in.dart';
// import 'package:flutter_templat/ui/shared/custom_widgets/custom_weekly.dart';
// import 'package:flutter_templat/ui/shared/utlis.dart';

// class MainView extends StatefulWidget {
//   const MainView({super.key});

//   @override
//   State<MainView> createState() => _MainViewState();
// }

// class _MainViewState extends State<MainView> {
//   List<ChartData> chartData = [
//     ChartData("W1", 10),
//     ChartData("W2", 50),
//     ChartData("W3", 25),
//     ChartData("W4", 60),
//     ChartData("W5", 40),
//     ChartData("W6", 70),
//     ChartData("W7", 60),
//     ChartData("W8", 80),
//   ];

//   Widget build(BuildContext context) {
//     // final series = [
//     //   Series<ChartData, String>(
//     //     id: 'chartData',
//     //     colorFn: (_, __) => MaterialPalette.blue.shadeDefault,
//     //     domainFn: (ChartData data, _) => data.day,
//     //     measureFn: (ChartData data, _) => data.value,
//     //     data: chartData,
//     //   ),
//     // ];
//     return SafeArea(
//         child: Scaffold(
//       body: Padding(
//         padding: EdgeInsets.symmetric(vertical: screenWidth(50)),
//         child: Column(
//           children: [
//             // CustomCircularProgress(
//             //   progressvalue: 0.25,
//             //   backgroundcolor: AppColors.maingreencolor,
//             //   widthcontainer: screenWidth(5),
//             //   heigthcontainer: screenWidth(5),
//             //   text: "75%",
//             // ),
//             // CustomProgressIndecator(
//             //   activcolor: AppColors.maingreencolor,
//             //   progressvalue: 0.75,
//             // ),
//             // CustomBestProgressIn(),
//             // screenWidth(10).ph,
//             // CustomWeekProgressIn(),
//             // screenWidth(10).ph,
//             // CustomBestDay(),
//             // screenWidth(10).ph,
//             // CustomBestWeek(),
//             screenWidth(10).ph,
//             // CustomContainer(),
//             // screenWidth(10).ph,
//             // CustomRow(
//             //   progressvalue: 0.25,
//             //   text: 'Sunday',
//             // ),
//             //  CustomLineChart(seriesList: series,animate: true,),
//           ],
//         ),
//       ),
//     ));
//   }
// }
