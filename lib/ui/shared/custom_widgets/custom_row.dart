import 'package:flutter/material.dart';
import 'package:flutter_templat/ui/shared/colors.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_progress_indecator.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templat/ui/shared/utlis.dart';

class CustomRow extends StatefulWidget {
  const CustomRow(
      {super.key,
      required this.text,
      required this.progressvalue,
      required this.activcolor});
  final String text;
  final double progressvalue;
  final Color activcolor;

  @override
  State<CustomRow> createState() => _CustomRowState();
}

class _CustomRowState extends State<CustomRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomText(
          text: "${widget.text}",
          fonttext: screenWidth(25),
        ),
        CustomProgressIndecator(
            activcolor: widget.activcolor, progressvalue: widget.progressvalue),
        CustomText(
          text: "${(widget.progressvalue * 100).toInt()}%",
          fonttext: screenWidth(35),
        )
      ],
    );
  }
}
