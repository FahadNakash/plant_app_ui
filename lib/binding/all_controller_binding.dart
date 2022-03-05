import 'package:get/get.dart';
import '../controller/plant_controller.dart';
class AllControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<PlantController>(() => PlantController());

  }
}