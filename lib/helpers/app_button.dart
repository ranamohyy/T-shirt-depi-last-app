import 'package:tshirt_depi/helpers/parallel_imports.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        fixedSize: Size.fromHeight(AppSizes.tripleXLSpace.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(AppSizes.radiusSmall),
        ),
      ),

      child: child,
    );
  }
}
