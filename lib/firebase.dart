import 'package:calc_o_pad/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Note {
  final String id;
  final String title;
  final String text;

  Note({
    required this.id,
    required this.title,
    required this.text,
  });

  factory Note.fromDocument(String id, Map<String, dynamic> doc) {
    return Note(
      id: id,
      title: doc["title"] ?? "",
      text: doc["text"] ?? "",
    );
  }
}

Future<FirebaseAuth> getAuth(FirebaseApp app) async {
  final auth = FirebaseAuth.instanceFor(app: app);
  if (await auth.userChanges().first == null) {
    await auth.signInAnonymously();
  }
  return auth;
}

Future<FirebaseApp> getApp() =>
    Firebase.initializeApp(options: DefaultFirebaseOptions.firebaseOptions);

Future<List<Note>> getDocuments() async {
  final app = await getApp();
  final auth = await getAuth(app);
  final docs = await getCollectionForUser(auth, app).get();
  return docs.docs.map((doc) => Note.fromDocument(doc.id, doc.data())).toList();
}

CollectionReference<Map<String, dynamic>> getCollectionForUser(
    FirebaseAuth auth, FirebaseApp app) {
  final instance = FirebaseFirestore.instanceFor(app: app);
  return instance.collection(auth.currentUser!.uid);
}

Future<dynamic> getDocumentReference(String id) async {
  final app = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.firebaseOptions);
  final auth = await getAuth(app);
  return getCollectionForUser(auth, app).doc(id);
}
