import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
final navigatorKey= GlobalKey<NavigatorState>();
Future<dynamic> moveTo(Widget page, {bool KeepHistory = true}) {
  return Navigator.pushAndRemoveUntil(
    navigatorKey.currentContext!,
    MaterialPageRoute(
      builder: (context) => page,
    ),
    (route) => KeepHistory,
  );
}
