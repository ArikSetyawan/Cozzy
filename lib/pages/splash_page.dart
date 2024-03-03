import 'package:flutter/material.dart';
import 'package:cozyv2/theme.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({ super.key });

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
                  const SizedBox(height: 30,),
                  Text("Find Cozy House\nto Stay and Happy", style: blackTextStyle.copyWith(fontSize: 24),),
                  const SizedBox(height: 10,),
                  Text("Stop membuang banyak waktu\npada tempat yang tidak habitable", style: greyTextStyle.copyWith(fontSize: 16),),
                  const SizedBox(height: 40,),
                  SizedBox(
                    width: 210,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                        backgroundColor: purpleColor
                      ),
                      onPressed: (){
                        context.goNamed('homepage');
                      }, 
                      child: Text("Explore Now", style: whiteTextStyle.copyWith(fontSize: 18),)
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