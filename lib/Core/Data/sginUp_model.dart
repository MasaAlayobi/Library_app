// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SginUpModel {
  String username;
  String password;
  String first_name;
  String last_name;
  String phone;
  String location;
  String birthdate;
  String gender;
  SginUpModel({
    required this.username,
    required this.password,
    required this.first_name,
    required this.last_name,
    required this.phone,
    required this.location,
    required this.birthdate,
    required this.gender,
  });


  SginUpModel copyWith({
    String? username,
    String? password,
    String? first_name,
    String? last_name,
    String? phone,
    String? location,
    String? birthdate,
    String? gender,
  }) {
    return SginUpModel(
      username: username ?? this.username,
      password: password ?? this.password,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      phone: phone ?? this.phone,
      location: location ?? this.location,
      birthdate: birthdate ?? this.birthdate,
      gender: gender ?? this.gender,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'password': password,
      'first_name': first_name,
      'last_name': last_name,
      'phone': phone,
      'location': location,
      'birthdate': birthdate,
      'gender': gender,
    };
  }

  factory SginUpModel.fromMap(Map<String, dynamic> map) {
    return SginUpModel(
      username: map['username'] as String,
      password: map['password'] as String,
      first_name: map['first_name'] as String,
      last_name: map['last_name'] as String,
      phone: map['phone'] as String,
      location: map['location'] as String,
      birthdate: map['birthdate'] as String,
      gender: map['gender'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SginUpModel.fromJson(String source) => SginUpModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SginUpModel(username: $username, password: $password, first_name: $first_name, last_name: $last_name, phone: $phone, location: $location, birthdate: $birthdate, gender: $gender)';
  }

  @override
  bool operator ==(covariant SginUpModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.username == username &&
      other.password == password &&
      other.first_name == first_name &&
      other.last_name == last_name &&
      other.phone == phone &&
      other.location == location &&
      other.birthdate == birthdate &&
      other.gender == gender;
  }

  @override
  int get hashCode {
    return username.hashCode ^
      password.hashCode ^
      first_name.hashCode ^
      last_name.hashCode ^
      phone.hashCode ^
      location.hashCode ^
      birthdate.hashCode ^
      gender.hashCode;
  }
}
