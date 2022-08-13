import 'package:cozyv2/pages/MainPage.dart';
import 'package:flutter/material.dart';
import 'package:cozyv2/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter, 
              child: Image.asset("assets/images/bottom.png")
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50,left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/logo.png", width: 50, height: 50,),
                  SizedBox(height: 30,),
                  Text("Find Cozy House\nto Stay and Happy", style: BlackTextStyle.copyWith(fontSize: 24),),
                  SizedBox(height: 10,),
                  Text("Stop membuang banyak waktu\npada tempat yang tidak habitable", style: GreyTextStyle.copyWith(fontSize: 16),),
                  SizedBox(height: 40,),
                  Container(
                    width: 210,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                        primary: PurpleColor
                      ),
                      onPressed: (){
                        Navigator.pushReplacement(
                          context, 
                          MaterialPageRoute(
                            builder: (context) {
                              return MainPage();
                            },
                          )
                        );
                      }, 
                      child: Text("Explore Now", style: WhiteTextStyle.copyWith(fontSize: 18),)
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}