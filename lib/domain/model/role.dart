class Role {
  Role({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
