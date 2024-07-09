import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDvZ2mdNlaqFF6ldkH8F7bXjt8DrvYzk3s",
            authDomain: "todo-list-zt7jre.firebaseapp.com",
            projectId: "todo-list-zt7jre",
            storageBucket: "todo-list-zt7jre.appspot.com",
            messagingSenderId: "365234965464",
            appId: "1:365234965464:web:ccc5906b0659520b2640ad"));
  } else {
    await Firebase.initializeApp();
  }
}
