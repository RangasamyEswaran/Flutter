import 'dart:io';

import 'package:cording/payment/transfer/qrresult.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
class Qrscan extends StatefulWidget {
  const Qrscan({Key? key}) : super(key: key);

  @override
  _QrscanState createState() => _QrscanState();
}

class _QrscanState extends State<Qrscan> {
  final qrKey =GlobalKey(debugLabel: 'QR');

  Barcode? barcode;

  QRViewController? controller;

  

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();

  }

  @override
  Future<void> reassemble() async {
    super.reassemble();

    // if(Platform.isAndroid){
    //   await controller!.pauseCamera();
    // }
    // controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: Text(
          'Scan QR code'
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            buildQrView(context),
            
          ],
        ),
      ),
    );
  }

 

  Widget buildQrView(BuildContext context){
    return QRView(
      key: qrKey, 
      onQRViewCreated: onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: Theme.of(context).accentColor,
        borderLength: 20,
        borderRadius: 15,
        borderWidth: 10,
        cutOutSize: MediaQuery.of(context).size.width*0.8,
        ),
      );
  }
  void onQRViewCreated(QRViewController controller){
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((barcode) {
      controller.pauseCamera();
      // qrViewController.pauseCamera();
      setState(() {
        barcode=barcode;
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Qrresult(barcode: barcode,))).then((value) => controller.resumeCamera());
        
      });
    });
  }
}