
import 'dart:convert';

import '../../modal/news_modal.dart';
import 'package:http/http.dart' as http;

import '../../modal/product_modal.dart';

class ApiClient{

  Future<NewsModal?>getnews()async{
    try{
      var respons=await http.get(Uri.parse('https://newsapi.org/v2/everything?q=tesla&from=2024-06-30&sortBy=publishedAt&apiKey=56adef49637f49a69682596f150eac81'));
      if(respons.statusCode==200){
        NewsModal modal=NewsModal.fromJson(jsonDecode(respons.body));
        return modal;
      }
      return null;
    }catch(e){
      print("Error:${e.toString()}");
    }
  }

  Future<List<ProductModal>> getproduct() async {
    try {
      var response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
      if (response.statusCode == 200) {
        List<ProductModal> modals = (jsonDecode(response.body) as List)
            .map((json) => ProductModal.fromJson(json))
            .toList();
        print(modals);
        return modals;
      } else {
        return []; // Return an empty list if the status code is not 200
      }
    } catch (e) {
      print("Error: ${e.toString()}");
      return []; // Return an empty list if an error occurs
    }
  }
}