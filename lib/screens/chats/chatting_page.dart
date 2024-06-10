import 'package:whatsapp_clone/utils/exports.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<Map<String, dynamic>> messages = [];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        messages.add({
          "text": _controller.text,
          "isSentByMe": true,
        });
        _controller.clear();

        Future.delayed(const Duration(milliseconds: 500), () {
          setState(() {
            messages.add({
              "text": "This is an automatic reply.",
              "isSentByMe": false,
            });
          });
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          leadingWidth: 30,
          backgroundColor: Kwhite,
          title: Row(
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(kcall),
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jaqen Hghar',
                    style: GoogleFonts.openSans(
                        fontSize: kEighteenFont, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    'Online',
                    style: GoogleFonts.openSans(
                        fontSize: kTwelveFont, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.videocam_outlined),
              color: kblack,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.call),
              color: kblack,
              onPressed: () {},
            ),
            PopupMenuButton(
              color: Kwhite,
              offset: const Offset(0, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              onSelected: (value) {
                if (value == 'settings') {
                  Get.toNamed(Ksettings);
                }
              },
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(child: Text('New Group')),
                  const PopupMenuItem(child: Text('New Broadcast')),
                  const PopupMenuItem(child: Text('Linked Devices')),
                  const PopupMenuItem(child: Text('Starred Messages')),
                  const PopupMenuItem(
                    value: 'settings',
                    child: Text('Settings'),
                  ),
                ];
              },
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 20.h),
                Container(
                  margin: EdgeInsets.all(20.sp),
                  padding: EdgeInsets.all(10.sp),
                  decoration: BoxDecoration(
                    color: korange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "Messages and chats are end-to-end encrypted. No one outside of this chat, not even WhatsApp, can read or listen to them. Tap to learn more.",
                    maxLines: 3,
                    textAlign: TextAlign.center,
                  ),
                ),
                // ChattingBody(),
              ],
            ),
            Positioned(
              top: 120.h,
              left: 0,
              right: 0,
              bottom: 70,
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final message = messages[index];
                  return Align(
                    alignment: message["isSentByMe"]
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      padding:
                          const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        color: message["isSentByMe"] ? Kgreen : Kwhite,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        message["text"],
                        style: TextStyle(
                          color: message["isSentByMe"] ? Kwhite : kblack,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: CustomFormField(
                        controller: _controller,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10.0),
                        obscureText: false,
                        enabled: true,
                        maxLines: 1,
                        readOnly: false,
                        label: "",
                        hintText: "Type a message...",
                        prefix: const Icon(Icons.emoji_emotions),
                        suffix: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.attach_file),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Icons.camera_alt),
                              onPressed: () {  },
                            ),
                          ],
                        ),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                        textColor: Kgreen,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Kgreen,
                      child: IconButton(
                        icon: const Icon(
                          Icons.mic_outlined,
                          color: Kwhite,
                        ),
                        onPressed: _sendMessage,
                        color: Kgreen,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
