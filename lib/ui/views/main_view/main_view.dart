import 'package:flutter/material.dart';
import 'package:flutter_templat/core/enums/bottom_navigation_enum.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_drawer.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_mian.dart';
import 'package:flutter_templat/ui/shared/utlis.dart';
import 'package:flutter_templat/ui/views/main_view/location_view/location_view.dart';
import 'package:flutter_templat/ui/views/main_view/main_widget/bottom_novigation.dart';
import 'package:flutter_templat/ui/views/main_view/note_view/note_view.dart';
import 'package:flutter_templat/ui/views/main_view/star_view/star_view.dart';
import 'package:flutter_templat/ui/views/main_view/statistics_view/statistics_view.dart';
import 'package:get/get.dart';

import 'home_view/home_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  PageController controller = PageController(initialPage: 0);
  BottomNavigationEnum selected = BottomNavigationEnum.HOME;
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  //maincontroller controller = Get.put(maincontroller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: key,
      appBar: PreferredSize(
          child: CustomMain(), preferredSize: Size.fromHeight(screenWidth(1))),
      // drawer: CustomDrawer(),
      bottomNavigationBar: BottomNavigationWidget(
        navitm: selected,
        ontap: (select, pagenumber) {
          controller.jumpToPage(pagenumber);

          setState(() {
            selected = select;
          });
        },
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: [
          HomeView(),
          StatisticView(),
          NoteView(),
          StarView(),
          LocationView()
        ],
      ),
    ));
  }
}
