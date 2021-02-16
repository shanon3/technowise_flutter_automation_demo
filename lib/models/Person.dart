class Person {
  final String name;
  final String hairColor;
  final String skinColor;
  final String eyeColor;

  Person({
    this.name,
    this.hairColor,
    this.skinColor,
    this.eyeColor,
  });

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
        name: json['name'],
        hairColor: json['hair_color'],
        skinColor: json['skin_color'],
        eyeColor: json['eye_color']);
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'hair_color': hairColor,
        'skin_color': skinColor,
        'eye_color': eyeColor
      };
}
