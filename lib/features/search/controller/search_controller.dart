import 'package:coursemanagement/core/utils/constants/icon_path.dart';
import 'package:coursemanagement/features/search/model/search_category_model.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SearchScreenController extends GetxController {
  var searchTextController = TextEditingController();
  var seartchTopics = [
    "Business",
    "Science Economy",
    "Robotic",
    "Digital Marketing",
    "Chemistry",
    "Math"
  ].obs;
  void search() {}
  var categoryList = <SearchCategoryModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadCategories();
  }

  void loadCategories() {
    // Sample JSON data
    List<Map<String, dynamic>> jsonData = [
      {"id": 1, "name": "Electronics", "imageUrl": IconPath.categoryImage},
      {"id": 2, "name": "Fashion", "imageUrl": IconPath.categoryImage},
      {"id": 3, "name": "Home", "imageUrl": IconPath.categoryImage},
      {"id": 4, "name": "Toys", "imageUrl": IconPath.categoryImage},
      {"id": 5, "name": "Books", "imageUrl": IconPath.categoryImage},
      {"id": 1, "name": "Electronics", "imageUrl": IconPath.categoryImage},
      {"id": 2, "name": "Fashion", "imageUrl": IconPath.categoryImage},
      {"id": 3, "name": "Home", "imageUrl": IconPath.categoryImage},
      {"id": 4, "name": "Toys", "imageUrl": IconPath.categoryImage},
      {"id": 5, "name": "Books", "imageUrl": IconPath.categoryImage},
    ];

    // Map JSON data to category objects and update the list
    categoryList.value =
        jsonData.map((json) => SearchCategoryModel.fromJson(json)).toList();
  }
}
