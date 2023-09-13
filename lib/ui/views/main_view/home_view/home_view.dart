import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_templat/main.dart';
import 'package:flutter_templat/ui/shared/colors.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_data_piker.dart';
import 'package:flutter_templat/ui/shared/custom_widgets/custom_text.dart';
import 'package:flutter_templat/ui/shared/utlis.dart';
import 'package:flutter_templat/ui/views/main_view/home_view/home_view_controller.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // Stack(
          //   children: [
          //     Container(
          //       width: screenWidth(1),
          //       height: screenHeight(5),
          //       decoration: BoxDecoration(color: AppColors.mainareagreen),
          //     ),
          //     Padding(
          //       padding: EdgeInsets.symmetric(
          //           horizontal: screenWidth(20), vertical: screenWidth(3)),
          //       child: Container(
          //         width: screenWidth(1),
          //         height: screenHeight(13),
          //         decoration: BoxDecoration(
          //             color: AppColors.whitecolor,
          //             borderRadius: BorderRadius.circular(10)),
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //           children: [
          //             CustomText(
          //               text: "Statistic",
          //               fonttext: screenWidth(14),
          //               weigthtext: FontWeight.bold,
          //               colortext: AppColors.blacktext,
          //             ),
          //             screenWidth(5).pw,
          //             SvgPicture.asset(
          //               "assets/images/ic_date.svg",
          //               width: screenWidth(10),
          //             ),
          //             CustomDataPiker()
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
