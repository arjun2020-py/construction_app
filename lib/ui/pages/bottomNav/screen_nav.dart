
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Delivery_project/delivery_project.dart';
import '../Review/screen_review.dart';
import '../Upcoming_project/upcoming_pro.dart';
import '../UserHome/screen_home.dart';
import 'cubit/bottom_nav_cubit.dart';

class ScreenBottomNav extends StatelessWidget {
  ScreenBottomNav({super.key});
 final List<Widget> widget = [
    ScreenHome(),
    UpcomingProjectScreen(),
    DevliveryProjectScreen(),
    ReviewAScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavCubit(context),
      child: BlocBuilder<BottomNavCubit, BottomNavState>(
        builder: (context, state) {
          var cubit = context.read<BottomNavCubit>();
          return Scaffold(
            body: widget[cubit.selectTab],

            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.selectTab,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              onTap: (index) => context.read<BottomNavCubit>().selectedScreen(index),
              items: [
              BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.upcoming,
                ),
                label: 'Upcoming',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.delivery_dining), label: 'Delivery'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.reviews), label: 'Review')
            ]),
          );
        },
      ),
    );
  }
}
