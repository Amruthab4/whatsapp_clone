
import 'package:whatsapp_clone/screens/communities/Communities_view.dart';
import 'package:whatsapp_clone/screens/communities/New_com.dart';
import 'package:whatsapp_clone/utils/exports.dart';

class Communities extends StatefulWidget {
  const Communities({super.key});

  @override
  State<Communities> createState() => _CommunitiesState();
}

class _CommunitiesState extends State<Communities> {
   String qrCodeResult = "Not Yet Scanned";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:Customappbar(
        title: 'Communities',
        centerTitle: false,
        fontWeight: kFW600,
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
      body: const SingleChildScrollView(child: Column(children: [
        NewCommunities(),
        CommunitieView(),
      ],),),
    );
  }
}