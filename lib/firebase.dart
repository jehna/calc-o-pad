import 'package:calc_o_pad/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<DocumentReference<Map<String, dynamic>>> getDocument() async {
  final app = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.firebaseOptions);
  final auth = FirebaseAuth.instanceFor(app: app);
  if (await auth.userChanges().first == null) {
    await auth.signInAnonymously();
  }
  final instance = FirebaseFirestore.instanceFor(app: app);
  final doc = instance.collection(auth.currentUser!.uid).doc('test');
  return doc;
}
