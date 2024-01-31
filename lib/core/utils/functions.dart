import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> appLaunchUrl(cxt, String url) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    ScaffoldMessenger.of(cxt).showSnackBar(
      SnackBar(
        content: Text(
          "Can not launch $url",
        ),
      ),
    );
  }
}
