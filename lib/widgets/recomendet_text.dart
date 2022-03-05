import 'package:flutter/material.dart';

import '../constant.dart';
class TitleWithUnderline extends StatelessWidget {
  final String title;
  TitleWithUnderline({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kDefaultPadding * 2,
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(3),
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 25,
                right: 10,
                left: 0,
                child: Container(
                  height: 4,
                  color: kPRimaryColor.withOpacity(0.3),
                ),
              )
            ],
          ),
          Chip(
            label: Text('More',style:TextStyle(color: Colors.white),),
            backgroundColor: kPRimaryColor,)
        ],
      ),
    );
  }
}
