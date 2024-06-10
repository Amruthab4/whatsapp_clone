import 'package:whatsapp_clone/utils/exports.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Kwhite,
        appBar: AppBar(
            backgroundColor: Kwhite,
            title: Text(
              "Settings",
              style: GoogleFonts.openSans(
                  fontSize: kTwentyFourFont, fontWeight: kFW500),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              )
            ]),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(13.sp),
            child: Column(
              children: [
                const SettingsProfile(),
                SizedBox(
                  height: 10.h,
                ),
                Divider(
                  color: kgrey.withOpacity(0.1),
                ),
                const SettingView(),
              ],
            ),
          ),
        ));
  }
}
