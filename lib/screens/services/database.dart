import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final String uid;
  DatabaseService(this.uid);

  final CollectionReference bpeCollection = FirebaseFirestore.instance.collection('bpe');

  Future updateUserData(String name, String lastname, String email) async {
    return await bpeCollection.doc(uid).set({
      'name' : name,
      'lastname': lastname,
      'email': email
    });

  }

}