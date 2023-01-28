import 'package:cloud_firestore/cloud_firestore.dart'; 

extension FirestoreX on FirebaseFirestore {
  DocumentReference getStoresById(String storeDocId) =>
      collection('stores').doc(storeDocId);

  CollectionReference get getRestaurantCollection => collection('stores');
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference getFoodsCollection() => collection('foods');

  CollectionReference getAllFoodPlace() => collection('foodplace');
}
