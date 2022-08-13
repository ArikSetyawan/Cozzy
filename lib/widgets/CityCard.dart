import 'package:flutter/material.dart';
import 'package:cozyv2/theme.dart';

class CityCard extends StatelessWidget {
  const CityCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20,),
        InkWell(
          onTap: () {},
          child: Container(
            height: 150,
            width: 120,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18)),
                  child: Stack(
                    children: [
                      Image.asset("assets/images/city1.png", width: 120, height: 102,),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          child: Icon(Icons.star, color: Colors.amber,),
                          decoration: BoxDecoration(color: PurpleColor, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25))),
                        ),
                      )
                    ],
                  )
                ),
                SizedBox(height: 11,),
                Text("Jakarta", style: BlackTextStyle.copyWith(fontSize: 16),)
              ],
            ),
          ),
        ),
      ],
    );
  }
}