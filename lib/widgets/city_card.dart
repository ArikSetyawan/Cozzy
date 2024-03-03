import 'package:flutter/material.dart';
import 'package:cozyv2/theme.dart';

class CityCard extends StatelessWidget {
  const CityCard({ super.key });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20,),
        InkWell(
          onTap: () {},
          child: SizedBox(
            height: 150,
            width: 120,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18)),
                  child: Stack(
                    children: [
                      Image.asset("assets/images/city1.png", width: 120, height: 102,),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(color: purpleColor, borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(25))),
                          child: const Icon(Icons.star, color: Colors.amber,),
                        ),
                      )
                    ],
                  )
                ),
                const SizedBox(height: 11,),
                Text("Jakarta", style: blackTextStyle.copyWith(fontSize: 16),)
              ],
            ),
          ),
        ),
      ],
    );
  }
}