import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constant.dart';
class ShadowIconButton extends StatelessWidget {
  final String imageString;
  ShadowIconButton({required this.imageString});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding/2),
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding/2),
      height: 63,
      width: 63,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white),
        boxShadow: [
          BoxShadow(color: kPRimaryColor.withOpacity(0.35),blurRadius: 30,offset: Offset(0,20)),
          BoxShadow(color: Colors.white,blurRadius: 22,offset: Offset(-15,-15))
        ]
      ),
      child: SvgPicture.asset(imageString),
    );
  }
}
