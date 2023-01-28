import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseModule {
  @singleton
  FirebaseFirestore firestore() {
    final fbFirestore = FirebaseFirestore.instance;
    // fbFirestore.useFirestoreEmulator('127.0.0.1', 8080);
    // print("SETUP "); 

    return fbFirestore;
  }
} 