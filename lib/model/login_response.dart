class LoginResponse {
  final int? code;
  final String? message;
  final Data? data;
  final String? token;
  final bool? status;

  LoginResponse({
    required this.code,
    required this.message,
    required this.data,
    required this.token,
    required this.status,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        code: json["code"],
        message: json["message"] is List ? json["message"][0] : json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        token: json["token"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": data?.toJson(),
        "token": token,
      };
}

class Data {
  final int? id;
  final int? roleId;
  final String? name;
  final String? email;
  final dynamic emailVerifiedAt;
  final String? mobile;
  final dynamic profileImage;
  final dynamic location;
  final dynamic latitude;
  final dynamic longitude;
  final String? status;
  final int? isActive;
  final int? createdBy;
  final int? updatedBy;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Data({
    required this.id,
    required this.roleId,
    required this.name,
    required this.email,
    required this.emailVerifiedAt,
    required this.mobile,
    required this.profileImage,
    required this.location,
    required this.latitude,
    required this.longitude,
    required this.status,
    required this.isActive,
    required this.createdBy,
    required this.updatedBy,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        roleId: json["role_id"],
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        mobile: json["mobile"],
        profileImage: json["profile_image"],
        location: json["location"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        status: json["status"],
        isActive: json["is_active"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "role_id": roleId,
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "mobile": mobile,
        "profile_image": profileImage,
        "location": location,
        "latitude": latitude,
        "longitude": longitude,
        "status": status,
        "is_active": isActive,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
