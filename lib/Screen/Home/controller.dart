 
import 'package:get/state_manager.dart';
import 'package:simple_product_details/Model/product.dart';

class HomeController extends GetxController {
  RxBool selected = false.obs;

  onTapFunction(){
    selected.value = !selected.value;
  }

  ProductRespository productRespository = ProductRespository();

  RxBool loading = false.obs;
  List productList = [].obs;

  HomeController(){
    loadProductFromRes();
  }
  
  loadProductFromRes() async {
    loading(true);
    productList = await productRespository.loadProductFromApi();
    loading(false);
  }
}