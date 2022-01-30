import 'package:getxfire/getxfire.dart';
import 'package:sanbershop_getx/controllers/product_repo.dart';

class ProductsController extends GetxController {
  ProductsRepository productsRepository = ProductsRepository();
  List products = [].obs;
  var showGrid = false.obs;
  var loading = false.obs;

  loadProductsFromRepo(String categoryName) async {
    loading(true);
    products = await productsRepository.loadProductsFromApi(categoryName);
    loading(false);
  }

}
