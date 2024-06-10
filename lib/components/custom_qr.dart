import 'package:whatsapp_clone/utils/exports.dart';

class QRScannerPage extends StatefulWidget {
  const QRScannerPage({Key? key}) : super(key: key);

  @override
  _QRScannerPageState createState() => _QRScannerPageState();
}

class _QRScannerPageState extends State<QRScannerPage> {
  late QRViewController controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kblack,
      appBar: AppBar(
        backgroundColor: Kwhite,
        title: Text("Scan UPI QR code",style: GoogleFonts.openSans(fontSize: kTwentyFont,fontWeight: kFW500),),
      ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
         Container(
            height: 250.h,
            width: 250.w,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
            child: QRView(
              key: qrKey,
              onQRViewCreated: (QRViewController qrViewController) {
                setState(() {
                  controller = qrViewController;
                });
         
                controller.scannedDataStream.listen((scanData) {
                  controller.dispose();
                  Navigator.pop(context, scanData.code);
                });
              },
            ),
          ),
          SizedBox(height: 20.h,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Icon(Icons.photo,color: Kwhite,),
          Icon(Icons.flash_on_outlined,color: Kwhite,)
         ],),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}