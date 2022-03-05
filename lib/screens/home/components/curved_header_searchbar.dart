import 'package:flutter/material.dart';
import 'package:plant_app/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CurvedHeaderSearchBar extends StatelessWidget {
  final Size size;
  CurvedHeaderSearchBar({required this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height*0.2,
        margin: EdgeInsets.only(bottom: kDefaultPadding*1),
      child:Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
                bottom: kDefaultPadding*3,
              left: kDefaultPadding,
              right: kDefaultPadding
            ),
            height: size.height*0.2-25,
            decoration: BoxDecoration(
                color: kPRimaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Plant Seller',style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                )),
                CircleAvatar(
                  backgroundColor: kPRimaryColor,
                  backgroundImage: AssetImage('assets/images/logo.png'),
                  radius: 30,
                )
              ],
            ),
          ),
          Positioned(
            top: 70,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: kPRimaryColor.withOpacity(0.23),
                      blurRadius: 10,
                      offset: Offset(0,10)
                  )
                ],
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              label: Text('Search',style: TextStyle(color: kPRimaryColor.withOpacity(0.5)),)
                          ),
                        )),
                    Icon(Icons.search,color: kPRimaryColor.withOpacity(0.3),)
                  ],
                ),
              )
            ),
          ),
        ],
      )
    );
  }
}
