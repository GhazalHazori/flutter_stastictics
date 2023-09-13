import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_templat/core/services/base_controller.dart';
import 'package:get/get.dart';

class HomeController extends BaseControoler {
  // var _dateController = TextEditingController().obs;
  RxString datecontroller = "".obs;
  String showDatePicker(BuildContext context) {
    DatePicker.showDatePicker(
      context,
      showTitleActions: true,
      minTime: DateTime(2000, 1, 1),
      maxTime: DateTime(2030, 12, 31),
      onConfirm: (date) {
        datecontroller.value = date.toString();
      },
      currentTime: DateTime.now(), // Set the current date as the initial value
      locale: LocaleType.en,
    );
    return datecontroller.value;
  }
}
