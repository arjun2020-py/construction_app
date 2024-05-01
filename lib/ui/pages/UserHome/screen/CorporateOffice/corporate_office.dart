import 'package:flutter/material.dart';

import '../../../../compoents/custom_text_filed.dart';
import '../../../UserDeatiled/screen/corporateOfficeDetailed/screen_corporate_details.dart';

class CorporateOffice extends StatelessWidget {
  const CorporateOffice({super.key});

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
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScreenCorperteDetails(index: index,),)),
                                  child: Card(
                    child: ListTile(
                      leading: Image.asset('assets/images/officwe_prev_ui.png'),
                      title: CustomTextWidget(text: 'Corporate Office'),
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