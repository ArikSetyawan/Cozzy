import 'package:flutter/material.dart';
import 'package:cozyv2/theme.dart';
import 'package:go_router/go_router.dart';

class SpaceCard extends StatelessWidget {
  const SpaceCard({ super.key });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
           context.goNamed('space');
          },
          child: SizedBox(
            width: 329,
            height: 110,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: SizedBox(
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
                            decoration: BoxDecoration(color: purpleColor, borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(25))),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.star, color: Colors.amber,),
                                Text("4/5", style: whiteTextStyle.copyWith(fontSize: 13),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Kuretakeso Hott", style: blackTextStyle.copyWith(fontSize: 18),),
                    const SizedBox(height: 2,),
                    Text.rich(
                      TextSpan(
                        text: "\$ 52",
                        style: purpleTextStyle,
                        children: [
                          TextSpan(
                            text: " / month",
                            style: greyTextStyle
                          )
                        ]
                      )
                    ),
                    const SizedBox(height: 16,),
                    Text("Bandung, Jawa Barat", style: greyTextStyle,)
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 30,)
      ],
    );
  }
}