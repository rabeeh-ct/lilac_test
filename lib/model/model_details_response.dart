class ModelDetailsResponse {
  final bool? status;
  final List<ModelDetailsData>? data;

  ModelDetailsResponse({
    this.status,
    this.data,
  });

  factory ModelDetailsResponse.fromJson(Map<String, dynamic> json) => ModelDetailsResponse(
    status: json["status"],
    data: json["data"] == null ? [] : List<ModelDetailsData>.from(json["data"]!.map((x) => ModelDetailsData.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class ModelDetailsData {
  final int? id;
  final String? name;

  ModelDetailsData({
    this.id,
    this.name,
  });

  factory ModelDetailsData.fromJson(Map<String, dynamic> json) => ModelDetailsData(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}