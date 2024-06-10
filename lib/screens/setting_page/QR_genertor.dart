import 'package:whatsapp_clone/utils/exports.dart';

class QrCodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your QR Code'),
      ),
      body: Center(
        child: QrImageView(
          data: '1234567890',
          version: QrVersions.auto,
          size: 200.0,
        ),
      ),
    );
  }
}