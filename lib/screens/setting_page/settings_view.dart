import 'package:whatsapp_clone/utils/exports.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  List Setting_list = [
    {
      "name": "Account",
      "subname": "Security notifications,change number",
      "icon": Icons.key,
    },
    {
      "name": "Privacy",
      "subname": "Block contacts,disappearing messages",
      "icon": Icons.lock_outline_sharp,
    },
    {
      "name": "Avatar",
      "subname": "Create,edit,profile photo",
      "icon": Icons.face,
    },
    {
      "name": "Chats",
      "subname": "Theme,wallpapers,chat history",
      "icon": Icons.message,
    },
    {
      "name": "Notifications",
      "subname": "Message,group & call tones",
      "icon": Icons.notifications,
    },
    {
      "name": "Storage and data",
      "subname": "Network usage,auto-download",
      "icon": Icons.circle_outlined,
    },
    {
      "name": "App Language",
      "subname": "English(device's language)",
      "icon": Icons.language,
    },
    {
      "name": "Help",
      "subname": "Help centre, contact us, privacy policy",
      "icon": Icons.help_outline_outlined,
    },
    {
      "name": "Invite a friend",
      "subname": "lorem",
      "icon": Icons.people_alt_outlined,
    },
    {
      "name": "App updates",
      "subname": "updates",
      "icon": Icons.app_shortcut,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < Setting_list.length; i++)
          GestureDetector(
            onTap: () {},
            child: SizedBox(
              child: Container(
                padding: const EdgeInsets.only(top: 0, left: 5, right: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Kwhite,
                ),
                child: ListTile(
                  title: Text(
                    Setting_list[i]["name"],
                    maxLines: 1,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.openSans(
                        fontSize: kSixteenFont,
                        fontWeight: FontWeight.w500,
                        color:kblack),
                  ),
                  subtitle: Text(
                    Setting_list[i]["subname"],
                    maxLines: 2,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.openSans(
                        fontSize: kFourteenFont,
                        fontWeight: FontWeight.w500,
                        color: kgrey),
                  ),
                  leading: Icon(
                    Setting_list[i]["icon"],
                    color: kgrey,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
