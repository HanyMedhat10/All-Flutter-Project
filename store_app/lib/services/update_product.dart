import '../helper/api.dart';
import '../models/product_model.dart';

class UpdataProductServices {
  Future<ProductModel> updateProduct(
      {required String title,
      required String price,
      required String desc,
      required int id,
      required String image,
      required String category}) async {
    print('Product id = $id');
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/$id',
      body: {
        'title': title,
        'price': price,
        'description': desc,
        'image': image,
        'category': category,
      },
    );
    return ProductModel.fromJson(data);
  }
}
