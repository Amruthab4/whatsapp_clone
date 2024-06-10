import 'package:whatsapp_clone/utils/exports.dart';

class Routes {
   static List<GetPage<dynamic>> routes = [
    GetPage(
        name: kbottomnav,
        transition: Transition.rightToLeft,
        page: () => const BottomNav()),
         GetPage(name: Ksettings, 
         transition: Transition.rightToLeft,
         page: ()=> SettingsPage()),
         GetPage(name: kqr, 
         transition: Transition.rightToLeft,
         page: ()=> QRScannerPage()),
          GetPage(name: kchatting, 
         transition: Transition.rightToLeft,
         page: ()=> ChatPage()),
          GetPage(name: kQR_gen, 
         transition: Transition.rightToLeft,
         page: ()=> QrCodeScreen()),
   ];
 
}

