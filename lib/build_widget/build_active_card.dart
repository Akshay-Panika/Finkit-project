import 'package:finkit_project/custom_widget/hw_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_widget/card_widget.dart';

Widget buildActiveCard(){
  return cardWidget(
    top: 10,
      cardColor: Colors.green.shade100,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            cardWidget(
                left: 40,right: 50,
                top: 5,bottom: 5,
                cardColor: Colors.green.shade100,
                child: const Text("Your Lifeline Limit: 7770 P/M",
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),


            10.height,
            /// Card Limit
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                cardWidget(
                  left: 10,right: 10,
                  top: 10,bottom: 10,
                  cardColor: Colors.green.shade50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      cardWidget(
                          left: 10,right: 10,
                          top: 3,bottom: 3,
                          cardColor: Colors.green.shade100,
                          child: const Text("Under Limit: 74425",
                            style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),

                      const Text("Within Limit: 74425", style: TextStyle(fontWeight: FontWeight.w500),),
                      const Text("Available Limit: 74425",style: TextStyle(fontWeight: FontWeight.w500)),
                    ],
                  ),),

                cardWidget(
                  left: 10,right: 10,
                  top: 10,bottom: 10,
                  cardColor: Colors.green.shade50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      cardWidget(
                          left: 10,right: 10,
                          top: 3,bottom: 3,
                          cardColor: Colors.green.shade100,
                          child: const Text("CP EMI Limit: 74425",
                            style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),

                      const Text("CP EMI Limit: 74425",style: TextStyle(fontWeight: FontWeight.w500)),
                      const Text("Available CP EMI Limit: 74425",style: TextStyle(fontWeight: FontWeight.w500)),
                    ],
                  ),),

              ],
            )
          ],
        ),
      ));
}