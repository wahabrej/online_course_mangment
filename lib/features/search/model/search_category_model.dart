class SearchCategoryModel {
  final int id;
  final String name;
  final String imageUrl;

  SearchCategoryModel(
      {required this.id, required this.name, required this.imageUrl});

  factory SearchCategoryModel.fromJson(Map<String, dynamic> json) {
    return SearchCategoryModel(
      id: json['id'],
      name: json['name'],
      imageUrl: json['imageUrl'],
    );
  }
}
