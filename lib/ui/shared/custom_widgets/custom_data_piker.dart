import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDataPiker extends StatefulWidget {
  const CustomDataPiker({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomDataPiker> createState() => _CustomDataPikerState();
}

class _CustomDataPikerState extends State<CustomDataPiker> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _selectDate(context);
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(DateFormat('dd_MM_yyyy').format(selectedDate).toString()),
          // const SizedBox(
          //   height: 20.0,
          // ),
        ],
      ),
    );
  }
}
