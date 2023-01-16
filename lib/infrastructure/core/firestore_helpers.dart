import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kopifood/injection.dart';

extension FirestoreX on FirebaseFirestore {
  DocumentReference getStoresById(String storeDocId) =>
      FirebaseFirestore.instance.collection('stores').doc(storeDocId);
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference getFoodsCollection() => collection('foods');

  CollectionReference getAllFoodPlace() => collection('foodplace');
}
