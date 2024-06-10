import 'package:whatsapp_clone/utils/exports.dart';

class SettingsProfile extends StatefulWidget {
  const SettingsProfile({super.key});

  @override
  State<SettingsProfile> createState() => _SettingsProfileState();
}

class _SettingsProfileState extends State<SettingsProfile> {
  bool _showQrCode = false;

  void _toggleQrCode() {
    setState(() {
      _showQrCode = !_showQrCode;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(kcall),
        ),
        SizedBox(
          width: 20.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Rahul Singh",
              style: GoogleFonts.openSans(
                  fontSize: kEighteenFont, fontWeight: FontWeight.w500),
            ),
            Text(
              "Hey there! Iam using Whatsapp.",
              style: GoogleFonts.openSans(
                  fontSize: kFourteenFont,
                  fontWeight: FontWeight.w500,
                  color: kgrey),
            ),
          ],
        ),
        IconButton(
          icon: const Icon(
            Icons.qr_code,
            color: Kgreen,
          ),
          color: kblack,
          onPressed: () {
            Get.toNamed(kQR_gen);
   
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.arrow_drop_down_circle_outlined,
            color: Kgreen,
          ),
          color: kblack,
          onPressed: () {},
        ),
      ],
    );
  }
}
