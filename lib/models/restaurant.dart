class Restaurant {
  final String id;
  final String name;
  final String description;

  Restaurant({
    required this.id,
    required this.name,
    required this.description,
  });

  factory Restaurant.fromMap(Map<String, dynamic> map) {
    return Restaurant(
      id: map['id'],
      name: map['name'],
      description: map['description'],
    );
  }
}
