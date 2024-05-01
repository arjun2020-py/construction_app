// ignore_for_file: avoid_unnecessary_containers

import 'package:construction_app/ui/compoents/custom_elev_button.dart';
import 'package:construction_app/ui/compoents/custom_text_filed.dart';
import 'package:construction_app/ui/compoents/custom_text_filed_widget.dart';
import 'package:construction_app/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../details_show_screen/details_show_screen.dart';
import 'cubit/detailed_add_screen_cubit.dart';

class DetailsAddScreen extends StatelessWidget {
  const DetailsAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailedAddScreenCubit(context),
      child: BlocBuilder<DetailedAddScreenCubit, DetailedAddScreenState>(
        builder: (context, state) {
          var cubit = context.read<DetailedAddScreenCubit>();
          return Scaffold(
            appBar: AppBar(
              backgroundColor: appBarBgColor,
              centerTitle: true,
              title: CustomTextWidget(
                text: 'Details Add Section',
                color: appBarTextColor,
              ),
            ),
            body: ListView(
              children: [
                Form(
                  key: cubit.formKey,
                  child: Column(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            cubit.pickImageFromGallery();
                          },
                          child: Text('Pick Image')),
                      // Container(
                      //   child: cubit.isLoading? Image.network(cubit.imageUrl): Container(
                      //     child: Center(
                      //         child: CustomTextWidget(
                      //       text: 'No such files (.jpg,.png)',
                      //       color: colorWhite,
                      //     )),
                      //     color: Colors.blue[500],
                      //     width: MediaQuery.sizeOf(context).width,
                      //     height: MediaQuery.sizeOf(context).width * 0.6,
                      //   ),
                      // ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomTextfiled(
                          hintText: 'enter construction name',
                          controller: cubit.construcationName,
                          validator: (value) =>
                              cubit.construcationNameValidator(value!)),
                      SizedBox(
                        height: 15,
                      ),
                      CustomTextfiled(
                          hintText: 'enter a vaild squre fit',
                          controller: cubit.squrefitController,
                          validator: (value) =>
                              cubit.squreFitValidator(value!)),
                      SizedBox(
                        height: 15,
                      ),
                      CustomTextfiled(
                          hintText: 'enter a vaild price',
                          controller: cubit.priceController,
                          validator: (value) => cubit.priceValidator(value!)),
                      SizedBox(
                        height: 15,
                      ),
                      CustomTextfiled(
                          hintText: 'enter a vaild address',
                          controller: cubit.addressController,
                          validator: (value) => cubit.addressValidator(value!)),
                      CustomElevButon(
                        text: 'submit',
                        onPressed: () {
                          cubit.buttonClick();
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
