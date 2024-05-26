import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCNO_ViZJePIftv6-JqQRt8vWdktJDASiI",
            authDomain: "kato-aom891.firebaseapp.com",
            projectId: "kato-aom891",
            storageBucket: "kato-aom891.appspot.com",
            messagingSenderId: "485954043033",
            appId: "1:485954043033:web:a7b7986f2eecdbb9578c08"));
  } else {
    await Firebase.initializeApp();
  }
}
