import 'package:flutter/material.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_row.dart';
import 'package:flutter_templat/ui/shared/utlis.dart';

class CustomTask extends StatefulWidget {
  const CustomTask({super.key, required this.activcolor});
  final Color activcolor;

  @override
  State<CustomTask> createState() => _CustomTaskState();
}

class _CustomTaskState extends State<CustomTask> {
  static List<String> jobtask = [
    "Read Book",
    "Go to Gym",
    "Wash Car",
    "Study",
    "Go To University",
  ];
  static List<double> ProgresValue = [
    0.8,
    0.6,
    0.4,
    1,
    0.1,
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          itemCount: ProgresValue.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: screenWidth(60)),
              child: CustomRow(
                progressvalue: ProgresValue[index],
                text: '${jobtask[index]}',
                activcolor: widget.activcolor,
              ),
            );
          },
        ),
      ),
    );
  }
}
