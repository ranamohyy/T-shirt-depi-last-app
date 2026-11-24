part of '../features/home_nav/screens/home_screen.dart';

class SearchBanner extends StatelessWidget {
  const SearchBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppSizes.paddingSize.w,
      children: [
        Expanded(
          child: AppField(
            hintText: "search",
            readOnly: true,
            onTap: () => Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => SearchScreen())),
          ),
        ),

        AppButton(child: Icon(Icons.menu, color: AppColors.whiteColor)),
      ],
    );
  }
}
