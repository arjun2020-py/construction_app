import 'package:construction_app/ui/compoents/custom_text_filed.dart';
import 'package:construction_app/utils/color.dart';
import 'package:flutter/material.dart';

class DevliveryProjectScreen extends StatelessWidget {
  const DevliveryProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: appBarBgColor,
          title: CustomTextWidget(text: 'Delivery Porject',color: appBarTextColor,),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Column(
                  children: [
                    CustomTextWidget(
                      text: 'project01',
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Image.asset(
                            'assets/images/officwe_prev_ui.png',
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                    Row(
                      children: const [
                        CustomTextWidget(
                          text: 'Squrefit:',
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        CustomTextWidget(
                          text: '12',
                          color: Colors.black,
                          fontSize: 15,
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        CustomTextWidget(
                          text: 'Price:',
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.currency_rupee,
                              size: 15,
                            ),
                            CustomTextWidget(
                              text: '12000',
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ));
  }
}
