

import 'package:whatsapp_clone/utils/exports.dart';

class Chatview extends StatefulWidget {
  const Chatview({super.key});

  @override
  State<Chatview> createState() => _ChatviewState();
}

class _ChatviewState extends State<Chatview> {
 
String qrCodeResult = "Not Yet Scanned";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kwhite,
      appBar:  Customappbar(
        title: 'WhatsApp',
        centerTitle: false,
        fontWeight: kFW700,
        titleColor: Kgreen,
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
              if (scanResult != null) {
               
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt_outlined),
            color: Colors.black,
            onPressed: () {
            
            },
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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                ChatSearch(),
                Chatbodyview(),
              ],
            )
          ],
        ),
      ),
    );
  }

  }


  


