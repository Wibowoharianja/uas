import 'package:flutter/material.dart';

class PinChat {
  static void show(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('Selamat Anda Telah Mengaktifkan Mode Belangganan'),
      behavior: SnackBarBehavior.floating,
      width:390,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
