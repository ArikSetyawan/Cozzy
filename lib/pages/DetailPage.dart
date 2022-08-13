import 'package:flutter/material.dart';
import 'package:cozyv2/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset("assets/images/detailroom.png", width: MediaQuery.of(context).size.width, height: 350, fit: BoxFit.cover,),
            ListView(
              children: [
                SizedBox(height: 328,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 604,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: edge),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 30,),
                            Text("Kuretakeso Hott", style: BlackTextStyle.copyWith(fontSize: 22),),
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
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Back Button
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      child: InkWell(
                        child: Icon(Icons.chevron_left)),
                    ),
                  ),

                  // Add to wishlish button
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      child: InkWell(
                        child: Icon(Icons.favorite_outline)),
                    ),
                  )
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}