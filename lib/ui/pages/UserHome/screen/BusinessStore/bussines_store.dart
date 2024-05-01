import 'package:flutter/material.dart';

import '../../../../compoents/custom_text_filed.dart';
import '../../../UserDeatiled/screen/businessStoreDeatiled/screen_business_details.dart';

class BusinessStore extends StatelessWidget {
  const BusinessStore({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
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
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScreenBusinessDetails(index: index,),)),
                                  child: Card(
                    child: ListTile(
                      leading: Image.asset('assets/images/busines.png'),
                      title: CustomTextWidget(text: 'Business store',),
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