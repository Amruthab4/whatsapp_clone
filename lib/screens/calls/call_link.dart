import 'package:whatsapp_clone/utils/exports.dart';

class CallLink extends StatefulWidget {
  const CallLink({super.key});

  @override
  State<CallLink> createState() => _CallLinkState();
}

class _CallLinkState extends State<CallLink> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
            radius: 30,
            backgroundColor: Kgreen,
            child: Icon(
              Icons.link,
              color: Kwhite,
            )),
        SizedBox(
          width: 20.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create call link",
              style: GoogleFonts.openSans(
                  fontSize: kEighteenFont, fontWeight: FontWeight.w500),
            ),
            Text(
              "Share a link for your WhatsApp call",
              style: GoogleFonts.openSans(
                  fontSize: kFourteenFont,
                  fontWeight: FontWeight.w500,
                  color: kgrey),
            ),
          ],
        )
      ],
    );
  }
}
