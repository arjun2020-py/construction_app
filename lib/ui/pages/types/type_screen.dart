import 'package:construction_app/ui/compoents/custom_text_filed.dart';
import 'package:construction_app/ui/pages/bottomNav/screen_nav.dart';
import 'package:construction_app/utils/color.dart';
import 'package:flutter/material.dart';

import '../admin_side/pages/details_add_screen/detailed_add_screen.dart';
import 'compoents/custom_circuler_avater_widget.dart';

class TypeScreen extends StatelessWidget {
  const TypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ScreenBottomNav())),
              child: CustomCircleAvatarWidget(
                  imageUrl: 'assets/images/user_prev_ui.png')),
          CustomTextWidget(text: 'User'),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsAddScreen(),)),
            child: CustomCircleAvatarWidget(imageUrl: 'assets/images/admin_prev_ui.png')),
          CustomTextWidget(text: 'Admin')
        ],
      ),
    );
  }
}
