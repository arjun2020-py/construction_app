import 'package:construction_app/ui/compoents/custom_text_filed.dart';
import 'package:construction_app/ui/pages/UserHome/screen_home.dart';
import 'package:construction_app/ui/pages/siginup/screen_siginup.dart';
import 'package:construction_app/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../compoents/custom_elev_button.dart';
import '../../compoents/custom_text_filed_widget.dart';
import 'cubit/login_cubit.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(context),
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          var cubit = context.read<LoginCubit>();
          return Scaffold(
            backgroundColor: appBgColor,
            body: SafeArea(
              child: Center(
                  child: Form(
                key: cubit.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomTextWidget(text: 'Login', fontSize: 20),
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
                        if (cubit.formKey.currentState!.validate()) {
                          Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ScreenHome(),
                        ));
                        }
                        
                      },
                      text: 'Login',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomTextWidget(text: "Don't have an account?"),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ScreenSignup(),
                              ));
                            },
                            child: Text('Siginup'))
                      ],
                    ),
                  ],
                ),
              )),
            ),
          );
        },
      ),
    );
  }
}
