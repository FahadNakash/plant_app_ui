import 'package:flutter/material.dart';
import 'package:plant_app/constant.dart';
class FeaturedPlantListView extends StatelessWidget {
  final Size size;
  FeaturedPlantListView({required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding/2),
      height: 180,
      child: ListView(
        scrollDirection:Axis.horizontal ,
        children: [
          Container(
            height: 100,
            width: size.width*0.80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
                image:DecorationImage(
                  image: AssetImage('assets/images/bottom_img_1.png'),
                  fit: BoxFit.cover
                ) ),
          ),
          SizedBox(width: kDefaultPadding,),
          Container(
            height: 150,
            width: size.width*0.80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image:DecorationImage(
                    image: AssetImage('assets/images/bottom_img_2.png'),
                    fit: BoxFit.cover
                ) ),
          )
        ],
      ),

    );
  }
}
