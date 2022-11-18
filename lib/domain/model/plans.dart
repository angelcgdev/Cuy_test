class Plan {
  Plan({
    required this.id,
    required this.bundleId,
    required this.name,
    required this.description,
    required this.quantity,
    required this.quantityReal,
    required this.price,
    required this.duration,
    required this.isSelected,
    required this.isUnlimited,
    required this.pricePlanId,
    required this.isPopular,
    required this.isRecommended,
    required this.repurchase,
    required this.isRollover,
    required this.name2,
    required this.name3,
    required this.hasFreeApps,
    required this.hasFacebookFull,
    required this.hasInstagramFull,
    required this.hasFacebookPhoto,
    required this.hasInstagramPhoto,
    required this.facebookFullDesc,
    required this.groupName,
    required this.nameByte,
    required this.nameSecond,
    required this.nameSms,
    required this.isUnlimitedByte,
    required this.isUnlimitedSecond,
    required this.isUnlimitedSms,
    required this.quantityByte,
    required this.quantitySecond,
    required this.quantitySms,
    required this.bundleIds,
    required this.mediumSpeed,
    required this.mediumSpeedDescription,
    required this.bundleType,
    required this.whiteBrand,
    required this.freeApps,
    required this.migrations,
  });

  final int id;
  final String bundleId;
  final String name;
  final String description;
  final double quantity;
  final dynamic quantityReal;
  final double price;
  final int duration;
  final bool isSelected;
  final bool isUnlimited;
  final String pricePlanId;
  final bool isPopular;
  final bool isRecommended;
  final bool repurchase;
  final bool isRollover;
  final String name2;
  final String name3;
  final bool hasFreeApps;
  final bool hasFacebookFull;
  final bool hasInstagramFull;
  final bool hasFacebookPhoto;
  final bool hasInstagramPhoto;
  final String facebookFullDesc;
  final String groupName;
  final String nameByte;
  final String nameSecond;
  final String nameSms;
  final bool isUnlimitedByte;
  final bool isUnlimitedSecond;
  final bool isUnlimitedSms;
  final int quantityByte;
  final int quantitySecond;
  final int quantitySms;
  final String bundleIds;
  final String mediumSpeed;
  final String mediumSpeedDescription;
  final BundleType bundleType;
  final int whiteBrand;
  final List<dynamic> freeApps;
  final List<dynamic> migrations;

  factory Plan.fromJson(Map<String, dynamic> json) => Plan(
        id: json["id"],
        bundleId: json["bundleId"],
        name: json["name"],
        description: json["description"],
        quantity: json["quantity"].toDouble(),
        quantityReal: json["quantityReal"],
        price: json["price"].toDouble(),
        duration: json["duration"],
        isSelected: json["isSelected"],
        isUnlimited: json["isUnlimited"],
        pricePlanId: json["pricePlanID"],
        isPopular: json["isPopular"],
        isRecommended: json["isRecommended"],
        repurchase: json["repurchase"],
        isRollover: json["isRollover"],
        name2: json["name2"],
        name3: json["name3"],
        hasFreeApps: json["hasFreeApps"],
        hasFacebookFull: json["hasFacebookFull"],
        hasInstagramFull: json["hasInstagramFull"],
        hasFacebookPhoto: json["hasFacebookPhoto"],
        hasInstagramPhoto: json["hasInstagramPhoto"],
        facebookFullDesc: json["facebookFullDesc"],
        groupName: json["groupName"],
        nameByte: json["nameByte"],
        nameSecond: json["nameSecond"],
        nameSms: json["nameSms"],
        isUnlimitedByte: json["isUnlimitedByte"],
        isUnlimitedSecond: json["isUnlimitedSecond"],
        isUnlimitedSms: json["isUnlimitedSms"],
        quantityByte: json["quantityByte"],
        quantitySecond: json["quantitySecond"],
        quantitySms: json["quantitySms"],
        bundleIds: json["bundleIds"],
        mediumSpeed: json["mediumSpeed"],
        mediumSpeedDescription: json["mediumSpeedDescription"],
        bundleType: BundleType.fromJson(json["bundleType"]),
        whiteBrand: json["whiteBrand"],
        freeApps: List<dynamic>.from(json["freeApps"].map((x) => x)),
        migrations: List<dynamic>.from(json["migrations"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "bundleId": bundleId,
        "name": name,
        "description": description,
        "quantity": quantity,
        "quantityReal": quantityReal,
        "price": price,
        "duration": duration,
        "isSelected": isSelected,
        "isUnlimited": isUnlimited,
        "pricePlanID": pricePlanId,
        "isPopular": isPopular,
        "isRecommended": isRecommended,
        "repurchase": repurchase,
        "isRollover": isRollover,
        "name2": name2,
        "name3": name3,
        "hasFreeApps": hasFreeApps,
        "hasFacebookFull": hasFacebookFull,
        "hasInstagramFull": hasInstagramFull,
        "hasFacebookPhoto": hasFacebookPhoto,
        "hasInstagramPhoto": hasInstagramPhoto,
        "facebookFullDesc": facebookFullDesc,
        "groupName": groupName,
        "nameByte": nameByte,
        "nameSecond": nameSecond,
        "nameSms": nameSms,
        "isUnlimitedByte": isUnlimitedByte,
        "isUnlimitedSecond": isUnlimitedSecond,
        "isUnlimitedSms": isUnlimitedSms,
        "quantityByte": quantityByte,
        "quantitySecond": quantitySecond,
        "quantitySms": quantitySms,
        "bundleIds": bundleIds,
        "mediumSpeed": mediumSpeed,
        "mediumSpeedDescription": mediumSpeedDescription,
        "bundleType": bundleType.toJson(),
        "whiteBrand": whiteBrand,
        "freeApps": List<dynamic>.from(freeApps.map((x) => x)),
        "migrations": List<dynamic>.from(migrations.map((x) => x)),
      };
}

class BundleType {
  BundleType({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  factory BundleType.fromJson(Map<String, dynamic> json) => BundleType(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
