import 'package:flutter/material.dart';
import '../detail/components/image_icons_container.dart';
import '../detail/components/plant_description.dart';
import '../detail/components/custom_tab_bar.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageIConsContainer(size: size),
            PlantDescription(size: size),
          ],
        ),
      ),
      bottomNavigationBar: CustomTabBar(size: size,),
    );
  }
}
