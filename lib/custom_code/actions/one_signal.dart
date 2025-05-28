// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:onesignal_flutter/onesignal_flutter.dart';

Future oneSignal() async {
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);

  OneSignal.initialize("87759370-7eb8-42ba-8f27-df3dc0d3a2ca");

  OneSignal.Notifications.requestPermission(true);
}
