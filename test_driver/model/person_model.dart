class PersonModel {
  final String name;
  final String hairColor;
  final String skinColor;
  final String eyeColor;

  PersonModel({
    this.name,
    this.hairColor,
    this.skinColor,
    this.eyeColor,
  });

  factory PersonModel.fromJson(Map<String, dynamic> json) {
    return PersonModel(
      name: json['name'],
      hairColor: json['hair_color'],
      skinColor: json['skin_color'],
      eyeColor: json['eye_color'],
    );
  }
}
