import 'package:whatsapp_clone/utils/exports.dart';

class ChannelPage extends StatefulWidget {
  const ChannelPage({super.key});

  @override
  State<ChannelPage> createState() => _ChannelPageState();
}

class _ChannelPageState extends State<ChannelPage> {
  List chatList = [
    {
      "chatTitle": "Arya Stark",
      "chatMessage": 'I wish GoT had better ending',
      "seenStatusColor": kblue,
      "assetImagePath": kprofile1,
      "route": kchatting
    },
    {
      "chatTitle": "Robb Stark",
      "chatMessage": "Did you check Maisie's latest post?",
      "seenStatusColor": kgrey,
      "assetImagePath": kprofile,
      "route": kchatting
    },
    {
      "chatTitle": "Jaqen H'ghar",
      "chatMessage": 'Valar Morghulis',
      "seenStatusColor": kgrey,
      "assetImagePath": kcall,
      "route": kchatting
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Channels",
                style: GoogleFonts.openSans(
                    fontSize: kEighteenFont, fontWeight: FontWeight.w500),
              ),
              const Icon(Icons.add),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              for (int i = 0; i < chatList.length; i++)
                GestureDetector(
                  onTap: () {
                    Get.toNamed(chatList[i]["route"]);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: ListTile(
                      title: Text(
                        chatList[i]["chatTitle"],
                        maxLines: 1,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.openSans(
                          fontSize: kSixteenFont,
                          fontWeight: kFW600,
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          Icon(
                            chatList[i]["seenStatusColor"] == kblue
                                ? Icons.done_all
                                : Icons.done,
                            size: 15,
                            color: chatList[i]["seenStatusColor"],
                          ),
                          Text(
                            chatList[i]["chatMessage"],
                            maxLines: 2,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.openSans(
                              fontSize: kTwelveFont,
                              fontWeight: kFW500,
                              color: kgrey,
                            ),
                          ),
                        ],
                      ),
                      trailing: Text(
                        "Yesterday",
                        style: GoogleFonts.openSans(
                          fontSize: kTenFont,
                          fontWeight: kFW500,
                          color: kgrey,
                        ),
                      ),
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage(chatList[i]["assetImagePath"]),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
