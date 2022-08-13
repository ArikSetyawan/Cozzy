import 'package:cozyv2/widgets/CityCard.dart';
import 'package:cozyv2/widgets/SpaceCard.dart';
import 'package:cozyv2/widgets/TipsGuideCard.dart';
import 'package:flutter/material.dart';
import 'package:cozyv2/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: edge,),
            // Container Explore Now
            Container(
              padding: EdgeInsets.only(left: edge),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Explore Now", style: BlackTextStyle.copyWith(fontSize: 24),),
                  SizedBox(height: 2,),
                  Text("Mencari kosan yang cozy", style: GreyTextStyle.copyWith(fontSize: 16),)
                ],
              ),
            ),
            SizedBox(height: 30,),
            // Container Popular Cities
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: edge),
                    child: Text("Popular City", style: BlackRegularTextStyle.copyWith(fontSize: 16),),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(width: 4,),
                        CityCard(),
                        CityCard(),
                        CityCard(),
                        SizedBox(width: 24,)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            // Container Recommended Space
            Container(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: edge),
                    child: Text("Recommended Space", style: BlackRegularTextStyle.copyWith(fontSize: 16),),
                  ),
                  SizedBox(height: 16,),
                  Padding(
                    padding: EdgeInsets.only(left: edge),
                    child: Column(
                      children: [
                        SpaceCard(),
                        SpaceCard(),
                        SpaceCard()
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Container Tips & Guide
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: edge),
                    child: Text("Tips & Guide", style: BlackTextStyle.copyWith(fontSize: 16),),
                  ),
                  SizedBox(height: 16,),
                  Padding(
                    padding: EdgeInsets.only(left: edge),
                    child: Column(
                      children: [
                        TipsGuideCard(),
                        TipsGuideCard()
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}