class Comic {
  final int id;
  final String title;
  final String description;
  final String imgUrl;
  final String lastPublication;
  final String diamondCode;
  final int pageCount;

  Comic({
    required this.id,
    required this.title,
    required this.description,
    required this.imgUrl,
    required this.lastPublication,
    required this.diamondCode,
    required this.pageCount,
  });

  factory Comic.fromMap(Map value) {
    final imgUrl = value['thumbnail']['path'] +
        '/portrait_uncanny.' +
        value['thumbnail']['extension'];

    return Comic(
      id: value['id'],
      title: value['title'],
      description: value['description'] ?? '',
      imgUrl: imgUrl,
      lastPublication: value['modified'],
      diamondCode: value['diamondCode'],
      pageCount: value['pageCount'],
    );
  }

  Map<String, dynamic> toMap() => {
        'id': id,
        'title': title,
        'description': description,
        'modified': lastPublication,
        'imgUrl': imgUrl,
        'diamondCode': diamondCode,
        'pageCount': pageCount,
      };
}
