import 'package:flutter/material.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_text.dart';

class Tab1 extends StatefulWidget {
  const Tab1({super.key});

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [CustomText(text: "tab1")],
      ),
    );
  }
}
