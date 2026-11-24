import '../../../helpers/parallel_imports.dart';
import '../../search_screen/search_screen.dart';

part '../../../widgets/home_header.dart';
part '../../../widgets/search_banner.dart';
part  '../../../widgets/all_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        toolbarHeight:30 ,
        actions: [
          IconButton(onPressed: () {



            if(context.locale.languageCode=='en'){
             context.setLocale(Locale("ar"));
            }else{
              context.setLocale(Locale("en"));

            }
          }, icon:Icon (Icons.language))
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.all(AppSizes.paddingSize),
        child: Column(
          children: [
            ///---------------------------------------------------
            ///--------------HEADER-------------------------------
            ///---------------------------------------------------
            HomeHeader(),
            HeightSpace(AppSizes.paddingSize),
            ///---------------------------------------------------
            ///--------------Search bar-------------------------------
            ///---------------------------------------------------
            SearchBanner(),
            HeightSpace(AppSizes.paddingSize),
            ///---------------------------------------------------
            ///-------------- Categories-------------------------------
            ///---------------------------------------------------
            AllCategories()

          ],
        ),
      ),


    );
  }
}
