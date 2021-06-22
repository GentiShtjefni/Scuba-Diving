import 'package:firebase_auth/firebase_auth.dart';
import 'package:project/mainDirectory/tools/database.dart';
import 'package:project/mainDirectory/tools/user.dart';

class FirebaseLogin {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Stream<User> get authStateChanges => _firebaseAuth.idTokenChanges();

  UserModel _userFromFirebaseUser(User user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  Stream<UserModel> get user {
    return _firebaseAuth.authStateChanges().map(_userFromFirebaseUser);
  }

  Future login({String email, String password}) async {
    try {
      UserCredential result = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      // User user = result.user;
      // print(user);

      return result.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  Future signUp(
      {String role,
      String email,
      String password,
      String name,
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
      int contact}) async {
    try {
      UserCredential result = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      await FirebaseService(uid: user.uid).updateUserData(
        role: role,
        name: name,
        localite: localite,
        organisme: organisme,
        capacite: capacite,
        type: type,
        niveau: niveau,
        activites: activites,
        description: description,
        langue: langue,
        especes: especes,
        meilleure: meilleure,
        photo: photo,
        tarifs: tarifs,
        contact: contact,
        rs: rs,
        biographie: biographie,
        nationality: nationality,
        genre: genre,
        nombre: nombre,
        specialite: specialite,
        equipment: equipment,
        age: age,
      );
      return _userFromFirebaseUser(user);
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return "Signed Out";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
