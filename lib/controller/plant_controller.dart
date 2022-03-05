import 'package:get/get.dart';
import '../models/plant.dart';
import 'package:flutter/material.dart';
class PlantController extends GetxController{
  static PlantController get plantGetter=>Get.find<PlantController>();
  final List<Plant> plantList=[
    Plant(name: 'SAMANTHA', image: 'assets/images/image_1.png',countryName: 'RUSSIA', price: 400,),
    Plant(name: 'ANGELICA', image: 'assets/images/image_2.png',countryName: 'BRAZIL', price: 500),
    Plant(name: 'ROBBICE', image: 'assets/images/image_3.png',countryName: 'SPAIN', price: 600),
  ];
}