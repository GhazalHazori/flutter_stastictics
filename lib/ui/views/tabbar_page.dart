import 'package:flutter/material.dart';
import 'package:flutter_templat/ui/shared/colors.dart';
import 'package:flutter_templat/ui/shared/utlis.dart';
import 'package:flutter_templat/ui/views/tabbar_pages/tab_page1.dart';
import 'package:flutter_templat/ui/views/tabbar_pages/tab_page2.dart';
import 'package:flutter_templat/ui/views/tabbar_pages/tab_page3.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(height: 50),
                Container(
                  height: screenWidth(7),
                  width: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: AppColors.mainareagreen,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: screenWidth(350)),
                        child: TabBar(
                          unselectedLabelColor: AppColors.blacktext,
                          labelColor: AppColors.whitecolor,
                          indicatorColor: Colors.white,
                          indicatorWeight: 2,
                          indicator: BoxDecoration(
                            color: AppColors.maingreeborder,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          controller: tabController,
                          tabs: [
                            Tab(
                              text: 'Tab 1',
                            ),
                            Tab(
                              text: 'Tab 1',
                            ),
                            Tab(
                              text: 'Tab3',
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Tab1(),
                      Tab2(),
                      Tab3(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
