import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBcZ_mY40o9YwMZfPVv3ev6rgXmGwQMzLg",
            authDomain: "laundryv3-2e5af.firebaseapp.com",
            projectId: "laundryv3-2e5af",
            storageBucket: "laundryv3-2e5af.appspot.com",
            messagingSenderId: "437063726252",
            appId: "1:437063726252:web:4f9d5564f037dc83921b09"));
  } else {
    await Firebase.initializeApp();
  }
}
