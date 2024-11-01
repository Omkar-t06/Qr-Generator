import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRImageBox extends StatelessWidget {
  final String qrData;
  final bool isGenerated;
  const QRImageBox({
    super.key,
    required this.qrData,
    required this.isGenerated,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isGenerated ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 500),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Theme.of(context).colorScheme.onPrimary,
          child: QrImageView(
            data: qrData,
            size: 280,
          ),
        ),
      ),
    );
  }
}
