import 'package:flutter/material.dart';
import 'package:travel/screens/components/pupolar_place.dart';
import 'package:travel/screens/components/top_traveler.dart';
import 'package:travel/size_config.dart';
import 'home_header.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      clipBehavior: Clip.none,

      child: Column(
        children:[
          HomeHeader(),
          VerticalSpacing(),
          PupolarPlace(),
          VerticalSpacing(),
          TopTravelers(),
          VerticalSpacing(),
        ]
      ),
    );
  }
}






