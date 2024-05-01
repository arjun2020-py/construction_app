import 'package:construction_app/ui/compoents/custom_text_filed.dart';
import 'package:construction_app/ui/pages/UserHome/screen/HouseBuilding/house_building.dart';
import 'package:construction_app/utils/color.dart';
import 'package:flutter/material.dart';

import 'screen/BusinessStore/bussines_store.dart';
import 'screen/CorporateOffice/corporate_office.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarBgColor,
            centerTitle: true,
            title: CustomTextWidget(
              text: 'Dashboad',
              color: appBarTextColor,
            ),
            bottom: TabBar(
              // Set indicator to null to remove the line
              indicator: BoxDecoration(color: Colors.transparent),
              tabs: [
                //color: Color(0xffc3a080)
                CustomTextWidget(
                  text: 'Business Store',
                  color: appBarTextColor,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),

                CustomTextWidget(
                  text: 'Corporate Office',
                  color: appBarTextColor,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
                CustomTextWidget(
                  text: 'House Building',
                  color: appBarTextColor,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
          backgroundColor: appBgColor,
          body: TabBarView(
            children: [
              BusinessStore(),
              CorporateOffice(),
              HouseBuilding(),
            ],
          ),
        ));
  }
}
