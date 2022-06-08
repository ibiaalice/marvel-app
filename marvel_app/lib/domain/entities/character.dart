class Character {
  final int id;
  final String name;
  final String description;
  final String modified;
  final String imgUrl;

  Character({
    required this.id,
    required this.name,
    required this.description,
    required this.modified,
    required this.imgUrl,
  });

  factory Character.fromMap(Map value) {
    final imgUrl = value['thumbnail']['path'] +
        '/portrait_uncanny.' +
        value['thumbnail']['extension'];

    return Character(
      id: value['id'],
      name: value['name'],
      description: value['description'],
      modified: value['modified'],
      imgUrl: imgUrl,
    );
  }

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'description': description,
        'modified': modified,
        'imgUrl': imgUrl,
      };
}
