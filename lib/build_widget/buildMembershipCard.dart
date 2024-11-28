import 'package:finkit_project/custom_widget/hw_widget.dart';
import 'package:flutter/material.dart';

import '../custom_widget/card_widget.dart';

Widget buildMembershipCard() {
  return cardWidget(
    elevation: 1.0,
    cardColor: Colors.green.shade100,
    child: Column(
      children: [
        10.height,
        const Text(
          "LifelineCart Prime Membership",
          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
        ),

        10.height,
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("₹ 9999 / Year", style: TextStyle(fontWeight: FontWeight.w500),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("₹ 3499 /- Life Time", style: TextStyle(fontWeight: FontWeight.w500)),
                cardWidget(
                    left: 10,right: 10,
                    child: const Text("Offer Limited Period", style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500))),
              ],
            ),
          ],
        ),
        10.height,

        cardWidget(
          elevation: 1.0,
          cardColor: Colors.green.shade50,
          shape: const Border(),
          left: 40,
          right: 40,
          top: 5,
          bottom: 5,
          child: const Text(
            "LifelineCart Prime Membership",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        10.height,
      ],
    ),
  );
}
