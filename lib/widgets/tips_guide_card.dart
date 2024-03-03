import 'package:flutter/material.dart';
import 'package:cozyv2/theme.dart';

class TipsGuideCard extends StatelessWidget {
  const TipsGuideCard({ super.key });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 321,
          height: 80,
          child: Row(
            children: [
              Image.asset('assets/images/tips1.png', width: 80, height: 80, fit: BoxFit.cover,),
              const SizedBox(width: 16,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("City Guidelines", style: blackTextStyle.copyWith(fontSize: 18),),
                  const SizedBox(height: 4,),
                  Text("Updated 20 Apr", style: greyTextStyle.copyWith(fontSize: 14),)
                ],
              ),
              const Spacer(),
              Icon(Icons.chevron_right, color: greyColor, size: 24,)
            ],
          ),
        ),
        const SizedBox(height: 20,)
      ],
    );
  }
}