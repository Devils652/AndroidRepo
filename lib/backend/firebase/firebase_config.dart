import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAePDJy9ln9rpMKq9au0P1kJtuQ8F-kLqk",
            authDomain: "recordatorio-lo0tbg.firebaseapp.com",
            projectId: "recordatorio-lo0tbg",
            storageBucket: "recordatorio-lo0tbg.firebasestorage.app",
            messagingSenderId: "786273686108",
            appId: "1:786273686108:web:3ce058c7dee791b3260c99"));
  } else {
    await Firebase.initializeApp();
  }
}
