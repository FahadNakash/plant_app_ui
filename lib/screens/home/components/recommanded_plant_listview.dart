import 'package:flutter/material.dart';
import 'package:plant_app/constant.dart';
import '../../../controller/plant_controller.dart';
import 'package:get/get.dart';
class RecommandedPlantListView extends StatelessWidget {
 final Size size;
 RecommandedPlantListView({ required this.size});

  @override
  Widget build(BuildContext context) {
    final plantController=PlantController.plantGetter;
    final plantData=plantController.plantList;
    return Container(
      margin: EdgeInsets.all(kDefaultPadding/2),
      height: size.height*0.35,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context,index)=>SizedBox(width: 28,),
        itemCount: plantData.length,
          itemBuilder: (context,index)=>InkWell(
            onTap: (){
              Get.toNamed('/detail_screen');
            },
            child: Container(
              width: MediaQuery.of(context).size.width*0.43,
              child: Column(
                children: [
                  Image.asset(plantData[index].image),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: kPRimaryColor.withOpacity(0.23),
                          blurRadius: 50,
                          offset: Offset(0,10)
                        )
                      ]
                    ),
                    padding: EdgeInsets.only(left: kDefaultPadding/2),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          RichText(
                            text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: '${plantData[index].name}\n',
                                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                          color: Colors.black
                                      )
                                  ),
                                  TextSpan(
                                      text: '${plantData[index].countryName}',
                                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                          color: kPRimaryColor
                                      )
                                  )
                                ]
                            ),
                          ),
                          Spacer(),
                          Text('\$${plantData[index].price}',style: TextStyle(color: kPRimaryColor.withOpacity(0.8),fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}
