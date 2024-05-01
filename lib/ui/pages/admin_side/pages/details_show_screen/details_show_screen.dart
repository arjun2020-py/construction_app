import 'package:construction_app/ui/compoents/custom_text_filed.dart';
import 'package:construction_app/utils/color.dart';
import 'package:flutter/material.dart';

class DetailedShowScreen extends StatelessWidget {
  const DetailedShowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appBarBgColor,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: appBarTextColor,
            )),
        title: CustomTextWidget(
          text: 'Details Show Screen',
          color: appBarTextColor,
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/busines.png'),
                    title: CustomTextWidget(
                      text: 'Business store',
                    ),
                    subtitle: CustomTextWidget(text: 'kozhikode'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.edit),
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
