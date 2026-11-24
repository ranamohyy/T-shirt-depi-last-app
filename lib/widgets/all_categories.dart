part of '../features/home_nav/screens/home_screen.dart';

class AllCategories extends StatefulWidget {
  AllCategories({super.key});

  @override
  State<AllCategories> createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
  final List<String> categ = ["All", "men", "women", "kidsWear"];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppSizes.paddingSize,
      children: [
        Text("categories".tr(), style: AppStyles.kText17StyleBlack),

        SizedBox(
          height: AppSizes.xxLSpace.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final isSelected = currentIndex == index;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.xLSpace.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSizes.xLSpace.r),
                    color: isSelected
                        ? AppColors.primaryColor
                        : AppColors.whiteGrey,
                  ),
                  child: Center(
                    child: Text(
                      categ[index].tr(),
                      style: isSelected
                          ? AppStyles.kText17StyleWhite
                          : AppStyles.kText17StylePrimary,
                    ),
                  ),
                ),
              );
            },

            separatorBuilder: (context, index) => WidthSpace(12),
            itemCount: 4,
          ),
        ),
      ],
    );
  }
}
