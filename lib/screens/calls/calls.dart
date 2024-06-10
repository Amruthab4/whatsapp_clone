import 'package:whatsapp_clone/utils/exports.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  String qrCodeResult = "Not Yet Scanned";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Customappbar(
          title: 'Calls',
          centerTitle: false,
          fontWeight: kFW500,
          titleColor: kblack,
          actions: [
            IconButton(
              icon: const Icon(Icons.qr_code),
              color: Colors.black,
              onPressed: () async {
                String? scanResult = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QRScannerPage(),
                  ),
                );
                if (scanResult != null) {}
              },
            ),
            IconButton(
              icon: const Icon(Icons.camera_alt_outlined),
              color: Colors.black,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              color: Colors.black,
              onPressed: () {},
            ),
            PopupMenuButton(
              color: Colors.white,
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
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CallLink(),
                SizedBox(
                  height: 20.h,
                ),
                const CallList(),
              ],
            ),
          ),
        ));
  }
}
