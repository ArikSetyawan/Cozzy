import 'package:flutter/material.dart';
import 'package:cozyv2/theme.dart';

class TipsGuideCard extends StatelessWidget {
  const TipsGuideCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 321,
          height: 80,
          child: Row(
            children: [
              Image.asset('assets/images/tips1.png', width: 80, height: 80, fit: BoxFit.cover,),
              SizedBox(width: 16,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("City Guidelines", style: BlackTextStyle.copyWith(fontSize: 18),),
                  SizedBox(height: 4,),
                  Text("Updated 20 Apr", style: GreyTextStyle.copyWith(fontSize: 14),)
                ],
              ),
              Spacer(),
              Icon(Icons.chevron_right, color: GreyColor, size: 24,)
            ],
          ),
        ),
        SizedBox(height: 20,)
      ],
    );
  }
}