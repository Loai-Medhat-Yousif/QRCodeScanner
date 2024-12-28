import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class Secondtab extends StatefulWidget {
  const Secondtab({super.key});

  @override
  State<Secondtab> createState() => _Secondtab();
}

class _Secondtab extends State<Secondtab> {
  final TextEditingController _textController = TextEditingController();
  String? _qrData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _textController,
            decoration: InputDecoration(
              labelText: 'Enter text to generate QR code',
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _qrData = _textController.text.trim();
              });
            },
            child: const Text('Generate QR Code'),
          ),
          const SizedBox(height: 16.0),
          if (_qrData != null && _qrData!.isNotEmpty)
            Center(
              child: PrettyQrView.data(
                data: _qrData!,
                errorCorrectLevel: QrErrorCorrectLevel.M,
              ),
            ),
        ],
      ),
    );
  }
}
