import 'package:flutter/material.dart';
import 'package:qr_generator/qr_image.dart';

class GenerateQRCode extends StatefulWidget {
  const GenerateQRCode({super.key});

  @override
  State<GenerateQRCode> createState() => _GenerateQRCodeState();
}

class _GenerateQRCodeState extends State<GenerateQRCode> {
  late final TextEditingController _textEditingController;
  bool isGenerated = false;
  String qrData = "";

  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: const Text("Generate QR Code"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: "Enter the data to encode",
                border: const OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                labelStyle: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ),
          QRImageBox(
            qrData: qrData,
            isGenerated: isGenerated,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color(0xFFECEFF1),
              backgroundColor: const Color(0xFF101C2E),
              elevation: 4,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              side: BorderSide(color: Theme.of(context).colorScheme.onPrimary),
            ),
            onPressed: () {
              setState(() {
                qrData = _textEditingController.text;
                isGenerated = true;
                _textEditingController.clear();
              });
            },
            child: const Text("Generate QR Code"),
          ),
        ],
      ),
    );
  }
}
