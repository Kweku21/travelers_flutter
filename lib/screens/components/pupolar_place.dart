import 'package:flutter/material.dart';
import 'package:travel/components/place_card.dart';
import 'package:travel/components/section_title.dart';
import 'package:travel/models/TravelSpot.dart';
import '../../size_config.dart';

class PupolarPlace extends StatelessWidget {
  const PupolarPlace({
    Key key,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Column(
        children:[
          SectionTitle(
            title: "Right Now At Spark",press: (){},
          ),
          VerticalSpacing(of: 20,),
          SingleChildScrollView(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            child: Row(
              children:[
                ...List.generate(travelSpots.length, (index) =>
                    Padding(
                      padding:  EdgeInsets.only(
                        left: getProportionateScreenWidth(20),
                      ),
                      child: PlaceCard(
                        travelSpot: travelSpots[index],
                        press: (){},

                      ),
                    )
                ),

                SizedBox(width: getProportionateScreenWidth(20),)

              ]

            ),
          ),
        ]
    );
  }
}

