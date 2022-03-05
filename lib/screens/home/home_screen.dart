import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../home/components/curved_header_searchbar.dart';
import '../../widgets/recomendet_text.dart';
import 'components/custom_bottom_navigation_bar.dart';
import 'components/recommanded_plant_listview.dart';
import 'components/featured_plant_listView.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/menu.svg',
            height: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurvedHeaderSearchBar(size: size,),
            TitleWithUnderline(title: 'RECOMMENDED',),
            RecommandedPlantListView(size: size,),
            TitleWithUnderline(title: 'Featured Plants'),
            FeaturedPlantListView(size:size),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
