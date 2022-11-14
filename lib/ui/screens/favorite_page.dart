import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/models/plants.dart';
import 'package:plant_app/ui/screens/widgets/plant_widget.dart';

class FavoritePage extends StatefulWidget {
  final List<Plant> favouritedPlants;
  const FavoritePage({Key? key, required this.favouritedPlants}) : super(key: key);
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: widget.favouritedPlants.isEmpty
          ? Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  child: Image.asset('assets/images/favorited.png'),
                ),
                const SizedBox(height: 10),
                Text("Your favorite Plants", style: TextStyle(
                  color: Constants.primaryColor,
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                ),),
              ],
            ),
          )
          : Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
        height: size.height * 0.5,
        child: ListView.builder(
            itemCount: widget.favouritedPlants.length,
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return PlantWidget(index: index, plantList: widget.favouritedPlants,);
            }),
      ),

    );
  }
}
