import 'package:flutter/material.dart';
import 'package:flutter_templat/ui/shared/colors.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_text.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CustomCircularProgress extends StatefulWidget {
  const CustomCircularProgress({
    super.key,
    required this.progressvalue,
    required this.backgroundcolor,
    this.widthcontainer,
    this.text,
    this.fonttext,
  });

  final double progressvalue;
  final Color backgroundcolor;
  final double? widthcontainer;

  final String? text;
  final double? fonttext;

  @override
  State<CustomCircularProgress> createState() => _CustomCircularProgressState();
}

class _CustomCircularProgressState extends State<CustomCircularProgress> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: CircularPercentIndicator(
        percent: widget.progressvalue,
        progressColor: widget.backgroundcolor,
        radius: widget.widthcontainer ?? 60,
        backgroundColor: AppColors.greycolor,
        lineWidth: 7.0,
        reverse: true,
        circularStrokeCap: CircularStrokeCap.round,
        center: CustomText(
          text: "${widget.text}",
          weigthtext: FontWeight.bold,
          fonttext: widget.fonttext,
        ),
      ),
    );
  }
}
