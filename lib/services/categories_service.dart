import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getProductsByCategory(
      {required String category}) async {
    List<ProductModel> data = await Api().get(url: 'https://fakestoreapi.com/products/category/$category');
      List<ProductModel> productsList = [];
      for (int i = 0; i < data.length; i++) {
        productsList.add(ProductModel.fromJson(data[i]));
      }
      return productsList;
    
  }
}
