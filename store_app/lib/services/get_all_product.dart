import 'dart:convert';

import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

import 'package:http/http.dart' as http;

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products', token: '');
    print(data);
    List<ProductModel> productsList = [];

    for (var i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productsList;
  }
}
