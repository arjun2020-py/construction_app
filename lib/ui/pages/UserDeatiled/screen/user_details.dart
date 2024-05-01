import 'package:construction_app/ui/compoents/custom_text_filed.dart';
import 'package:construction_app/utils/color.dart';
import 'package:flutter/material.dart';

import 'businessStoreDeatiled/compoents/custom_details_widget.dart';



class ScreenHomeBuildingDetails extends StatelessWidget {
  ScreenHomeBuildingDetails({super.key, required this.index});

  int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: detailedBgColor,
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 150),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_new_outlined)),
                  ),
                
                ],
              ),
              Container(
                decoration: BoxDecoration(color: Colors.blue),
              ),
              Image.asset("assets/images/house_prev_ui.png"),
              Card(
                color: cardBgColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 180),
                        child: CustomTextWidget(
                          text: 'House Building',
                          color: blackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 250, left: 22, bottom: 10),
                        child: Divider(
                          color: blackColor,
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          CustomCompanyDetails(
                            textName: 'Area',
                            subText: '10 Acres',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            subTextColor: Colors.black.withOpacity(0.6),
                            subTextFontSize: 15,
                            subTextWeight: FontWeight.w700,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          CustomCompanyDetails(
                            textName: 'Floors',
                            subText: '12 acres',
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            subTextColor: Colors.black.withOpacity(0.6),
                            subTextFontSize: 15,
                            subTextWeight: FontWeight.w400,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          CustomCompanyDetails(
                            textName: 'Offices',
                            subText: '200 +',
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            subTextColor: Colors.black.withOpacity(0.6),
                            subTextFontSize: 15,
                            subTextWeight: FontWeight.w400,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CustomTextWidget(
                          text: 'Address',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CustomTextWidget(
                          text: 'Hilite Bussines park, ',
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CustomTextWidget(
                          text: 'kozhikode,india, ',
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CustomTextWidget(
                          text: '8989988 ',
                          color: Colors.black.withOpacity(0.6),
                        ),
                      )
                    ],
                  ),

                  //    subtitle:
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
