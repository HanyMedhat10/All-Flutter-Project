// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductModel {
  final dynamic id;
  final String title;
  final String image;
  final String price;
  final String category;
  final String description;
  final RatingModel rating;
  ProductModel(
      {required this.id,
      required this.title,
      required this.image,
      required this.price,
      required this.category,
      required this.description,
      required this.rating});
  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      image: jsonData['image'],
      price: jsonData['price'].toString(),
      category: jsonData['category'],
      description: jsonData['description'],
      rating: RatingModel.fromJson(jsonData['rating']),
    );
  }
}

class RatingModel {
  final dynamic rate;
  final int count;
  RatingModel({
    required this.rate,
    required this.count,
  });
  factory RatingModel.fromJson(jsonData) {
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}
