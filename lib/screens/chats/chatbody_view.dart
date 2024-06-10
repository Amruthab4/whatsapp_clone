import 'package:whatsapp_clone/utils/exports.dart';

class Chatbodyview extends StatefulWidget {
  const Chatbodyview({Key? key}) : super(key: key);

  @override
  State<Chatbodyview> createState() => _ChatbodyviewState();
}

class _ChatbodyviewState extends State<Chatbodyview> {
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
    {
      "chatTitle": "Sansa Stark",
      "chatMessage": 'The North Remembers',
      "seenStatusColor": kblue,
      "assetImagePath": kprofile1,
      "route": kchatting
    },
    {
      "chatTitle": "Jon Snow",
      "chatMessage": "Stick em' with the pointy end",
      "seenStatusColor": kgrey,
      "assetImagePath": kprofile,
      "route": kchatting
    },
    {
      "chatTitle": "Sansa Stark",
      "chatMessage": 'The North Remembers',
      "seenStatusColor": kblue,
      "assetImagePath": kcall,
      "route": kchatting
    },
    {
      "chatTitle": "Jon Snow",
      "chatMessage": "Stick em' with the pointy end",
      "seenStatusColor": kgrey,
      "assetImagePath": kprofile1,
      "route": kchatting
    },
    {
      "chatTitle": "Sansa Stark",
      "chatMessage": 'The North Remembers',
      "seenStatusColor": kblue,
      "assetImagePath": kprofile,
      "route": kchatting
    },
    {
      "chatTitle": "Jon Snow",
      "chatMessage": "Stick em' with the pointy end",
      "seenStatusColor": kgrey,
      "assetImagePath": kprofile1,
      "route": kchatting
    },
    {
      "chatTitle": "Sansa Stark",
      "chatMessage": 'The North Remembers',
      "seenStatusColor": kblue,
      "assetImagePath": kprofile,
      "route": kchatting
    },
    {
      "chatTitle": "Jon Snow",
      "chatMessage": "Stick em' with the pointy end",
      "seenStatusColor": kgrey,
      "assetImagePath": kprofile1,
      "route": kchatting
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          for (int i = 0; i < chatList.length; i++)
            GestureDetector(
              onTap: () {
                Get.toNamed(chatList[i]["route"]);
              },
              child: Container(
                margin: EdgeInsets.only(top: 5),
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
                      Row(
                        children: [
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
                    ],
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Yesterday",
                        style: GoogleFonts.openSans(
                          fontSize: kTenFont,
                          fontWeight: kFW500,
                          color: kgrey,
                        ),
                      ),
                      const SizedBox(height: 5,),
                      CircleAvatar(radius: 10,
                      backgroundColor: Kgreen,
                      child: Center(child: Text("2",style: GoogleFonts.openSans(color: Kwhite,fontSize: kTenFont),textAlign: TextAlign.center,)),
                      ),
                    ],
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
    );
  }
}
