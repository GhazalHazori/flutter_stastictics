import 'package:flutter/material.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_text.dart';

class Tab3 extends StatefulWidget {
  const Tab3({super.key});

  @override
  State<Tab3> createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [CustomText(text: "Tab3")],
      ),
    );
  }
}
