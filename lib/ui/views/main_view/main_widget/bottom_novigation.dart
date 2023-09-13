import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_templat/core/enums/bottom_navigation_enum.dart';
import 'package:flutter_templat/ui/shared/colors.dart';
import 'package:flutter_templat/ui/shared/utlis.dart';

class BottomNavigationWidget extends StatefulWidget {
  final BottomNavigationEnum navitm;
  final Function(BottomNavigationEnum, int) ontap;
  const BottomNavigationWidget(
      {super.key, required this.navitm, required this.ontap});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: screenWidth(6),
          ),
          child: Container(
            width: screenWidth(1),
            height: screenHeight(50),
            decoration: BoxDecoration(
                color: AppColors.whitecolor,
                border: Border(top: BorderSide(color: AppColors.greycolor))),
          ),
        ),
        // SvgPicture.asset(
        //   'assets/imagesbg_bottom_navigation.svg',
        //   fit: BoxFit.fitWidth,
        // ),

        Positioned(
          bottom: screenWidth(20),
          left: screenWidth(20),
          right: screenWidth(20),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth(200)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  navItem(
                      ontap: () {
                        widget.ontap(BottomNavigationEnum.HOME, 0);
                      },
                      size: size,
                      imagename: 'ic_home (1)',
                      isslected: widget.navitm == BottomNavigationEnum.HOME),
                  navItem(
                      ontap: () {
                        widget.ontap(BottomNavigationEnum.STATISTIC, 1);
                      },
                      size: size,
                      imagename: 'ic_statistics',
                      isslected:
                          widget.navitm == BottomNavigationEnum.STATISTIC),
                  navItem(
                      ontap: () {
                        widget.ontap(BottomNavigationEnum.NOTE, 2);
                      },
                      size: size,
                      imagename: 'ic_task',
                      isslected: widget.navitm == BottomNavigationEnum.NOTE),
                  navItem(
                      ontap: () {
                        widget.ontap(BottomNavigationEnum.STAR, 3);
                      },
                      size: size,
                      imagename: 'ic_event',
                      isslected: widget.navitm == BottomNavigationEnum.STAR),
                  navItem(
                      ontap: () {
                        widget.ontap(BottomNavigationEnum.LOCATION, 4);
                      },
                      size: size,
                      imagename: 'ic_location',
                      isslected: widget.navitm == BottomNavigationEnum.LOCATION)
                ]),
          ),
        ),
      ],
    );
  }

  Widget navItem(
      {required Size size,
      required String imagename,
      required bool isslected,
      required Function ontap}) {
    return InkWell(
      onTap: () {
        ontap();
      },
      child: SvgPicture.asset(
        'assets/images/$imagename.svg',
        color: isslected ? AppColors.mainareagreen : AppColors.greycolor,
        width: screenWidth(8),
      ),
    );
  }
}
