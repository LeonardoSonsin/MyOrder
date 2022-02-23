import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class QrscanPage extends StatefulWidget {
  const QrscanPage({Key key}) : super(key: key);

  @override
  _QrscanPageState createState() => _QrscanPageState();
}

class _QrscanPageState extends State<QrscanPage> {
  String ticket = "";

  readQRCode() async {
    String code = await FlutterBarcodeScanner.scanBarcode(
      "#FFFFFF",
      "Cancelar",
      true,
      ScanMode.QR,
    );
    setState(() => ticket = code != '-1' ? code : 'Não encontrado');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Vincular ao restaurante'),
      ),
      body: Stack(
        children: [
          Padding(
            padding:
            const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
            child: Column(
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/imagens/qrcode.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Para fazer seu pedido, por favor, dirija-se ao local e escaneie o código QR disponibilizado em sua mesa.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                if (ticket != '')
                  Padding(
                      padding: EdgeInsets.only(bottom: 24.0),
                      child: Text(
                        'Resultado: $ticket',
                        style: (TextStyle(fontSize: 20)),
                      )
                  ),
                ElevatedButton.icon(
                  onPressed: readQRCode,
                  icon: Icon(Icons.qr_code),
                  label: Text('Escanear'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
