import '../../helpers/parallel_imports.dart';

class AppField extends StatelessWidget {
  const AppField({
    super.key,
    required this.hintText,
    this.controller,
    this.onTap,
    this.readOnly = false,
  });
  final String hintText;
  final TextEditingController? controller;
  final void Function()? onTap;
  final bool readOnly;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTap: onTap,
      readOnly: readOnly,
      decoration: InputDecoration(
        hintText: hintText.tr(),

        filled: true,
        fillColor: AppColors.whiteGrey,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusSmall),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusSmall),
          borderSide: BorderSide(color: AppColors.whiteGrey),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusSmall),
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
      ),
    );
  }
}
