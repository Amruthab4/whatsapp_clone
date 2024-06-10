

import 'package:flutter/services.dart';
import 'package:whatsapp_clone/utils/exports.dart';

void main()  {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Kwhite, // Set the bottom navigation bar color to white
   // systemNavigationBarIconBrightness: Brightness.dark, // Set the bottom navigation bar icons to dark
    //statusBarColor: Colors.transparent, // Set the status bar color to transparent
    //statusBarIconBrightness: Brightness.dark, // Set the status bar icons to dark
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
            title: "Whatsapp ui",
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'OpenSans',
              visualDensity: VisualDensity.adaptivePlatformDensity,
              bottomSheetTheme: const BottomSheetThemeData(
                  backgroundColor: Colors.transparent),
            ),
            getPages: Routes.routes,
            initialRoute: kbottomnav,         
            );
      },
    );
  }
}
