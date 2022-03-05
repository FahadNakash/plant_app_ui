import 'package:flutter/material.dart';
import 'package:plant_app/constant.dart';
class PlantDescription extends StatelessWidget {
  final Size size;
  PlantDescription({required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height*0.2,
      child: Row(
        children: [
          RichText(
              text: TextSpan(
            children: [
              TextSpan(text: 'Angelica\n',style: Theme.of(context).textTheme.headline5!.copyWith(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold
              )),
              TextSpan(text: 'Russia',style: Theme.of(context).textTheme.headline5!.apply(
                 color: kPRimaryColor,
              ))
            ]
          )),
          Spacer(),
          Text('\$140',style: Theme.of(context).textTheme.headline5!.copyWith(
            fontWeight: FontWeight.bold,
            color: kPRimaryColor,
          ),)
        ],
      ),
    );
  }
}
