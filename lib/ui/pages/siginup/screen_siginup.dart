import 'package:construction_app/ui/pages/Login/screen_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/color.dart';
import '../../compoents/custom_elev_button.dart';
import '../../compoents/custom_text_filed.dart';
import '../../compoents/custom_text_filed_widget.dart';
import '../UserHome/screen_home.dart';
import 'cubit/siginup_cubit.dart';

class ScreenSignup extends StatelessWidget {
  const ScreenSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SiginupCubit(context),
      child: BlocBuilder<SiginupCubit, SiginupState>(
        builder: (context, state) {
          var cubit = context.read<SiginupCubit>();
          return Scaffold(
            backgroundColor: appBgColor,
            body: SafeArea(
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTextWidget(text: 'Siginup', fontSize: 20),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextfiled(
                    hintText: 'username',
                    controller: cubit.usernameControler,
                    validator: (value) {
                      cubit.vaildateUsername(value!);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextfiled(
                    hintText: 'mobile',
                    controller: cubit.mobileController,
                    validator: (value) {
                      cubit.vaildateMobile(value!);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextfiled(
                    hintText: 'passwrod',
                    controller: cubit.passwrodContoller,
                    validator: (value) {
                      cubit.vaildatePassword(value!);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomElevButon(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ScreenLogin(),
                      ));
                    },
                    text: 'Siginup',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomTextWidget(text: "All ready have an account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Login'))
                    ],
                  ),
                ],
              )),
            ),
          );
        },
      ),
    );
  }
}
