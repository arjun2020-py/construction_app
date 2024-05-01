import 'package:flutter/material.dart';

import '../../../../compoents/custom_text_filed.dart';
import '../../../UserDeatiled/screen/user_details.dart';

class HouseBuilding extends StatelessWidget {
  const HouseBuilding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   
      SafeArea(
          child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScreenHomeBuildingDetails(index: index,),)),
                                  child: Card(
                    child: ListTile(
                      leading: Image.asset('assets/images/house_prev_ui.png'),
                      title: CustomTextWidget(text: 'House Building'),
                      subtitle: CustomTextWidget(text: 'kozhikode'),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}