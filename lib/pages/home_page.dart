import 'package:cozyv2/widgets/city_card.dart';
import 'package:cozyv2/widgets/space_card.dart';
import 'package:cozyv2/widgets/tips_guide_card.dart';
import 'package:flutter/material.dart';
import 'package:cozyv2/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({ super.key });

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
                  Text("Explore Now", style: blackTextStyle.copyWith(fontSize: 24),),
                  const SizedBox(height: 2,),
                  Text("Mencari kosan yang cozy", style: greyTextStyle.copyWith(fontSize: 16),)
                ],
              ),
            ),
            const SizedBox(height: 30,),
            // Container Popular Cities
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text("Popular City", style: blackRegularTextStyle.copyWith(fontSize: 16),),
                ),
                const SizedBox(height: 16,),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
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
            const SizedBox(height: 30,),
            // Container Recommended Space
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text("Recommended Space", style: blackRegularTextStyle.copyWith(fontSize: 16),),
                ),
                const SizedBox(height: 16,),
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: const Column(
                    children: [
                      SpaceCard(),
                      SpaceCard(),
                      SpaceCard()
                    ],
                  ),
                ),
              ],
            ),

            // Container Tips & Guide
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text("Tips & Guide", style: blackTextStyle.copyWith(fontSize: 16),),
                ),
                const SizedBox(height: 16,),
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: const Column(
                    children: [
                      TipsGuideCard(),
                      TipsGuideCard()
                    ],
                  ),
                )
              ],
            )
          ],
        )
      ),
    );
  }
}