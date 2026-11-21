part of '../home_nav/screens/home_screen.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("hello".tr(), style: AppStyles.kText17StyleBlack),
              Text("hello_text".tr(),

                style: AppStyles.kText30StyleBlack,
              ),
            ],
          ),
        ),

        CircleAvatar(radius: AppSizes.radiusProfile, child: Icon(Icons.person)),
      ],
    );
  }
}
