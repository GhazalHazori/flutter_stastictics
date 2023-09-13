import 'package:flutter/material.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_row.dart';
import 'package:flutter_templat/ui/shared/utlis.dart';

class CustomViewRow extends StatefulWidget {
  const CustomViewRow({super.key, required this.activcolor});
  final Color activcolor;

  @override
  State<CustomViewRow> createState() => _CustomViewRowState();
}

class _CustomViewRowState extends State<CustomViewRow> {
  static List<String> weekdays = [
    "Saturday",
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday"
  ];
  static List<double> ProgresValue = [0.8, 0.6, 0.4, 1, 0.1, 0.75, 0.5];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: screenWidth(2),
        child: ListView.builder(
          itemCount: ProgresValue.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: screenWidth(80)),
              child: CustomRow(
                activcolor: widget.activcolor,
                progressvalue: ProgresValue[index],
                text: '${weekdays[index]}',
              ),
            );
          },
        ),
      ),
    );
  }
}
