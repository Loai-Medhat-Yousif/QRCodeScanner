import 'package:flutter/material.dart';
import 'package:simple_qr_scanner/firsttab.dart';
import 'package:simple_qr_scanner/secondtab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('QrCode Scanner'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.qr_code_scanner), text: "Scan QR Code"),
              Tab(icon: Icon(Icons.qr_code), text: "Generate QR Code"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Firsttab(),
            Secondtab(),
          ],
        ),
      ),
    );
  }
}
