class BrandDetailsResponse {
  final bool? status;
  final BrandData? data;

  BrandDetailsResponse({
    this.status,
    this.data,
  });

  factory BrandDetailsResponse.fromJson(Map<String, dynamic> json) => BrandDetailsResponse(
    status: json["status"],
    data: json["data"] == null ? null : BrandData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data?.toJson(),
  };
}

class BrandData {
  final List<Brand>? brands;
  final List<Brand>? vehicleInfo;

  BrandData({
    this.brands,
    this.vehicleInfo,
  });

  factory BrandData.fromJson(Map<String, dynamic> json) => BrandData(
    brands: json["brands"] == null ? [] : List<Brand>.from(json["brands"]!.map((x) => Brand.fromJson(x))),
    vehicleInfo: json["vehicleInfo"] == null ? [] : List<Brand>.from(json["vehicleInfo"]!.map((x) => Brand.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "brands": brands == null ? [] : List<dynamic>.from(brands!.map((x) => x.toJson())),
    "vehicleInfo": vehicleInfo == null ? [] : List<dynamic>.from(vehicleInfo!.map((x) => x.toJson())),
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
