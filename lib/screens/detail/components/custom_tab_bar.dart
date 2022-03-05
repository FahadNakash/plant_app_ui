import 'package:flutter/material.dart';
import 'package:plant_app/constant.dart';
class CustomTabBar extends StatelessWidget {
  final Size size;
  CustomTabBar({required this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
          child: SizedBox(
            width: size.width/2,
            height: 80,
            child: FlatButton(
              color: kPRimaryColor,
              child: Text('Buy Now',style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
              onPressed: (){},
            )
          ),
        ),
        Expanded(
          child: FlatButton(
            child: Text('Description',style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontWeight: FontWeight.bold
            ),),
            onPressed: (){},
          ),
        )
      ],
    );
  }
}
