import 'package:cozyv2/pages/DetailPage.dart';
import 'package:flutter/material.dart';
import 'package:cozyv2/theme.dart';

class SpaceCard extends StatelessWidget {
  const SpaceCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailPage(),)
            );
          },
          child: Container(
            width: 329,
            height: 110,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Container(
                    width: 130,
                    height: 110,
                    child: Stack(
                      children: [
                        Image.asset("assets/images/room.png", width: 130, height: 110, fit: BoxFit.cover,),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 70,
                            height: 30,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: Colors.amber,),
                                Text("4/5", style: WhiteTextStyle.copyWith(fontSize: 13),)
                              ],
                            ),
                            decoration: BoxDecoration(color: PurpleColor, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25))),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Kuretakeso Hott", style: BlackTextStyle.copyWith(fontSize: 18),),
                    SizedBox(height: 2,),
                    Text.rich(
                      TextSpan(
                        text: "\$ 52",
                        style: PurpleTextStyle,
                        children: [
                          TextSpan(
                            text: " / month",
                            style: GreyTextStyle
                          )
                        ]
                      )
                    ),
                    SizedBox(height: 16,),
                    Text("Bandung, Jawa Barat", style: GreyTextStyle,)
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 30,)
      ],
    );
  }
}