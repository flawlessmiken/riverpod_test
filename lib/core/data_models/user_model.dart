// import 'dart:convert';

// class User {
//   User({
//     this.id,
//     this.uuid,
//     this.name,
//     this.email,
//     this.phone,
//     this.emailVerifiedAt,
//     this.profilePhotoPath,
//     this.createdAt,
//     this.updatedAt,
//     this.profilePhotoUrl,
//     this.isVerified,
//   });

//   int id;
//   String uuid;
//   String name;
//   String email;
//   String phone;
//   dynamic emailVerifiedAt;
//   dynamic profilePhotoPath;
//   DateTime createdAt;
//   DateTime updatedAt;
//   String profilePhotoUrl;
//   bool isVerified;

//   User copyWith({
//     int id,
//     String uuid,
//     String name,
//     String email,
//     String phone,
//     dynamic emailVerifiedAt,
//     dynamic profilePhotoPath,
//     DateTime createdAt,
//     DateTime updatedAt,
//     String profilePhotoUrl,
//     bool isVerified,
//   }) =>
//       User(
//         id: id ?? this.id,
//         uuid: uuid ?? this.uuid,
//         name: name ?? this.name,
//         email: email ?? this.email,
//         phone: phone ?? this.phone,
//         emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
//         profilePhotoPath: profilePhotoPath ?? this.profilePhotoPath,
//         createdAt: createdAt ?? this.createdAt,
//         updatedAt: updatedAt ?? this.updatedAt,
//         profilePhotoUrl: profilePhotoUrl ?? this.profilePhotoUrl,
//         isVerified: isVerified ?? this.isVerified,
//       );

//   factory User.fromJson(String str) => User.fromMap(json.decode(str));

//   String toJson() => json.encode(toMap());

//   factory User.fromMap(Map<String, dynamic> json) => User(
//     id: json["id"],
//     uuid: json["uuid"],
//     name: json["name"],
//     email: json["email"],
//     phone: json["phone"],
//     emailVerifiedAt: json["email_verified_at"]== null ? null : json["email_verified_at"],
//     profilePhotoPath: json["profile_photo_path"],
//     createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
//     updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
//     profilePhotoUrl: json["profile_photo_url"],
//     isVerified: json["is_verified"] == null ? null : json["is_verified"],
//   );

//   Map<String, dynamic> toMap() => {
//     "id": id,
//     "uuid": uuid,
//     "name": name,
//     "email": email,
//     "phone": phone,
//     "email_verified_at": emailVerifiedAt,
//     "profile_photo_path": profilePhotoPath,
//     "created_at": createdAt?.toIso8601String(),
//     "updated_at": updatedAt?.toIso8601String(),
//     "profile_photo_url": profilePhotoUrl,
//     "is_verified": isVerified == null ? null : isVerified,
//   };
// }



// class User {
//     User({
//         this.id,
//         this.firstname,
//         this.lastname,
//         this.profilepic,
//         this.username,
//         this.password,
//         this.emailValidation,
//         this.updatedAt,
//         this.createdAt,
//     });

//     String id;
//     String firstname;
//     String lastname;
//     String profilepic;
//     String username;
//     String password;
//     bool emailValidation;
//     DateTime updatedAt;
//     DateTime createdAt;

//     factory User.fromJson(Map<String, dynamic> json) => User(
//         id: json["id"],
//         firstname: json["firstname"],
//         lastname: json["lastname"],
//         profilepic: json["profilepic"],
//         username: json["username"],
//         password: json["password"],
//         emailValidation: json["email_validation"],
//         updatedAt: DateTime.parse(json["updatedAt"]),
//         createdAt: DateTime.parse(json["createdAt"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "firstname": firstname,
//         "lastname": lastname,
//         "profilepic": profilepic,
//         "username": username,
//         "password": password,
//         "email_validation": emailValidation,
//         "updatedAt": updatedAt.toIso8601String(),
//         "createdAt": createdAt.toIso8601String(),
//     };
// }
