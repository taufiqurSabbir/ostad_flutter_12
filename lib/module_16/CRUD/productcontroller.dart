
import 'dart:convert';

import 'package:flutter_batch_12/module_16/CRUD/utils/urls.dart';

import 'model/product_model.dart';
import 'package:http/http.dart' as http;

class ProductController {
  List<Data>products = [];

  Future fetchProduct() async {
    final response = await http.get(Uri.parse(Urls.readProduct));

    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      ProductModel model = ProductModel.fromJson(data);
      products = model.data ?? [];
    }
  }
}