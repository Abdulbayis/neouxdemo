// To parse this JSON data, do
//
// final indivdualpost = indivdualpostFromJson(jsonString);

import 'dart:convert';

Indivdualpost indivdualpostFromJson(String str) =>
    Indivdualpost.fromJson(json.decode(str));

String indivdualpostToJson(Indivdualpost data) => json.encode(data.toJson());

class Indivdualpost {
  Indivdualpost({
    required this.statusCode,
    required this.status,
    required this.banner,
    required this.horizontalSlider,
    required this.message,
  });

  int statusCode;
  bool status;
  Banner banner;
  List<HorizontalSlider> horizontalSlider;
  String message;

  factory Indivdualpost.fromJson(Map<String, dynamic> json) => Indivdualpost(
        statusCode: json["status_code"],
        status: json["status"],
        banner: Banner.fromJson(json["banner"]),
        horizontalSlider: List<HorizontalSlider>.from(
            json["horizontal_slider"].map((x) => HorizontalSlider.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status_code": statusCode,
        "status": status,
        "banner": banner.toJson(),
        "horizontal_slider":
            List<dynamic>.from(horizontalSlider.map((x) => x.toJson())),
        "message": message,
      };
}

class Banner {
  Banner({
    required this.banner,
    required this.bannerTitle,
  });

  String banner;
  String bannerTitle;

  factory Banner.fromJson(Map<String, dynamic> json) => Banner(
        banner: json["banner"],
        bannerTitle: json["banner_title"],
      );

  Map<String, dynamic> toJson() => {
        "banner": banner,
        "banner_title": bannerTitle,
      };
}

class HorizontalSlider {
  HorizontalSlider({
    required this.heading,
    required this.nameSlug,
    this.typeImage,
    required this.createdAt,
    required this.updatedAt,
    required this.data,
  });

  String heading;
  String nameSlug;
  dynamic typeImage;
  DateTime createdAt;
  DateTime updatedAt;
  List<Datum>? data;

  factory HorizontalSlider.fromJson(Map<String, dynamic> json) =>
      HorizontalSlider(
        heading: json["heading"] == null ? null : json["heading"],
        nameSlug: json["name_slug"] == null ? null : json["name_slug"],
        typeImage: json["type_image"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        data: json["data"] == null
            ? null
            : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "heading": heading == null ? null : heading,
        "name_slug": nameSlug == null ? null : nameSlug,
        "type_image": typeImage,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.title,
    required this.description,
    required this.listingImage,
    required this.actualPrice,
    required this.price,
    required this.currency,
    required this.currencyCode,
    this.rating,
    required this.ratingCount,
  });

  int id;
  String title;
  String description;
  String listingImage;
  String actualPrice;
  String price;
  int currency;
  String currencyCode;
  dynamic rating;
  int ratingCount;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        listingImage: json["listing_image"],
        actualPrice: json["actual_price"],
        price: json["price"],
        currency: json["currency"],
        currencyCode: json["currency_code"],
        rating: json["rating"],
        ratingCount: json["rating_count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "listing_image": listingImage,
        "actual_price": actualPrice,
        "price": price,
        "currency": currency,
        "currency_code": currencyCode,
        "rating": rating,
        "rating_count": ratingCount,
      };
}