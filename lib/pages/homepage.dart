import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:musicapp/components/my_appbar.dart';
import 'package:musicapp/components/my_discription_box.dart';
import 'package:musicapp/components/my_location.dart';
import 'package:musicapp/models/food.dart';
import 'package:musicapp/utils/restuarant.dart';
import 'package:musicapp/widgets/my_drawer.dart';
import 'package:musicapp/widgets/my_tab_bar.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  //tab controller
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: FoodCategories.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // sort and return a list of food items that belong to a specific category
  List<Food> _filtreMenuByCategory(FoodCategories category , List<Food> fulMenu) {
    return fulMenu.where((food) => food.category == category).toList();
  }

  // return list of foods in given category 

List<Widget> getFoodInThisCategory(List<Food> fulMenu) {
  return FoodCategories.values.map.((category) {
    List<Food> catgoryMenu = _filterMenuByCategory(category, fullMenu);

    return ListView.builder(

      itemcount: categoryMenu.length,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ListTitle(
          title: Text(categoryMenu[index].name),
        );

      }
    );

  }).toList();
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxisScrolled) => [
          MyAppbar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),

                // my location
                const Mylocation(),

                //  my discribtion
                const MyDescription()
              ],
            ),
          ),
        ],
        body: Consumer<Restaurant>(
          builder: (context, restaurant , child ) =>
          TabBarView(
            controller: _tabController,
            children:  getFoodInThisCategory(restaurant.menu),
          ),
        )
      ),
    );
  }
}
