
import 'package:finkit_project/custom_widget/card_widget.dart';
import 'package:finkit_project/custom_widget/hw_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../build_widget/build_lifelinecard.dart';

class LifelineCardLimitScreen extends StatelessWidget {
  const LifelineCardLimitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: SafeArea(
          child: Column(
        children: [
          
          /// User Profile     
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                /// Use r Data
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 38,
                      backgroundImage: AssetImage('assets/images/userImg.png'),
                    ),

                    10.width,
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name : Akshay Panika", style: TextStyle(fontWeight: FontWeight.w500),),
                        Text("User Id : 8989207770", style: TextStyle(fontWeight: FontWeight.w500),),
                        Text("DOB : 28/11/2024", style: TextStyle(fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ],
                ),
                
                /// QR Code
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.qr_code, size: 45,),),

              ],
            ),
          ),

          /// Life line Card
          const BuildLifelineCard(),


          10.height,
          cardWidget(
              top: 20,bottom: 20,
              child: Column(
                children: [
                  cardWidget(
                      left: 60,right: 60,
                      top: 5,bottom: 5,
                      cardColor: Colors.green.shade100,
                      child: const Text("Your Lifeline Limit: 7770 P/M",
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)),


                  10.height,
                  /// Card Limit
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      cardWidget(
                        left: 10,right: 10,
                        top: 10,bottom: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            cardWidget(
                                left: 10,right: 10,
                                top: 3,bottom: 3,
                                cardColor: Colors.green.shade50,
                                child: const Text("Under Limit: 74425",
                                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),

                            const Text("Within Limit: 74425", style: TextStyle(fontWeight: FontWeight.w500),),
                            const Text("Available Limit: 74425",style: TextStyle(fontWeight: FontWeight.w500)),
                          ],
                        ),),

                      cardWidget(
                        left: 10,right: 10,
                        top: 10,bottom: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            cardWidget(
                                left: 10,right: 10,
                                top: 3,bottom: 3,
                                cardColor: Colors.green.shade50,
                                child: const Text("CP EMI Limit: 74425",
                                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),

                            const Text("CP EMI Limit: 74425",style: TextStyle(fontWeight: FontWeight.w500)),
                            const Text("Available CP EMI Limit: 74425",style: TextStyle(fontWeight: FontWeight.w500)),
                          ],
                        ),),

                    ],
                  )
                ],
              ))
        ],
      )),
    );
  }
}

