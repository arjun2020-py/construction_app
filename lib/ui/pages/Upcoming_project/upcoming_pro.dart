import 'package:construction_app/ui/compoents/custom_text_filed.dart';
import 'package:construction_app/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/upcoing_poject_cubit.dart';

class UpcomingProjectScreen extends StatelessWidget {
  const UpcomingProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpcoingPojectCubit(context),
      child: BlocBuilder<UpcoingPojectCubit, UpcoingPojectState>(
        builder: (context, state) {
          var cubit = context.read<UpcoingPojectCubit>();
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: appBarBgColor,
              title: CustomTextWidget(text: 'Upcoming Project',color: appBarTextColor,),
            ),
            body: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      CustomTextWidget(
                        text: 'Project${cubit.index}',
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      Image.asset(
                        'assets/images/office3d.jpg',
                        width: 250,
                        height: 250,
                      ),
                      CustomTextWidget(
                        text: '3D Visual',
                        color: Colors.black,
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Image.asset(
                        'assets/images/plan.png',
                        width: 250,
                        height: 250,
                      ),
                      CustomTextWidget(
                        text: 'plan',
                        color: Colors.black,
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
