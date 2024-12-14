
class VehicleDetailsResponse {
  final bool? status;
  final Data? data;

  VehicleDetailsResponse({
    this.status,
    this.data,
  });

  factory VehicleDetailsResponse.fromJson(Map<String, dynamic> json) => VehicleDetailsResponse(
    status: json["status"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data?.toJson(),
  };
}

class Data {
  final int? id;
  final String? uniqueId;
  final int? fkUserId;
  final int? fkRoleId;
  final int? fkVehicleTypeId;
  final int? fkCategoryId;
  final int? fkSubCategoryId;
  final int? fkBrandId;
  final int? fkVehicleModelId;
  final int? fkVehicleVariantId;
  final int? fkVehicleColorId;
  final int? fkTransmissionId;
  final int? fkFuelTypeId;
  final int? fkBodyTypeId;
  final dynamic fkVehicleFeaturesId;
  final String? year;
  final String? location;
  final String? latitude;
  final String? longitude;
  final String? kmDriven;
  final DateTime? insuranceValidity;
  final String? price;
  final String? type;
  final String? description;
  final dynamic dealPrice;
  final int? isNewArrival;
  final int? isPopular;
  final String? status;
  final dynamic vehicleStatus;
  final String? isVerified;
  final dynamic remark;
  final dynamic percentage;
  final dynamic totalAmount;
  final int? createdBy;
  final int? updatedBy;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic deletedAt;
  final List<Image>? images;
  final List<dynamic>? overviewDetails;
  final List<dynamic>? specificationDetails;
  final List<dynamic>? vehicleDetailFeatureVehicles;
  final Brand? brand;
  final BodyType? category;
  final Brand? subCategory;
  final Brand? vehicleModel;
  final Brand? vehicleVariant;
  final Brand? vehicleColor;
  final BodyType? transmission;
  final BodyType? fuelType;
  final BodyType? bodyType;
  final BodyType? vehicleType;
  final List<VehicleInfoDetail>? vehicleInfoDetails;
  final List<dynamic>? vehicleOverviewDetails;

  Data({
    this.id,
    this.uniqueId,
    this.fkUserId,
    this.fkRoleId,
    this.fkVehicleTypeId,
    this.fkCategoryId,
    this.fkSubCategoryId,
    this.fkBrandId,
    this.fkVehicleModelId,
    this.fkVehicleVariantId,
    this.fkVehicleColorId,
    this.fkTransmissionId,
    this.fkFuelTypeId,
    this.fkBodyTypeId,
    this.fkVehicleFeaturesId,
    this.year,
    this.location,
    this.latitude,
    this.longitude,
    this.kmDriven,
    this.insuranceValidity,
    this.price,
    this.type,
    this.description,
    this.dealPrice,
    this.isNewArrival,
    this.isPopular,
    this.status,
    this.vehicleStatus,
    this.isVerified,
    this.remark,
    this.percentage,
    this.totalAmount,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.images,
    this.overviewDetails,
    this.specificationDetails,
    this.vehicleDetailFeatureVehicles,
    this.brand,
    this.category,
    this.subCategory,
    this.vehicleModel,
    this.vehicleVariant,
    this.vehicleColor,
    this.transmission,
    this.fuelType,
    this.bodyType,
    this.vehicleType,
    this.vehicleInfoDetails,
    this.vehicleOverviewDetails,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    uniqueId: json["unique_id"],
    fkUserId: json["fk_user_id"],
    fkRoleId: json["fk_role_id"],
    fkVehicleTypeId: json["fk_vehicle_type_id"],
    fkCategoryId: json["fk_category_id"],
    fkSubCategoryId: json["fk_sub_category_id"],
    fkBrandId: json["fk_brand_id"],
    fkVehicleModelId: json["fk_vehicle_model_id"],
    fkVehicleVariantId: json["fk_vehicle_variant_id"],
    fkVehicleColorId: json["fk_vehicle_color_id"],
    fkTransmissionId: json["fk_transmission_id"],
    fkFuelTypeId: json["fk_fuel_type_id"],
    fkBodyTypeId: json["fk_body_type_id"],
    fkVehicleFeaturesId: json["fk_vehicle_features_id"],
    year: json["year"],
    location: json["location"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    kmDriven: json["km_driven"],
    insuranceValidity: json["insurance_validity"] == null ? null : DateTime.parse(json["insurance_validity"]),
    price: json["price"],
    type: json["type"],
    description: json["description"],
    dealPrice: json["deal_price"],
    isNewArrival: json["is_new_arrival"],
    isPopular: json["is_popular"],
    status: json["status"],
    vehicleStatus: json["vehicle_status"],
    isVerified: json["is_verified"],
    remark: json["remark"],
    percentage: json["percentage"],
    totalAmount: json["total_amount"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    images: json["images"] == null ? [] : List<Image>.from(json["images"]!.map((x) => Image.fromJson(x))),
    overviewDetails: json["overview_details"] == null ? [] : List<dynamic>.from(json["overview_details"]!.map((x) => x)),
    specificationDetails: json["specification_details"] == null ? [] : List<dynamic>.from(json["specification_details"]!.map((x) => x)),
    vehicleDetailFeatureVehicles: json["vehicle_detail_feature_vehicles"] == null ? [] : List<dynamic>.from(json["vehicle_detail_feature_vehicles"]!.map((x) => x)),
    brand: json["brand"] == null ? null : Brand.fromJson(json["brand"]),
    category: json["category"] == null ? null : BodyType.fromJson(json["category"]),
    subCategory: json["sub_category"] == null ? null : Brand.fromJson(json["sub_category"]),
    vehicleModel: json["vehicle_model"] == null ? null : Brand.fromJson(json["vehicle_model"]),
    vehicleVariant: json["vehicle_variant"] == null ? null : Brand.fromJson(json["vehicle_variant"]),
    vehicleColor: json["vehicle_color"] == null ? null : Brand.fromJson(json["vehicle_color"]),
    transmission: json["transmission"] == null ? null : BodyType.fromJson(json["transmission"]),
    fuelType: json["fuel_type"] == null ? null : BodyType.fromJson(json["fuel_type"]),
    bodyType: json["body_type"] == null ? null : BodyType.fromJson(json["body_type"]),
    vehicleType: json["vehicle_type"] == null ? null : BodyType.fromJson(json["vehicle_type"]),
    vehicleInfoDetails: json["vehicle_info_details"] == null ? [] : List<VehicleInfoDetail>.from(json["vehicle_info_details"]!.map((x) => VehicleInfoDetail.fromJson(x))),
    vehicleOverviewDetails: json["vehicle_overview_details"] == null ? [] : List<dynamic>.from(json["vehicle_overview_details"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "unique_id": uniqueId,
    "fk_user_id": fkUserId,
    "fk_role_id": fkRoleId,
    "fk_vehicle_type_id": fkVehicleTypeId,
    "fk_category_id": fkCategoryId,
    "fk_sub_category_id": fkSubCategoryId,
    "fk_brand_id": fkBrandId,
    "fk_vehicle_model_id": fkVehicleModelId,
    "fk_vehicle_variant_id": fkVehicleVariantId,
    "fk_vehicle_color_id": fkVehicleColorId,
    "fk_transmission_id": fkTransmissionId,
    "fk_fuel_type_id": fkFuelTypeId,
    "fk_body_type_id": fkBodyTypeId,
    "fk_vehicle_features_id": fkVehicleFeaturesId,
    "year": year,
    "location": location,
    "latitude": latitude,
    "longitude": longitude,
    "km_driven": kmDriven,
    "insurance_validity": "${insuranceValidity!.year.toString().padLeft(4, '0')}-${insuranceValidity!.month.toString().padLeft(2, '0')}-${insuranceValidity!.day.toString().padLeft(2, '0')}",
    "price": price,
    "type": type,
    "description": description,
    "deal_price": dealPrice,
    "is_new_arrival": isNewArrival,
    "is_popular": isPopular,
    "status": status,
    "vehicle_status": vehicleStatus,
    "is_verified": isVerified,
    "remark": remark,
    "percentage": percentage,
    "total_amount": totalAmount,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "deleted_at": deletedAt,
    "images": images == null ? [] : List<dynamic>.from(images!.map((x) => x.toJson())),
    "overview_details": overviewDetails == null ? [] : List<dynamic>.from(overviewDetails!.map((x) => x)),
    "specification_details": specificationDetails == null ? [] : List<dynamic>.from(specificationDetails!.map((x) => x)),
    "vehicle_detail_feature_vehicles": vehicleDetailFeatureVehicles == null ? [] : List<dynamic>.from(vehicleDetailFeatureVehicles!.map((x) => x)),
    "brand": brand?.toJson(),
    "category": category?.toJson(),
    "sub_category": subCategory?.toJson(),
    "vehicle_model": vehicleModel?.toJson(),
    "vehicle_variant": vehicleVariant?.toJson(),
    "vehicle_color": vehicleColor?.toJson(),
    "transmission": transmission?.toJson(),
    "fuel_type": fuelType?.toJson(),
    "body_type": bodyType?.toJson(),
    "vehicle_type": vehicleType?.toJson(),
    "vehicle_info_details": vehicleInfoDetails == null ? [] : List<dynamic>.from(vehicleInfoDetails!.map((x) => x.toJson())),
    "vehicle_overview_details": vehicleOverviewDetails == null ? [] : List<dynamic>.from(vehicleOverviewDetails!.map((x) => x)),
  };
}

class BodyType {
  final int? id;
  final int? fkVehicleTypeId;
  final String? name;
  final int? createdBy;
  final int? updatedBy;
  final dynamic createdAt;
  final dynamic updatedAt;

  BodyType({
    this.id,
    this.fkVehicleTypeId,
    this.name,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
  });

  factory BodyType.fromJson(Map<String, dynamic> json) => BodyType(
    id: json["id"],
    fkVehicleTypeId: json["fk_vehicle_type_id"],
    name: json["name"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "fk_vehicle_type_id": fkVehicleTypeId,
    "name": name,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}

class Brand {
  final int? id;
  final int? fkVehicleTypeId;
  final String? name;
  final String? icon;
  final String? status;
  final int? createdBy;
  final int? updatedBy;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic deletedAt;
  final int? fkCategoryId;
  final int? fkBrandId;
  final int? fkVehicleModelId;

  Brand({
    this.id,
    this.fkVehicleTypeId,
    this.name,
    this.icon,
    this.status,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.fkCategoryId,
    this.fkBrandId,
    this.fkVehicleModelId,
  });

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
    id: json["id"],
    fkVehicleTypeId: json["fk_vehicle_type_id"],
    name: json["name"],
    icon: json["icon"],
    status: json["status"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    fkCategoryId: json["fk_category_id"],
    fkBrandId: json["fk_brand_id"],
    fkVehicleModelId: json["fk_vehicle_model_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "fk_vehicle_type_id": fkVehicleTypeId,
    "name": name,
    "icon": icon,
    "status": status,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "deleted_at": deletedAt,
    "fk_category_id": fkCategoryId,
    "fk_brand_id": fkBrandId,
    "fk_vehicle_model_id": fkVehicleModelId,
  };
}

class Image {
  final int? id;
  final int? fkVehicleDetailsId;
  final String? imageUrl;
  final int? createdBy;
  final int? updatedBy;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic deletedAt;

  Image({
    this.id,
    this.fkVehicleDetailsId,
    this.imageUrl,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: json["id"],
    fkVehicleDetailsId: json["fk_vehicle_details_id"],
    imageUrl: json["image_url"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "fk_vehicle_details_id": fkVehicleDetailsId,
    "image_url": imageUrl,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "deleted_at": deletedAt,
  };
}

class VehicleInfoDetail {
  final int? id;
  final int? fkVehicleDetailsId;
  final int? fkVehicleInfoId;
  final String? infoDetails;
  final int? createdBy;
  final int? updatedBy;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic deletedAt;
  final Brand? vehicleInfo;

  VehicleInfoDetail({
    this.id,
    this.fkVehicleDetailsId,
    this.fkVehicleInfoId,
    this.infoDetails,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.vehicleInfo,
  });

  factory VehicleInfoDetail.fromJson(Map<String, dynamic> json) => VehicleInfoDetail(
    id: json["id"],
    fkVehicleDetailsId: json["fk_vehicle_details_id"],
    fkVehicleInfoId: json["fk_vehicle_info_id"],
    infoDetails: json["info_details"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    vehicleInfo: json["vehicle_info"] == null ? null : Brand.fromJson(json["vehicle_info"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "fk_vehicle_details_id": fkVehicleDetailsId,
    "fk_vehicle_info_id": fkVehicleInfoId,
    "info_details": infoDetails,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "deleted_at": deletedAt,
    "vehicle_info": vehicleInfo?.toJson(),
  };
}
