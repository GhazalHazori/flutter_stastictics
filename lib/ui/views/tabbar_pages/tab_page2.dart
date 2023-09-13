import 'package:flutter/material.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_text.dart';

class Tab2 extends StatefulWidget {
  const Tab2({super.key});

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [CustomText(text: "Tab2")],
      ),
    );
  }
}
