import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
final navigatorKey= GlobalKey<NavigatorState>();
Future<dynamic> moveTo(Widget page, {bool KeepHistory = true}) {
  // FIX: Use navigatorKey.currentState to access a non-null NavigatorState instead of potentially null currentContext
  // return Navigator.pushAndRemoveUntil(
  //   navigatorKey.currentContext!,
  //   MaterialPageRoute(
  //     builder: (context) => page,
  //   ),
  //   (route) => KeepHistory,
  // );
  final navigatorState = navigatorKey.currentState!;
  if (KeepHistory) {
    // FIX: When KeepHistory is true, push normally to keep back stack
    return navigatorState.push(
      MaterialPageRoute(builder: (_) => page),
    );
  }
  // FIX: When KeepHistory is false, remove previous routes
  return navigatorState.pushAndRemoveUntil(
    MaterialPageRoute(builder: (_) => page),
    (route) => false,
  );
}
