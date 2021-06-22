class UserModel {
  final String uid;

  UserModel({this.uid});
}

class Users {
  final String name;
  final String email;
  final String biographie;
  final String nationality;
  final String genre;
  final int age;
  final String niveau;
  final String nombre;
  final String specialite;
  final String equipment;
  final String rs;
  final String langue;
  final String localite;
  final String organisme;
  final String capacite;
  final String type;
  final String activites;
  final String description;
  final String especes;
  final String meilleure;
  final String photo;
  final String tarifs;
  final int contact;

  Users(
      {this.localite,
      this.organisme,
      this.capacite,
      this.type,
      this.activites,
      this.description,
      this.especes,
      this.meilleure,
      this.photo,
      this.tarifs,
      this.contact,
      this.name,
      this.biographie,
      this.nationality,
      this.genre,
      this.age,
      this.niveau,
      this.nombre,
      this.specialite,
      this.equipment,
      this.rs,
      this.langue,
      this.email});
}

class Role {
  final String role;
  Role({this.role});
}
