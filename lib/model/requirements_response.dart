class RequirementsResponse {
  final bool? status;
  final List<Datum>? data;

  RequirementsResponse({
    this.status,
    this.data,
  });

  factory RequirementsResponse.fromJson(Map<String, dynamic> json) => RequirementsResponse(
    status: json["status"],
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Datum {
  final int? id;
  final int? fkVehicleTypeId;
  final int? fkBrandId;
  final int? fkVehicleModelId;
  final int? fkVehicleVariantId;
  final int? fkTransmissionId;
  final int? fkFuelTypeId;
  final int? fkVehicleColorId;
  final String? year;
  final String? status;
  final Brand? vehicleType;
  final Brand? brand;
  final Brand? vehicleModel;
  final Brand? vehicleVariant;
  final Brand? transmission;
  final Brand? fuelType;
  final Brand? vehicleColor;

  Datum({
    this.id,
    this.fkVehicleTypeId,
    this.fkBrandId,
    this.fkVehicleModelId,
    this.fkVehicleVariantId,
    this.fkTransmissionId,
    this.fkFuelTypeId,
    this.fkVehicleColorId,
    this.year,
    this.status,
    this.vehicleType,
    this.brand,
    this.vehicleModel,
    this.vehicleVariant,
    this.transmission,
    this.fuelType,
    this.vehicleColor,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    fkVehicleTypeId: json["fk_vehicle_type_id"],
    fkBrandId: json["fk_brand_id"],
    fkVehicleModelId: json["fk_vehicle_model_id"],
    fkVehicleVariantId: json["fk_vehicle_variant_id"],
    fkTransmissionId: json["fk_transmission_id"],
    fkFuelTypeId: json["fk_fuel_type_id"],
    fkVehicleColorId: json["fk_vehicle_color_id"],
    year: json["year"],
    status: json["status"],
    vehicleType: json["vehicle_type"] == null ? null : Brand.fromJson(json["vehicle_type"]),
    brand: json["brand"] == null ? null : Brand.fromJson(json["brand"]),
    vehicleModel: json["vehicle_model"] == null ? null : Brand.fromJson(json["vehicle_model"]),
    vehicleVariant: json["vehicle_variant"] == null ? null : Brand.fromJson(json["vehicle_variant"]),
    transmission: json["transmission"] == null ? null : Brand.fromJson(json["transmission"]),
    fuelType: json["fuel_type"] == null ? null : Brand.fromJson(json["fuel_type"]),
    vehicleColor: json["vehicle_color"] == null ? null : Brand.fromJson(json["vehicle_color"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "fk_vehicle_type_id": fkVehicleTypeId,
    "fk_brand_id": fkBrandId,
    "fk_vehicle_model_id": fkVehicleModelId,
    "fk_vehicle_variant_id": fkVehicleVariantId,
    "fk_transmission_id": fkTransmissionId,
    "fk_fuel_type_id": fkFuelTypeId,
    "fk_vehicle_color_id": fkVehicleColorId,
    "year": year,
    "status": status,
    "vehicle_type": vehicleType?.toJson(),
    "brand": brand?.toJson(),
    "vehicle_model": vehicleModel?.toJson(),
    "vehicle_variant": vehicleVariant?.toJson(),
    "transmission": transmission?.toJson(),
    "fuel_type": fuelType?.toJson(),
    "vehicle_color": vehicleColor?.toJson(),
  };
}

class Brand {
  final int? id;
  final String? name;

  Brand({
    this.id,
    this.name,
  });

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}
