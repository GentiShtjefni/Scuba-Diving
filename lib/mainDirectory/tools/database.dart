import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseService {
  final String uid;
  String role;

  FirebaseService({this.uid, this.role});

  //collection reference
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  final FirebaseAuth auth = FirebaseAuth.instance;

  Future updateUserData (
      {String name,
      String biographie,
      String nationality,
      String genre,
      int age,
      String niveau,
      String nombre,
      String specialite,
      String equipment,
      int rs,
      String langue,
      String localite,
      String organisme,
      String capacite,
      String type,
      String activites,
      String description,
      String especes,
      String meilleure,
      String photo,
      String tarifs,
      int contact,
      String role}) async {
    return await userCollection.doc(uid).set({
      'role' : role,
      'name': name,
      'biographie': biographie,
      'nationality': nationality,
      'genre': genre,
      'age': age,
      'niveau': niveau,
      'nombre': nombre,
      'specialite': specialite,
      'eqiupment': equipment,
      'rs': rs,
      'langue': langue,
      'localite': localite,
      'organisme': organisme,
      'capacite': capacite,
      'type': type,
      'activites': activites,
      'description': description,
      'especes': especes,
      'meilleure': meilleure,
      'photo': photo,
      'tarifs': tarifs,
      'contact': contact,
    });
  }

  final CollectionReference placesCollection = FirebaseFirestore.instance.collection('places');

  Future registerPlace ({
  String nom,
    String lieu,
    String type,
    String niveau,
    String activities,
    String periode,
    String viemarine
  }) async {
    return await placesCollection.add({
      'nom': nom,
      'lieu': lieu,
      'type de plonge incontournable': type,
      'niveau acceptes': niveau,
      'activites proposes': activities,
      'periode pour y venir': periode,
      'Vie Marine': viemarine,
    });
  }

}
