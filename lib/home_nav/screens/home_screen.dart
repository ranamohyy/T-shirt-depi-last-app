import '../../helpers/parallel_imports.dart';
part '../../widgets/home_header.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            HomeHeader()

          ],
        ),
      ),


    );
  }
}
