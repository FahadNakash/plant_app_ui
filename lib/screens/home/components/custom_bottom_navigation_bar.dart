import 'package:flutter/material.dart';
import 'package:plant_app/constant.dart';
import 'package:flutter_svg/flutter_svg.dart'as svg;
class  CustomBottomNavigationBar extends StatelessWidget {
  const  CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: kPRimaryColor.withOpacity(0.23),
            blurRadius: 10,
            offset: Offset(0,-10)
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: svg.SvgPicture.asset('assets/icons/flower.svg'), ),
          IconButton(onPressed: (){}, icon: svg.SvgPicture.asset('assets/icons/heart-icon.svg'), ),
          IconButton(onPressed: (){}, icon: svg.SvgPicture.asset('assets/icons/user-icon.svg'),
          ),


        ],
      ),
    );
  }
}
