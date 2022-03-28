import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_app/model/product.dart';
import 'package:http/http.dart' as http;

class NetwortRequest {
  static const String url = 'http://103.170.246.112:50667/item/newest';

  static List<Product> parseProduct(String responseBody) {
    var list = json.decode(responseBody) as List<dynamic>;
    List<Product> products  = list.map((model) => Product.fromJson(model)).toList();
    
    return products;
  } 

  // ham fetch api
  static Future<List<Product>> fetchProducts({int page = 1}) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return compute(parseProduct, response.body); 
    } else if (response.statusCode == 404) {
      throw Exception('Không tìm thấy!');
    } else {
      throw Exception('Can\'t get product');
    }
  }
}