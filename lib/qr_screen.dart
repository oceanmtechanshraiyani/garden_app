import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/link.dart';

class QrScreen extends StatefulWidget {
  const QrScreen({super.key});

  @override
  State<QrScreen> createState() => _QrScreenState();
}

class _QrScreenState extends State<QrScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  String scancode = "";

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        // result = scanData;
        scancode = scanData.code!;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: const Text("QR Screen"),
      ),
      body: Center(
        child: Container(
          height: 500.h,
          width: 350.w,
          child: Column(
            children: [
              const Text("data"),
              Expanded(
                flex: 8,
                child: QRView(
                  key: qrKey,
                  onQRViewCreated: _onQRViewCreated,
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                    child: Column(
                  children: [
                    Expanded(
                      child: Text("Scan Code"),
                    ),
                    Expanded(
                      child: Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse(scancode),
                        builder: (context, followLink) => TextButton(
                          onPressed: followLink,
                          child: Text(scancode),
                        ),
                      ),
                    ),
                  ],
                )
                    // (result != null)
                    //     ? Text('Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
                    //     : Text('Scan a code'),
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
