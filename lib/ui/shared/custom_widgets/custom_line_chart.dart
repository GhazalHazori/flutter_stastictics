// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class CustomLineChart extends StatefulWidget {
//   const CustomLineChart({
//     super.key,
//   });

//   @override
//   State<CustomLineChart> createState() => _CustomLineChartState();
// }

// List<SalesData> getChartData() {
//   final List<SalesData> chartdata = [
//     SalesData(2017, 25),
//     SalesData(2018, 12),
//     SalesData(2019, 24),
//     SalesData(2020, 30),
//   ];
//   return chartdata;
// }

// class _CustomLineChartState extends State<CustomLineChart> {
//   List<SalesData> _chartData = [];
//   @override
//   void initState() {
//     _chartData = getChartData();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SfCartesianChart(
//       series: <ChartSeries>[
//         LineSeries<SalesData, double>(
//           dataSource: _chartData,
//           xValueMapper: (SalesData sales, _) => sales.year,
//           yValueMapper: (SalesData sales, _) => sales.sales,
//         )
//       ],
//     );
//   }
// }

// class SalesData {
//   SalesData(this.year, this.sales);
//   final double year;
//   final double sales;
// }
// import 'package:charts_flutter/flutter.dart';
// import 'package:flutter/material.dart';

// class CustomLineChart extends StatelessWidget {
//   final List<Series>? seriesList;
//   final bool? animate;

//   CustomLineChart({this.seriesList, this.animate});
//   List<ChartData> chartData = [
//     ChartData("Saturday", 0.8),
//     ChartData("Sunday", 0.6),
//     ChartData("Monday", 0.4),
//     ChartData("Tuesday", 1),
//     ChartData("Wednesday", 0.1),
//     ChartData("Thursday", 0.75),
//     ChartData("Friday", 0.5),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return LineChart(
//       seriesList,
//       animate: animate,
//       defaultRenderer: LineRendererConfig(
//         includeArea: true,
//         stacked: true,
//       ),
//       behaviors: [
//         ChartTitle('Day',
//             behaviorPosition: BehaviorPosition.bottom,
//             titleOutsideJustification: OutsideJustification.middleDrawArea),
//         ChartTitle('Value',
//             behaviorPosition: BehaviorPosition.start,
//             titleOutsideJustification: OutsideJustification.middleDrawArea),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_templat/ui/shared/colors.dart';
import 'package:flutter_templat/ui/shared/utlis.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomLineChart extends StatefulWidget {
  final List<ChartData> chartData;

  CustomLineChart(this.chartData, {required this.linecolor});
  final Color linecolor;
  @override
  State<CustomLineChart> createState() => _CustomLineChartState();
}

class _CustomLineChartState extends State<CustomLineChart> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: screenWidth(1),
        height: screenHeight(4),
        child: SfCartesianChart(
            plotAreaBorderColor: Colors.transparent,
            plotAreaBorderWidth: 2,
            primaryXAxis: CategoryAxis(
                axisLine: AxisLine(color: AppColors.maingreeborder, width: 2),
                majorGridLines: MajorGridLines(color: Colors.transparent),
                maximum: 3),
            series: <ChartSeries>[
              LineSeries<ChartData, String>(
                color: widget.linecolor,
                dataSource: widget.chartData,
                xValueMapper: (ChartData data, _) => data.day,
                yValueMapper: (ChartData data, _) => data.value,
              ),
            ],
            primaryYAxis: NumericAxis(
                majorGridLines: MajorGridLines(width: 0),
                axisLine: AxisLine(color: AppColors.maingreeborder, width: 2),
                minorGridLines: MinorGridLines(
                  color: Colors.transparent,
                  width: 0,
                ),
                maximum: 100,
                minimum: 5)),
      ),
    );
  }
}

class ChartData {
  final String day;
  final double value;

  ChartData(this.day, this.value);
}
