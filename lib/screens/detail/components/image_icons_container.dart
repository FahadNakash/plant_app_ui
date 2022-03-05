import 'package:flutter/material.dart';
import '../../../constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../widgets/shadow_icon_button.dart';
class ImageIConsContainer extends StatelessWidget {
  final Size size;
  ImageIConsContainer({required this.size});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
      child: Container(
        height: size.height*0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding*3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: (){ Navigator.of(context).pop();},
                        icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      ),
                    ),
                    Spacer(),
                    ShadowIconButton(imageString: 'assets/icons/sun.svg',),
                    ShadowIconButton(imageString: 'assets/icons/icon_2.svg',),
                    ShadowIconButton(imageString: 'assets/icons/icon_3.svg',),
                    ShadowIconButton(imageString: 'assets/icons/icon_4.svg',),
                  ],
                ),
              ),
            ),
            Container(
              width: size.width*0.75,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: kPRimaryColor.withOpacity(0.2),offset: Offset(0,20),blurRadius: 50),
                  ],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(80)),
                  image: DecorationImage(
                      image: AssetImage('assets/images/img.png'),
                      fit: BoxFit.cover,
                      alignment: Alignment.centerLeft
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
