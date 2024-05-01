import 'package:flutter/material.dart';

import '../../../../../../utils/color.dart';
import '../../../../../compoents/custom_text_filed.dart';

class CustomCompanyDetails extends StatelessWidget {
  const CustomCompanyDetails({
    super.key,
    required this.textName,
    required this.subText,
    required this.fontWeight,
    required this.fontSize,
    required this.subTextColor,
    required this.subTextWeight,
    required this.subTextFontSize
  });
  final String textName;
  final String subText;
  final FontWeight fontWeight;
  final double fontSize;
  final Color subTextColor;
  final FontWeight subTextWeight;
  final double subTextFontSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextWidget(
          text: textName,
          color: blackColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
        CustomTextWidget(text: subText,color: subTextColor,fontWeight:subTextWeight ,fontSize: subTextFontSize,)
      ],
    );
  }
}
